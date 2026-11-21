// Time in seconds, damage in HP. The Python adapter reads these field names for ctypes.
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
using std::min;
using std::max;

struct Build {
    double hp, shield, recharge, delay, repair, shieldLevel, wall, hornet, sting, dodge, doom, doomBudget;
    double laser, laserPeriod, laserRange, laserSpeed, ramp, missile, blast, missilePeriod;
    double target, screen, screenRate, nativeShield, over, armor, faction, police, drain;
    double battery, reach, battery2, reach2, drone, skill, rack, rackBlast, ammo, volley, rackPeriod, minRange;
    double homing, hive, hiveReach, hiveLife, hiveCooldown, fixedDoom, bossKit, wingCount, wallRaw, aimRange;
    double fastMissile, fastPeriod, fastBlast, stationIn, stationOut, mirror, fireScale, droneScale, skillScale;
};

struct Random {
    uint64_t state;
    double draw() {
        state ^= state >> 12;
        state ^= state << 25;
        state ^= state >> 27;
        return ((state * 2685821657736338717ULL) >> 11) * 0x1p-53;
    }
};

double curve(double x) {
    if (x < .25) return 1;
    if (x < .5) return 1.25-x;
    if (x < .75) return .75-.8*(x-.5);
    return .55-.6*(x-.75);
}

static void absorb(double &pool, double &hit) {
    double used = min(pool, hit);
    pool -= used;
    hit -= used;
}

// One row per seed with unrestricted kill/death clocks (when requested) or the
// actual duel endpoint. Infinity means no event during available exposure.
extern "C" void batch(const Build &b, const float *routes, int routeCount, int n,
                      uint64_t seed, double horizon, bool uninterrupted, double *out) {
    constexpr double dt = .5;
    const double inf = std::numeric_limits<double>::infinity();
    for (int j=0; j<n; ++j) {
        Random r{(seed+1) ^ ((j+1)*0x9e3779b97f4a7c15ULL)};
        auto route = routes + 181 * min(routeCount-1, int(r.draw()*routeCount));
        double aim = min(1., b.fireScale*(.82+.36*r.draw()));
        double bearing = r.draw(), size = .8+.4*r.draw();
        int wing = b.wingCount ? int(b.wingCount) : 2+int(4*r.draw());
        double firstDrone = 1.4+r.draw()*1.6, nextDrone=firstDrone;
        double enemy=b.target, hp=b.hp, shield=b.shield, screen=b.screen, over=b.over;
        double wall=b.wall, plant=2.5, heat=0, hotUntil=0, hullHit=-100, screenHit=-100;
        double ttk=inf, ttd=inf, nextLaser=route[0]/b.laserSpeed, nextMissile=1.5;
        double nextSkill=b.faction==6?11.2:b.faction==4?6:b.faction==1?7:4;
        double nextRack=b.rackPeriod, ammo=b.ammo, nextFast=b.fastPeriod, nextBreaker=10.2;
        double plates=b.faction==4?.12*b.target:0, nextDoom=b.doom==3?3:20;
        double bayReady=0, dronesExpire=-1;
        double doomEnd=-1, doomFires=inf, doomStop=-1, doomSpent=0, lastLaser=-100, ramp=0;
        double reboot=-100, wingHit=-100, dot=0, dotEnd=-1, dart=0, swarmEnd=-1;
        int shieldPhases=0;
        double invincibleUntil=-1;
        bool enraged=false, slow=false;
        int reboots=0;
        for (double t=dt; t<=horizon+.00001; t+=dt) {
            double dist = route[min(180,int(t))]*size;
            if (b.bossKit==3 && t>=4) dist=520;
            double incoming=0, bypassWall=0, outgoing=0, bypassScreen=0;
            if (b.doom && t>=nextDoom && enemy>0) {
                double charge=b.doom==1?5.4:b.doom==2?2:1.2;
                double fire=b.doom==1?4.6:b.doom==2?3.5:3;
                doomFires=t+charge+(b.doom==1?.15:0);
                doomStop=t+charge+fire;
                doomEnd=doomStop+(b.doom==1?2.2:0);
                nextDoom=doomEnd+(b.doom==1?90:b.doom==2?75:12);
                doomSpent=0;
            }
            if (enemy>0) {
                if (t>=doomFires && doomFires<=doomStop) {
                    double period=b.doom==2?.25:.2;
                    while (doomFires+period<=min(t,doomStop)+1e-9) {
                        if (dist<(b.doom==1?2800:b.doom==2?1400:2600)) {
                            if (b.doomBudget) {
                                double slice=min(b.doomBudget/22,b.doomBudget-doomSpent);
                                bypassScreen+=slice*b.target;
                                doomSpent+=slice;
                            } else outgoing+=100000*period*b.fixedDoom;
                        }
                        doomFires+=period;
                    }
                }
                if (t>=doomEnd && t>=nextLaser) {
                    int shots=1+int((t-nextLaser)/b.laserPeriod);
                    nextLaser+=shots*b.laserPeriod;
                    if (dist<min(b.laserRange,b.aimRange)) {
                        if (b.ramp) ramp=std::clamp(ramp+(t-lastLaser<=1?(t-lastLaser)/3:-(t-lastLaser-1)/3),0.,1.);
                        lastLaser=t;
                        outgoing+=shots*b.laser*aim*(1+ramp);
                    }
                } else if (t<doomEnd) nextLaser=max(nextLaser,t+dt);
                if (b.missile && t>=nextMissile && t>=doomEnd) {
                    int shots=1+int((t-nextMissile)/b.missilePeriod);
                    nextMissile+=shots*b.missilePeriod;
                    if (dist<(b.homing?5000:b.laserRange) && r.draw()<(b.homing?.9:aim)) {
                        outgoing+=shots*b.missile;
                        bypassScreen+=shots*b.blast;
                    }
                } else if (t<doomEnd) nextMissile=max(nextMissile,t+dt);
                if (b.hornet && t>=dart) {
                    dart+=.9;
                    if (dist<1500) { dot=min(b.sting,dot+.3*b.sting); dotEnd=t+3; }
                }
                if (t>=dotEnd) dot=0;
                bypassScreen+=dot*dt;
                if (b.hive && t>=bayReady && dist<b.hiveReach) {
                    dronesExpire=t+b.hiveLife;
                    bayReady=t+max(b.hiveLife,b.hiveCooldown);
                }
                if (t<dronesExpire && dist<b.hiveReach) outgoing+=b.hive*dt;
                outgoing+=b.stationOut*dt;
                if (b.faction==0 && bearing<100./360) outgoing*=.1;
                if (b.faction==3 && t>=7 && std::fmod(t-7,15.)<4) outgoing*=.5;
                if (plates>0) { double soak=min(plates,.7*outgoing); plates-=soak; outgoing-=soak; }
                outgoing*=b.armor;
                if (t-screenHit>=20) over=min(b.over,over+b.over/6*dt);
                if (!b.nativeShield || screen>0) {
                    double factor=b.nativeShield?.5*curve(screen/max(1.,b.screen)):(t-screenHit<3?.85:1.);
                    screen=min(b.screen,screen+b.screenRate*factor*dt);
                }
                if (outgoing+bypassScreen>0) screenHit=t;
                absorb(over,outgoing);
                absorb(screen,outgoing);
                if (b.bossKit==2 && t>=9)
                    enemy=min(b.target,enemy+.0015*3*(1+int((t-9)/14))*b.target*dt);
                if (t>=invincibleUntil) enemy-=outgoing+bypassScreen;
                if (b.bossKit==1 && shieldPhases<2 && enemy>0 && enemy<(shieldPhases==0?.66:.33)*b.target) {
                    ++shieldPhases;
                    invincibleUntil=t+6;
                }
                if (!enraged && enemy<.3*b.target) {
                    enraged=true;
                    if (b.faction==4) plates=.12*b.target;
                    if (b.faction==5 && dist<3000) bypassWall+=.18*b.hp*b.skill;
                    if (b.faction==2) swarmEnd=t+8;
                }
                if (enemy<=0) ttk=t;
            }
            if (hp>0) {
                if (dist<b.reach && t>=1) incoming+=b.battery*dt;
                if (dist<b.reach2 && t>=1) incoming+=b.battery2*dt;
                if (b.wall>0 && t<plant) wall=min(b.wall,wall+b.wall/25*dt);
                // The wall sees unmitigated projectile damage. Spend its charge
                // on the battery first, then on individual drone rails. A breaking
                // hit is destroyed even when only a sliver of charge remains.
                auto intercept = [&](double hit, double rawScale) {
                    if (hit<=0 || !b.wall || t<plant || r.draw()>=2./3) return hit;
                    wall-=hit*rawScale*(t<doomStop?.5:.65);
                    if (wall<=0) { wall=0; plant=t+2.5; }
                    return 0.;
                };
                incoming=intercept(incoming,b.wallRaw);
                if (b.drone && t>=nextDrone) {
                    nextDrone+=2.2;
                    // Drones chase independently of the carrier. A distant carrier
                    // is not evidence that its launched wing has left rail range.
                    for (int k=0;k<wing;k++) if (r.draw()<b.droneScale)
                        incoming+=intercept(b.drone,1);
                }
                if (ammo>0 && t>=nextRack && dist>b.minRange) {
                    double count=min(ammo,b.volley);
                    ammo-=count;
                    nextRack=t+b.rackPeriod;
                    if (r.draw()<.85) { incoming+=intercept(count*b.rack,b.wallRaw); bypassWall+=count*b.rackBlast; }
                }
                if (b.fastMissile && t>=nextFast && dist<2400) {
                    nextFast=t+b.fastPeriod;
                    incoming+=intercept(b.fastMissile,1);
                    bypassWall+=b.fastBlast;
                }
                if (b.bossKit==1 && dist<700) bypassWall+=.04*b.hp*b.skill*dt/1.5;
                if (b.bossKit==2 && dist<800) bypassWall+=.03*b.hp*b.skill*dt/2;
                if (t<swarmEnd) incoming+=b.mirror*dt;
                if (b.faction>=0 && t>=nextSkill) {
                    double frac=0;
                    switch (int(b.faction)) {
                    case 1: if (dist<675) frac=.10; nextSkill+=16; break;
                    case 3: if (dist<1100) bypassWall+=3*600*4.5*r.draw(); nextSkill+=9; break;
                    case 4: if (dist<3800 && !b.dodge) frac=.12; nextSkill+=6; break;
                    case 5: if (dist<3000) frac=.25*3*8/70; nextSkill+=12; break;
                    case 6: if (dist<4200 && (!b.dodge || r.draw()<.35)) frac=.15; nextSkill+=9; break;
                    default: nextSkill=inf;
                    }
                    if (r.draw()<b.skillScale) bypassWall+=frac*b.hp*b.skill;
                }
                if (b.faction==1 && enraged && dist<400) bypassWall+=.02*b.hp*b.skill*dt;
                incoming+=intercept(b.stationIn*dt,1);
                if (b.hornet && incoming>0 && t>.7 && t>=hotUntil) {
                    double raw=incoming;
                    incoming*=1-(.15-.075*min(1.,heat/(.35*b.hp)));
                    heat+=raw;
                    wingHit=t;
                    if (heat>=.35*b.hp) { hotUntil=t+6; heat=0; }
                } else if (t-wingHit>2.5) heat=max(0.,heat-.2*.35*b.hp*dt);
                if (b.police && t>=nextBreaker && dist<4500) { shield*=.4; nextBreaker=t+18; }
                double hit=incoming+bypassWall;
                hp=min(b.hp,hp+b.repair*b.hp*dt);
                if (t-hullHit>=b.delay && t>=reboot)
                    shield=min(b.shield,shield+b.recharge*b.shieldLevel*curve(shield/max(1.,b.shield))*(slow?.5:1)*dt);
                if (hit>0) {
                    hullHit=t;
                    if (b.drain) { shield=max(0.,shield-.5*incoming); reboot=max(reboot,t+3); }
                    double before=shield;
                    absorb(shield,hit);
                    hp-=hit;
                    if (before>0 && shield<=0) {
                        if (reboots<(hp<=.5*b.hp?2:1)) { ++reboots; reboot=max(reboot,t+1.3); slow=false; }
                        else slow=true;
                    }
                }
                if (hp<=0) ttd=t;
            }
            if (uninterrupted ? enemy<=0 && hp<=0 : enemy<=0 || hp<=0) break;
        }
        out[2*j]=ttk;
        out[2*j+1]=ttd;
    }
}

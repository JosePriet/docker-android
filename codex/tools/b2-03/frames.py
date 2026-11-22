"""Render paired replay snapshots. Run from repo root after Experiment (requires Pillow)."""
import csv
import sys
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

OUT = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("codex/out/b2-03")
PILOT, CAPITAL, WING = "#56dfd3", "#be9aff", "#ffc267"
BG, GRID, TEXT = "#101922", "#253744", "#e8f0f3"


def font(size):
    try:
        return ImageFont.truetype("DejaVuSans.ttf", size)
    except OSError:
        return ImageFont.load_default()


def render(name, title, times):
    with (OUT / f"replay-{name}.csv").open() as src:
        rows = list(csv.DictReader(src))
    marker = Image.open("work/modart/tele_cap_ironclad.webp").convert("RGBA")
    image = Image.new("RGB", (1110, 530), BG)
    draw = ImageDraw.Draw(image)
    draw.text((20, 12), title, font=font(24), fill=TEXT)
    draw.text((20, 49), "Pilot", fill=PILOT, font=font(15))
    draw.text((75, 49), "Flagship", fill=CAPITAL, font=font(15))
    draw.text((152, 49), "Rail drones" if name == "screen" else "Impact marker", fill=WING, font=font(15))
    draw.text((850, 49), "L25   /   Seed 17   /   Grid 500 u", font=font(14), fill=TEXT)

    # Fixed camera in both arms and all panels, fitted to the selected snapshots.
    visible = [r for r in rows if int(r["ms"]) in times]
    bounds = []
    for axis in ("x", "y"):
        bounds.append((min(float(r[axis]) - float(r["radius"]) for r in visible),
                       max(float(r[axis]) + float(r["radius"]) for r in visible)))
    (x0, x1), (y0, y1) = bounds
    scale = min(305 / (x1 - x0), 145 / (y1 - y0))
    cx, cy = (x0 + x1) / 2, (y0 + y1) / 2

    for arm, arm_name in enumerate(("Current", name.title())):
        top = 83 + arm * 222
        draw.text((20, top), arm_name, font=font(17), fill=TEXT)
        for i, time in enumerate(times):
            left = 20 + i * 365
            panel = Image.new("RGB", (344, 177), BG)
            d = ImageDraw.Draw(panel)

            def project(x, y):
                return 172 + (x - cx) * scale, 89 - (y - cy) * scale

            for k in range(-5000, 5500, 500):
                x, y = project(k, k)
                d.line((x, 0, x, 177), fill=GRID)
                d.line((0, y, 344, y), fill=GRID)
            frame = [r for r in visible if int(r["ms"]) == time and int(r["arm"]) == arm]
            for r in sorted(frame, key=lambda r: r["body"] == "pilot"):
                x, y = project(float(r["x"]), float(r["y"]))
                radius = max(4, float(r["radius"]) * scale)
                box = (x - radius, y - radius, x + radius, y + radius)
                if r["body"] == "marker":
                    art = marker.resize((round(radius * 2),) * 2, Image.Resampling.LANCZOS)
                    panel.paste(art, (round(x - radius), round(y - radius)), art)
                    d.ellipse(box, outline=WING, width=1)
                elif r["body"] == "capital":
                    d.ellipse(box, outline=CAPITAL, width=2)
                    d.line((x-4, y, x+4, y), fill=CAPITAL)
                elif r["body"] == "pilot":
                    d.polygon([(x, y-radius), (x-radius, y+radius), (x+radius, y+radius)], fill=PILOT)
                else:
                    d.ellipse(box, fill=WING)
            d.rectangle((0, 0, 343, 176), outline="#3b5261")
            image.paste(panel, (left, top + 25))
            draw.text((left + 277, top + 2), f"{time/1000:g} s", fill=TEXT, font=font(15))
    image.save(OUT / f"{name}.png")


render("screen", "Aegis rail wing  /  chase and screen positions", [2000, 4000, 6000])
render("telegraph", "Bastion artillery  /  frozen strike point", [4250, 5000, 5750])
print("Rendered screen.png and telegraph.png")

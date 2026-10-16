.method public snapToTarget(Ljava/lang/Long;)V
    .registers 10
    # v0 dt(float) v1 tz v2 tmp v3 tmp v4 step
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    move-result-wide v2
    long-to-float v0, v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;
    if-eqz v1, :after_target

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    iput-object v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F
    move-result v2
    const/high16 v3, 0x3f800000    # 1.0f
    sub-float/2addr v2, v3
    const/4 v3, 0x0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F
    move-result v2
    const/high16 v3, 0x41400000    # 12.0f cap on speed contribution
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
    move-result v2
    const/high16 v3, 0x43020000    # 130.0f
    mul-float/2addr v2, v3
    sget v3, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F
    add-float v1, v2, v3

    # low-pass filter targetZDecal: k = min(1, dt/250)
    const/high16 v3, 0x437a0000    # 250.0f
    div-float v2, v0, v3
    const/high16 v3, 0x3f800000
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
    move-result v2
    iget v3, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F
    sub-float/2addr v1, v3
    mul-float/2addr v1, v2
    add-float/2addr v3, v1
    iput v3, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    :after_target
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    iget v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F
    sub-float v3, v1, v2
    sget v4, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F
    mul-float/2addr v4, v0
    const v5, 0x3f866666    # 1.05f
    mul-float v6, v4, v5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F
    move-result v7
    cmpg-float v7, v7, v6
    if-lez v7, :snap
    const/4 v7, 0x0
    cmpl-float v7, v3, v7
    if-lez v7, :go_up
    sub-float/2addr v1, v6
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
    :go_up
    add-float/2addr v1, v4
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
    :snap
    iput v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
.end method

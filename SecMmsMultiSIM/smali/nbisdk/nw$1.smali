.class final Lnbisdk/nw$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/nw;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private BA:F

.field private synthetic BB:Lnbisdk/nw;

.field private Bz:J


# direct methods
.method constructor <init>(Lnbisdk/nw;)V
    .locals 2

    iput-object p1, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/nw$1;->Bz:J

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/nw$1;->BA:F

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/high16 v7, 0x43b4

    iget-object v2, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lnbisdk/nw$1;->Bz:J

    const-wide/16 v5, 0xfa

    add-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-static {v0}, Lnbisdk/nw;->a(Lnbisdk/nw;)D

    move-result-wide v0

    const-wide/high16 v3, -0x4010

    cmpl-double v0, v0, v3

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-virtual {v0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-virtual {v0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/high16 v0, 0x42b4

    add-float/2addr v0, v1

    :goto_0
    cmpl-float v1, v0, v7

    if-lez v1, :cond_0

    sub-float/2addr v0, v7

    :cond_0
    iget v1, p0, Lnbisdk/nw$1;->BA:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x4080

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-static {v1}, Lnbisdk/nw;->b(Lnbisdk/nw;)Lnbisdk/ee;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/ee;->b(F)V

    iput v0, p0, Lnbisdk/nw$1;->BA:F

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/nw$1;->Bz:J

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    const/high16 v0, 0x4334

    add-float/2addr v0, v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    const/high16 v0, 0x4387

    add-float/2addr v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-static {v0}, Lnbisdk/nw;->b(Lnbisdk/nw;)Lnbisdk/ee;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nw$1;->BB:Lnbisdk/nw;

    invoke-static {v1}, Lnbisdk/nw;->a(Lnbisdk/nw;)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lnbisdk/ee;->b(F)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

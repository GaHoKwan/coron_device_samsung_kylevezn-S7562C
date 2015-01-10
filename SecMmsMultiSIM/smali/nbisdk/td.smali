.class public final Lnbisdk/td;
.super Ljava/lang/Object;


# instance fields
.field private dh:D

.field private di:D

.field private kl:F

.field private mI:Z


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lnbisdk/td;->kl:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/td;->mI:Z

    iput-wide p1, p0, Lnbisdk/td;->dh:D

    iput-wide p3, p0, Lnbisdk/td;->di:D

    return-void
.end method


# virtual methods
.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/td;->dh:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/td;->di:D

    return-wide v0
.end method

.method public final getScale()F
    .locals 1

    iget v0, p0, Lnbisdk/td;->kl:F

    return v0
.end method

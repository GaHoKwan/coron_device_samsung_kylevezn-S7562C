.class public abstract Lnbisdk/og;
.super Ljava/lang/Object;


# instance fields
.field protected jn:D

.field protected jo:D

.field private uu:Ljava/lang/String;

.field protected uv:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x3f70c80000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnbisdk/og;->jn:D

    iput-wide v0, p0, Lnbisdk/og;->jo:D

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/og;->uv:I

    return-void
.end method


# virtual methods
.method public final aW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/og;->uu:Ljava/lang/String;

    return-void
.end method

.method public ai(I)V
    .locals 0

    iput p1, p0, Lnbisdk/og;->uv:I

    return-void
.end method

.method public gd()I
    .locals 1

    iget v0, p0, Lnbisdk/og;->uv:I

    return v0
.end method

.method public abstract getData()[B
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/og;->jn:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/og;->jo:D

    return-wide v0
.end method

.method public final ld()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/og;->uu:Ljava/lang/String;

    return-object v0
.end method

.method public abstract setData([B)V
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/og;->jn:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/og;->jo:D

    return-void
.end method

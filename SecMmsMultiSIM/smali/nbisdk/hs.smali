.class public final Lnbisdk/hs;
.super Ljava/lang/Object;


# instance fields
.field private ax:Ljava/lang/String;

.field private dh:D

.field private mr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final am(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/hs;->ax:Ljava/lang/String;

    return-void
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/hs;->mr:J

    return-void
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/hs;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/hs;->mr:J

    return-wide v0
.end method

.method public final getValue()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/hs;->dh:D

    return-wide v0
.end method

.method public final k(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/hs;->dh:D

    return-void
.end method

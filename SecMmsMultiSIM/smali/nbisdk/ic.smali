.class public Lnbisdk/ic;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/mi;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ic;->aB:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final D()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hC()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/ic;->aB:Ljava/util/Vector;

    return-object v0
.end method

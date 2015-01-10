.class public final Lnbisdk/kv;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/xg;


# instance fields
.field private frequency:I

.field private qA:I

.field private qx:Ljava/lang/String;

.field private qy:Ljava/lang/String;

.field private qz:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/dy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/kv;->qy:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/kv;->frequency:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kv;->qz:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/kv;->qA:I

    iput p2, p0, Lnbisdk/kv;->qA:I

    iput-object p1, p0, Lnbisdk/kv;->qx:Ljava/lang/String;

    iput-object p5, p0, Lnbisdk/kv;->qy:Ljava/lang/String;

    iput p6, p0, Lnbisdk/kv;->frequency:I

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/dy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnbisdk/kv;->qz:Ljava/util/Vector;

    return-void
.end method

.method public final dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/kv;->qx:Ljava/lang/String;

    return-object v0
.end method

.method public final dD()I
    .locals 1

    iget v0, p0, Lnbisdk/kv;->frequency:I

    return v0
.end method

.method public final dE()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/dy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/kv;->qz:Ljava/util/Vector;

    return-object v0
.end method

.method public final getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/kv;->qy:Ljava/lang/String;

    return-object v0
.end method

.method public final jb()I
    .locals 1

    iget v0, p0, Lnbisdk/kv;->qA:I

    return v0
.end method

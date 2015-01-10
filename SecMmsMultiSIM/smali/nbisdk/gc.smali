.class public Lnbisdk/gc;
.super Ljava/lang/Object;


# instance fields
.field private aR:Ljava/util/Vector;

.field private jO:Lnbisdk/pi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gc;->aR:Ljava/util/Vector;

    return-void
.end method

.method public aj(I)Lnbisdk/lc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/gc;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uv;

    invoke-virtual {v0}, Lnbisdk/uv;->ba()Lnbisdk/lc;

    move-result-object v0

    return-object v0
.end method

.method public b(Lnbisdk/pi;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gc;->jO:Lnbisdk/pi;

    return-void
.end method

.method public bb()Lnbisdk/pi;
    .locals 1

    iget-object v0, p0, Lnbisdk/gc;->jO:Lnbisdk/pi;

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/gc;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

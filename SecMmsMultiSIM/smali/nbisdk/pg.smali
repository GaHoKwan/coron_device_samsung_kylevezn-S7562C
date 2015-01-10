.class public final Lnbisdk/pg;
.super Ljava/lang/Object;


# static fields
.field private static Bd:I


# instance fields
.field private Be:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/jt;",
            ">;"
        }
    .end annotation
.end field

.field private Bf:Z

.field private uS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/jt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lnbisdk/pg;->Bd:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(ILnbisdk/jt;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    return-void
.end method

.method public final a(Lnbisdk/jt;)V
    .locals 2

    iget v0, p1, Lnbisdk/jt;->oZ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lnbisdk/pg;->Bd:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lnbisdk/pg;->Bd:I

    iput v0, p1, Lnbisdk/jt;->oZ:I

    :cond_0
    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    return-void
.end method

.method public final b(Lnbisdk/jt;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    return-void
.end method

.method public final bx(I)Lnbisdk/jt;
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jt;

    return-object v0
.end method

.method public final by(I)Lnbisdk/jt;
    .locals 1

    iget-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    invoke-virtual {p0}, Lnbisdk/pg;->nZ()V

    :cond_0
    iget-object v0, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jt;

    return-object v0
.end method

.method public final nZ()V
    .locals 3

    iget-object v0, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    iget-object v2, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    new-instance v1, Lnbisdk/pg$1;

    invoke-direct {v1, p0}, Lnbisdk/pg$1;-><init>(Lnbisdk/pg;)V

    invoke-static {v0, v1}, Lnbisdk/xd;->b(Ljava/util/Vector;Lnbisdk/fz;)V

    return-void
.end method

.method public final removeAll()V
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/pg;->Be:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final removeAt(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/pg;->Bf:Z

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lnbisdk/pg;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.class public final Lnbisdk/cs;
.super Ljava/lang/Object;


# instance fields
.field private O:Z

.field private V:I

.field private bj:I

.field private cf:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private eJ:Z

.field private eK:Lnbisdk/cp;

.field private eL:Lnbisdk/cp;

.field private eM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/cs;->eJ:Z

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cs;->cf:Ljava/lang/String;

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cs;->ci:Ljava/lang/String;

    return-void
.end method

.method public final a(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cs;->eK:Lnbisdk/cp;

    return-void
.end method

.method public final b(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cs;->eL:Lnbisdk/cp;

    return-void
.end method

.method public final db()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cs;->eJ:Z

    return v0
.end method

.method public final dc()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/cs;->eK:Lnbisdk/cp;

    return-object v0
.end method

.method public final dd()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cs;->O:Z

    return v0
.end method

.method public final de()I
    .locals 1

    iget v0, p0, Lnbisdk/cs;->V:I

    return v0
.end method

.method public final df()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/cs;->eL:Lnbisdk/cp;

    return-object v0
.end method

.method public final dg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cs;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/cs;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lnbisdk/cs;->bj:I

    return v0
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cs;->eJ:Z

    return-void
.end method

.method public final isEnhancedPOI()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cs;->eM:Z

    return v0
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cs;->O:Z

    return-void
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cs;->eM:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lnbisdk/cs;->bj:I

    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lnbisdk/cs;->V:I

    return-void
.end method

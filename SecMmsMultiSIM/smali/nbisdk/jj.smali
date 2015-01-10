.class public Lnbisdk/jj;
.super Ljava/lang/Object;


# instance fields
.field private W:Z

.field private aH:Z

.field private aT:F

.field private cT:I

.field private ch:Ljava/lang/String;

.field private ck:Ljava/lang/String;

.field private fM:Lnbisdk/cp;

.field private ov:Lnbisdk/cp;

.field private ow:Ljava/util/Vector;

.field private ox:Lnbisdk/in;

.field private oy:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/jj;->W:Z

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lnbisdk/jj;->aT:F

    return-void
.end method

.method public aG(I)Lnbisdk/vl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    return-object v0
.end method

.method public au(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jj;->ch:Ljava/lang/String;

    return-void
.end method

.method public b(Lnbisdk/in;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jj;->ox:Lnbisdk/in;

    return-void
.end method

.method public d(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jj;->fM:Lnbisdk/cp;

    return-void
.end method

.method public d(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/jj;->aH:Z

    return-void
.end method

.method public df()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ov:Lnbisdk/cp;

    return-object v0
.end method

.method public e(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jj;->ov:Lnbisdk/cp;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/jj;->oy:Z

    return-void
.end method

.method public f(Lnbisdk/vl;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getAverageRating()F
    .locals 1

    iget v0, p0, Lnbisdk/jj;->aT:F

    return v0
.end method

.method public getDataPairCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lnbisdk/jj;->ow:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ck:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingsCount()I
    .locals 1

    iget v0, p0, Lnbisdk/jj;->cT:I

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public hasRating()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/jj;->aH:Z

    return v0
.end method

.method public isEnhancedPOI()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/jj;->oy:Z

    return v0
.end method

.method public it()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/jj;->W:Z

    return v0
.end method

.method public iu()Lnbisdk/in;
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->ox:Lnbisdk/in;

    return-object v0
.end method

.method public iv()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/jj;->fM:Lnbisdk/cp;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jj;->cT:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jj;->ck:Ljava/lang/String;

    return-void
.end method

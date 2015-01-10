.class public final Lnbisdk/nn;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private bq:B

.field private cJ:I

.field private cf:Ljava/lang/String;

.field private eM:Z

.field private tX:B

.field private tY:Lnbisdk/lc;

.field private tZ:Lnbisdk/di;

.field private ua:Lnbisdk/br;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBBZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    iput-object p1, p0, Lnbisdk/nn;->N:Ljava/lang/String;

    iput p2, p0, Lnbisdk/nn;->cJ:I

    iput-byte p3, p0, Lnbisdk/nn;->bq:B

    iput-byte p4, p0, Lnbisdk/nn;->tX:B

    iput-boolean p5, p0, Lnbisdk/nn;->eM:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    iput-object p1, p0, Lnbisdk/nn;->N:Ljava/lang/String;

    iput p2, p0, Lnbisdk/nn;->cJ:I

    iput-boolean p4, p0, Lnbisdk/nn;->eM:Z

    invoke-static {p3}, Lnbisdk/nn;->getFontSize(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    invoke-static {p3}, Lnbisdk/nn;->getFontStyle(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    return-void
.end method

.method public constructor <init>(Lnbisdk/br;IBBZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    iput-object p1, p0, Lnbisdk/nn;->ua:Lnbisdk/br;

    iput p2, p0, Lnbisdk/nn;->cJ:I

    iput-byte p3, p0, Lnbisdk/nn;->bq:B

    iput-byte p4, p0, Lnbisdk/nn;->tX:B

    iput-boolean p5, p0, Lnbisdk/nn;->eM:Z

    return-void
.end method

.method public constructor <init>(Lnbisdk/di;IBBZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    iput-object p1, p0, Lnbisdk/nn;->tZ:Lnbisdk/di;

    iput p2, p0, Lnbisdk/nn;->cJ:I

    iput-byte p3, p0, Lnbisdk/nn;->bq:B

    iput-byte p4, p0, Lnbisdk/nn;->tX:B

    iput-boolean p5, p0, Lnbisdk/nn;->eM:Z

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;IBBZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lnbisdk/nn;->bq:B

    iput-byte v0, p0, Lnbisdk/nn;->tX:B

    iput-object p1, p0, Lnbisdk/nn;->tY:Lnbisdk/lc;

    iput p2, p0, Lnbisdk/nn;->cJ:I

    iput-byte p3, p0, Lnbisdk/nn;->bq:B

    iput-byte p4, p0, Lnbisdk/nn;->tX:B

    iput-boolean p5, p0, Lnbisdk/nn;->eM:Z

    return-void
.end method

.method public static getFontSize(Ljava/lang/String;)B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getFontStyle(Ljava/lang/String;)B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public final N(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/nn;->eM:Z

    return-void
.end method

.method public final aV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/nn;->cf:Ljava/lang/String;

    return-void
.end method

.method public final ba()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/nn;->tY:Lnbisdk/lc;

    return-object v0
.end method

.method public final e(III)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lnbisdk/nn;->cJ:I

    return-void
.end method

.method public final getColor()I
    .locals 1

    iget v0, p0, Lnbisdk/nn;->cJ:I

    return v0
.end method

.method public final getFontSize()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/nn;->bq:B

    return v0
.end method

.method public final getFontStyle()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/nn;->tX:B

    return v0
.end method

.method public final getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/nn;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/nn;->tY:Lnbisdk/lc;

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nn;->tY:Lnbisdk/lc;

    invoke-interface {v0, v1}, Lnbisdk/ev;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/nn;->tZ:Lnbisdk/di;

    if-eqz v0, :cond_1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nn;->tZ:Lnbisdk/di;

    invoke-interface {v0, v1}, Lnbisdk/ev;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/nn;->ua:Lnbisdk/br;

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nn;->ua:Lnbisdk/br;

    invoke-interface {v0, v1}, Lnbisdk/ev;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/nn;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h(B)V
    .locals 0

    iput-byte p1, p0, Lnbisdk/nn;->bq:B

    return-void
.end method

.method public final i(B)V
    .locals 0

    iput-byte p1, p0, Lnbisdk/nn;->tX:B

    return-void
.end method

.method public final isNewLine()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/nn;->eM:Z

    return v0
.end method

.method public final kU()Lnbisdk/di;
    .locals 1

    iget-object v0, p0, Lnbisdk/nn;->tZ:Lnbisdk/di;

    return-object v0
.end method

.method public final kV()Lnbisdk/br;
    .locals 1

    iget-object v0, p0, Lnbisdk/nn;->ua:Lnbisdk/br;

    return-object v0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/nn;->N:Ljava/lang/String;

    return-void
.end method

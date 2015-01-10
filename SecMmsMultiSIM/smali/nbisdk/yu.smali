.class Lnbisdk/yu;
.super Ljava/lang/Object;


# instance fields
.field private bx:I

.field private cT:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnbisdk/yu;->bx:I

    iput v0, p0, Lnbisdk/yu;->cT:I

    :goto_0
    iget v0, p0, Lnbisdk/yu;->cT:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Lnbisdk/yu;->cT:I

    iget v1, p0, Lnbisdk/yu;->bx:I

    add-int/2addr v0, v1

    iput v0, p0, Lnbisdk/yu;->cT:I

    iget v0, p0, Lnbisdk/yu;->cT:I

    iget v1, p0, Lnbisdk/yu;->bx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnbisdk/yu;->bx:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lnbisdk/yu;->cT:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fj()I
    .locals 2

    iget v0, p0, Lnbisdk/yu;->cT:I

    iget v1, p0, Lnbisdk/yu;->bx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnbisdk/yu;->bx:I

    iget v0, p0, Lnbisdk/yu;->cT:I

    iget v1, p0, Lnbisdk/yu;->bx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnbisdk/yu;->cT:I

    iget v0, p0, Lnbisdk/yu;->cT:I

    return v0
.end method

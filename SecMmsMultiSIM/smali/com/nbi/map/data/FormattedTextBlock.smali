.class public Lcom/nbi/map/data/FormattedTextBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private tH:Lnbisdk/in;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Lnbisdk/in;

    iput-object p1, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lnbisdk/in;

    invoke-direct {v0}, Lnbisdk/in;-><init>()V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    goto :goto_0
.end method


# virtual methods
.method public addFormattedText(Lcom/nbi/map/data/FormattedText;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    invoke-virtual {p1}, Lcom/nbi/map/data/FormattedText;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/nn;

    invoke-virtual {v1, v0}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "formattedBlock is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormattedText(I)Lcom/nbi/map/data/FormattedText;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/FormattedText;

    iget-object v1, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    invoke-virtual {v1, p1}, Lnbisdk/in;->az(I)Lnbisdk/nn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FormattedText;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFormattedTextCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    invoke-virtual {v0}, Lnbisdk/in;->getFormattedTextCount()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedTextBlock;->tH:Lnbisdk/in;

    return-object v0
.end method

.class final Lcom/nbi/search/singlesearch/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/singlesearch/SuggestionSearchInformation;


# instance fields
.field private mp:Lnbisdk/hn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/hn;

    iput-object p1, p0, Lcom/nbi/search/singlesearch/c;->mp:Lnbisdk/hn;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/c;->mp:Lnbisdk/hn;

    return-object v0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/c;->mp:Lnbisdk/hn;

    invoke-virtual {v0}, Lnbisdk/hn;->getResultCount()I

    move-result v0

    return v0
.end method

.method public final getSuggestMatch(I)Lcom/nbi/search/singlesearch/SuggestMatch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/search/singlesearch/SuggestMatch;

    iget-object v1, p0, Lcom/nbi/search/singlesearch/c;->mp:Lnbisdk/hn;

    invoke-virtual {v1, p1}, Lnbisdk/hn;->aw(I)Lnbisdk/dk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/search/singlesearch/SuggestMatch;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

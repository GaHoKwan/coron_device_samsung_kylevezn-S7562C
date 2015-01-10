.class Lcom/nbi/search/singlesearch/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/hp;
.implements Lnbisdk/iu;


# direct methods
.method public constructor <init>(Lcom/nbi/search/singlesearch/SingleSearchRequest;Lcom/nbi/search/singlesearch/SingleSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;Lcom/nbi/search/singlesearch/SuggestionSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnbisdk/hz;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public a(Lcom/navbuilder/nb/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnbisdk/hz;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public a(Lnbisdk/hn;Lcom/navbuilder/nb/b;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/singlesearch/SuggestionSearchListener;

    new-instance v2, Lcom/nbi/search/singlesearch/c;

    invoke-direct {v2, p1}, Lcom/nbi/search/singlesearch/c;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/singlesearch/SuggestionSearchListener;->onSuggestionSearch(Lcom/nbi/search/singlesearch/SuggestionSearchInformation;Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V

    return-void
.end method

.method public final a(Lnbisdk/zn;Lcom/navbuilder/nb/b;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/singlesearch/SingleSearchListener;

    new-instance v2, Lcom/nbi/search/singlesearch/d;

    invoke-direct {v2, p1}, Lcom/nbi/search/singlesearch/d;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/singlesearch/SingleSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/singlesearch/SingleSearchListener;->onSingleSearch(Lcom/nbi/search/singlesearch/SingleSearchInformation;Lcom/nbi/search/singlesearch/SingleSearchRequest;)V

    return-void
.end method

.class public interface abstract Lcom/nbi/search/singlesearch/SuggestionSearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getResultCount()I
.end method

.method public abstract getSuggestMatch(I)Lcom/nbi/search/singlesearch/SuggestMatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.class Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V
    .locals 7
    .parameter
    .parameter "requestedStartIndex"
    .parameter "requestedCount"
    .parameter "searchCriteria"
    .parameter "endOfItems"
    .parameter "err"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;II",
            "Lcom/sec/android/allshare/media/SearchCriteria;",
            "Z",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    const/4 v6, 0x1

    .line 194
    sget-object v3, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const-class v3, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Feature Not Supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    #getter for: Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mConns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->access$200(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;

    .line 202
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    sget-object v3, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v0, p6}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v0, p4, p2}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->getCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    move-result-object v2

    .line 210
    .local v2, request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    invoke-virtual {v0, p6}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 236
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    .end local v2           #request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    :cond_4
    return-void

    .line 221
    .restart local v0       #conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    .restart local v2       #request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 224
    :cond_6
    if-ne p5, v6, :cond_7

    .line 225
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->removeSearchRequest(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;)V

    .line 226
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->isrequestFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto :goto_0

    .line 229
    :cond_7
    add-int v3, p2, p3

    invoke-virtual {v2, p4, v3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->updateSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    #getter for: Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->access$000(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v3

    add-int v4, p2, p3

    const/16 v5, 0x14

    invoke-virtual {v3, p4, v4, v5}, Lcom/sec/android/allshare/media/Provider;->search(Lcom/sec/android/allshare/media/SearchCriteria;II)V

    goto :goto_0
.end method

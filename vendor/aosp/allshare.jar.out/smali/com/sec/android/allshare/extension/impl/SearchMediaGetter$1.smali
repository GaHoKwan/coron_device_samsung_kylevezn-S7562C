.class Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V
    .locals 6
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
    const/4 v5, 0x1

    .line 158
    sget-object v2, Lcom/sec/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-class v2, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Feature Not Supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    #getter for: Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->access$200(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    .line 165
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    invoke-virtual {v0, p4, p2}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->isCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 167
    sget-object v2, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v0, p6}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 180
    :cond_4
    if-ne p5, v5, :cond_5

    .line 181
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto :goto_0

    .line 183
    :cond_5
    add-int v2, p2, p3

    invoke-virtual {v0, p4, v2}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;->this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    #getter for: Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v2}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->access$000(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v2

    add-int v3, p2, p3

    const/16 v4, 0x14

    invoke-virtual {v2, p4, v3, v4}, Lcom/sec/android/allshare/media/Provider;->search(Lcom/sec/android/allshare/media/SearchCriteria;II)V

    goto :goto_0

    .line 191
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_6
    return-void
.end method

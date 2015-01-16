.class public Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;
.super Ljava/lang/Object;
.source "BrowseMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/impl/IMediaGetter;
.implements Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_BROWSE_REQUEST_SIZE:I = 0x5

.field private static final DEFAULT_REQUEST_SIZE:I = 0x14


# instance fields
.field private mConns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public cancel(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    .line 140
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$000(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCancel()V

    .line 145
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    :cond_1
    invoke-interface {p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 146
    return-void
.end method

.method public onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V
    .locals 9
    .parameter
    .parameter "requestedStartIndex"
    .parameter "requestedCount"
    .parameter "requestedFolderItem"
    .parameter "endOfItems"
    .parameter "err"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;II",
            "Lcom/sec/android/allshare/Item;",
            "Z",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    iget-object v6, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 183
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    .line 187
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    invoke-virtual {v0, p4, p2}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    sget-object v6, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    sget-object v6, Lcom/sec/android/allshare/ERROR;->FAIL:Lcom/sec/android/allshare/ERROR;

    invoke-virtual {p6, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 194
    invoke-virtual {v0, p4}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isRetry(Lcom/sec/android/allshare/Item;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 196
    invoke-virtual {v0, p4}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setRetry(Lcom/sec/android/allshare/Item;)V

    .line 197
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v6

    invoke-virtual {v6, p4, p2, p3}, Lcom/sec/android/allshare/media/Provider;->browse(Lcom/sec/android/allshare/Item;II)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0, p4}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->removeRetry(Lcom/sec/android/allshare/Item;)V

    .line 203
    const/4 p5, 0x1

    .line 213
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/Item;

    .line 216
    .local v2, i:Lcom/sec/android/allshare/Item;
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isMathchingItem(Lcom/sec/android/allshare/Item;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v6

    sget-object v7, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    if-ne v6, v7, :cond_3

    .line 220
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$200(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    .end local v2           #i:Lcom/sec/android/allshare/Item;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    :cond_5
    invoke-virtual {v0, p6}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 224
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 225
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 230
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 231
    invoke-virtual {v0, v5}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 232
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 235
    :cond_8
    if-eqz p5, :cond_a

    .line 236
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$300(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_2
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$200(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_9

    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$300(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_9

    .line 241
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$200(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Item;

    .line 242
    .local v1, currentBrowseFolder:Lcom/sec/android/allshare/Item;
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)V

    .line 243
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {v6, v1, v7, v8}, Lcom/sec/android/allshare/media/Provider;->browse(Lcom/sec/android/allshare/Item;II)V

    goto :goto_2

    .line 246
    .end local v1           #currentBrowseFolder:Lcom/sec/android/allshare/Item;
    :cond_9
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$300(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto/16 :goto_0

    .line 251
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, p2

    invoke-virtual {v0, p4, v6}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)V

    .line 253
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, p2

    const/16 v8, 0x14

    invoke-virtual {v6, p4, v7, v8}, Lcom/sec/android/allshare/media/Provider;->browse(Lcom/sec/android/allshare/Item;II)V

    goto/16 :goto_0

    .line 258
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    :cond_b
    return-void
.end method

.method public start(Lcom/sec/android/allshare/media/Provider;Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter "provider"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;->start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 175
    return-void
.end method

.method public start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 5
    .parameter "provider"
    .parameter
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/media/Provider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    const/4 v4, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    sget-object v1, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    invoke-interface {p3, v1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-interface {p3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 159
    invoke-virtual {p1, p0}, Lcom/sec/android/allshare/media/Provider;->setBrowseItemsResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;)V

    .line 161
    new-instance v0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;-><init>(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V

    .line 163
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    iget-object v1, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p1}, Lcom/sec/android/allshare/media/Provider;->getRootFolder()Lcom/sec/android/allshare/Item;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)V

    .line 166
    #getter for: Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/media/Provider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/allshare/media/Provider;->getRootFolder()Lcom/sec/android/allshare/Item;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/allshare/media/Provider;->browse(Lcom/sec/android/allshare/Item;II)V

    goto :goto_0
.end method

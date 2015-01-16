.class Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "BrowseMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private mBrowseRetryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/allshare/Item;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mCurrentBrowseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/allshare/Item;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFutureBrowseFolderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCanceled:Z

.field private mProvider:Lcom/sec/android/allshare/media/Provider;

.field private mTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V
    .locals 2
    .parameter
    .parameter
    .parameter "conn"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            "Lcom/sec/android/allshare/media/Provider;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    .line 54
    iput-object p3, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 55
    iput-object p2, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    .line 56
    iput-object p4, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/media/Provider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/sec/android/allshare/media/Provider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    return v0
.end method

.method public isCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)Z
    .locals 3
    .parameter "folder"
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    .local v0, currentStartIdx:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMathchingItem(Lcom/sec/android/allshare/Item;)Z
    .locals 3
    .parameter "i"

    .prologue
    .line 99
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/Item$MediaType;

    .line 100
    .local v1, type:Lcom/sec/android/allshare/Item$MediaType;
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x1

    .line 103
    .end local v1           #type:Lcom/sec/android/allshare/Item$MediaType;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRetry(Lcom/sec/android/allshare/Item;)Z
    .locals 2
    .parameter "folderItem"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, result:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .restart local v0       #result:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 77
    return-void
.end method

.method public onError(Lcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 82
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 72
    return-void
.end method

.method public onProgress(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 62
    return-void
.end method

.method public removeRetry(Lcom/sec/android/allshare/Item;)V
    .locals 1
    .parameter "folderItem"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public setCancel()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    .line 108
    return-void
.end method

.method public setCurrentBrowseRequest(Lcom/sec/android/allshare/Item;I)V
    .locals 2
    .parameter "folder"
    .parameter "startIndex"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public setRetry(Lcom/sec/android/allshare/Item;)V
    .locals 2
    .parameter "folderItem"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

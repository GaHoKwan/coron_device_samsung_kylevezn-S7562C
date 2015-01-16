.class Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mIsCancel:Z

.field private mSearchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V
    .locals 1
    .parameter
    .parameter "conn"
    .parameter "provider"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    .line 62
    iput-object p2, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 63
    #setter for: Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {p1, p3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->access$002(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/media/Provider;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object v0
.end method


# virtual methods
.method public addCurrentSearchRequest(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/Item$MediaType;

    .line 103
    .local v3, type:Lcom/sec/android/allshare/Item$MediaType;
    new-instance v0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 104
    .local v0, builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {v0, v3}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/sec/android/allshare/Item$MediaType;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    .line 105
    new-instance v2, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    iget-object v4, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->build()Lcom/sec/android/allshare/media/SearchCriteria;

    move-result-object v5

    invoke-direct {v2, v4, v5, p2}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;-><init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/media/SearchCriteria;I)V

    .line 106
    .local v2, request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    iget-object v4, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v0           #builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    .end local v2           #request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    .end local v3           #type:Lcom/sec/android/allshare/Item$MediaType;
    :cond_0
    return-void
.end method

.method public getCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    .locals 3
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    .line 112
    .local v1, request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    invoke-virtual {v1, p1, p2}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->isSame(Lcom/sec/android/allshare/media/SearchCriteria;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    .end local v1           #request:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    return v0
.end method

.method public isrequestFinished()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 84
    return-void
.end method

.method public onError(Lcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 89
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 79
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
    .line 73
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 74
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 69
    return-void
.end method

.method public removeSearchRequest(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public setCancel()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 93
    return-void
.end method

.class Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mCurrentSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

.field private mIsCancel:Z

.field private mStartIndex:I

.field final synthetic this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V
    .locals 2
    .parameter
    .parameter "conn"
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 77
    iput-object v1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    .line 40
    iput-object p2, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 41
    #setter for: Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;
    invoke-static {p1, p3}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->access$002(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/media/Provider;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object v0
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    return v0
.end method

.method public isCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)Z
    .locals 2
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    invoke-virtual {p1, v1}, Lcom/sec/android/allshare/media/SearchCriteria;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget v1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 62
    return-void
.end method

.method public onError(Lcom/sec/android/allshare/ERROR;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 67
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 57
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
    .line 51
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 52
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 47
    return-void
.end method

.method public setCancel()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 71
    return-void
.end method

.method public setCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)V
    .locals 0
    .parameter "criteria"
    .parameter "startIndex"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/sec/android/allshare/media/SearchCriteria;

    .line 83
    iput p2, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    .line 84
    return-void
.end method

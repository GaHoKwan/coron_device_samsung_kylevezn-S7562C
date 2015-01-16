.class public Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/impl/IMediaGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_SIZE:I = 0x14


# instance fields
.field private mConns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/sec/android/allshare/media/Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)Lcom/sec/android/allshare/media/Provider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/media/Provider;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 10
    .parameter "provider"
    .parameter
    .parameter "callback"
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
    const/4 v9, 0x0

    .line 126
    invoke-interface {p3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 128
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 130
    if-nez p1, :cond_0

    .line 131
    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 132
    .local v3, err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 205
    .end local v3           #err:Lcom/sec/android/allshare/ERROR;
    :goto_0
    return-void

    .line 136
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 137
    :cond_1
    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 138
    .restart local v3       #err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 142
    .end local v3           #err:Lcom/sec/android/allshare/ERROR;
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 143
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/allshare/Item$MediaType;

    .line 144
    .local v6, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v7, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v6, v7, :cond_3

    .line 145
    sget-object v3, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 146
    .restart local v3       #err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 142
    .end local v3           #err:Lcom/sec/android/allshare/ERROR;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v6           #type:Lcom/sec/android/allshare/Item$MediaType;
    :cond_4
    new-instance v7, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;

    invoke-direct {v7, p0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$1;-><init>(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;)V

    invoke-virtual {p1, v7}, Lcom/sec/android/allshare/media/Provider;->setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V

    .line 194
    new-instance v0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 195
    .local v0, builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/allshare/Item$MediaType;

    .line 196
    .restart local v6       #type:Lcom/sec/android/allshare/Item$MediaType;
    invoke-virtual {v0, v6}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/sec/android/allshare/Item$MediaType;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    goto :goto_2

    .line 199
    .end local v6           #type:Lcom/sec/android/allshare/Item$MediaType;
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->build()Lcom/sec/android/allshare/media/SearchCriteria;

    move-result-object v2

    .line 201
    .local v2, criteria:Lcom/sec/android/allshare/media/SearchCriteria;
    new-instance v1, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;-><init>(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V

    .line 202
    .local v1, conn:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    iget-object v7, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v1, v2, v9}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCurrentSearchRequest(Lcom/sec/android/allshare/media/SearchCriteria;I)V

    .line 204
    invoke-virtual {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->build()Lcom/sec/android/allshare/media/SearchCriteria;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {p1, v7, v9, v8}, Lcom/sec/android/allshare/media/Provider;->search(Lcom/sec/android/allshare/media/SearchCriteria;II)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;

    .line 101
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    #getter for: Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->setCancel()V

    .line 107
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_1
    invoke-interface {p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 108
    return-void
.end method

.method public start(Lcom/sec/android/allshare/media/Provider;Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter "provider"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 122
    return-void
.end method

.method public start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 0
    .parameter "provider"
    .parameter
    .parameter "callback"
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
    .line 113
    .local p2, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 114
    return-void
.end method

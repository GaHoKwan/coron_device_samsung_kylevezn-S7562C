.class public Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"

# interfaces
.implements Lcom/sec/android/allshare/extension/impl/IMediaGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;,
        Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
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
            "Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;",
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

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)Lcom/sec/android/allshare/media/Provider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/media/Provider;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 9
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
    const/4 v8, 0x0

    .line 157
    invoke-interface {p3}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 159
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 161
    if-nez p1, :cond_1

    .line 162
    sget-object v2, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 163
    .local v2, err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v2}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    .line 244
    .end local v2           #err:Lcom/sec/android/allshare/ERROR;
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 168
    :cond_2
    sget-object v2, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 169
    .restart local v2       #err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v2}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 173
    .end local v2           #err:Lcom/sec/android/allshare/ERROR;
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 174
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/allshare/Item$MediaType;

    .line 175
    .local v5, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v6, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    if-eq v5, v6, :cond_4

    .line 176
    sget-object v2, Lcom/sec/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/sec/android/allshare/ERROR;

    .line 177
    .restart local v2       #err:Lcom/sec/android/allshare/ERROR;
    invoke-interface {p3, v2}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/sec/android/allshare/ERROR;)V

    goto :goto_0

    .line 173
    .end local v2           #err:Lcom/sec/android/allshare/ERROR;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    .end local v5           #type:Lcom/sec/android/allshare/Item$MediaType;
    :cond_5
    new-instance v1, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;-><init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/sec/android/allshare/media/Provider;)V

    .line 183
    .local v1, conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    iget-object v6, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v1, p2, v8}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->addCurrentSearchRequest(Ljava/util/ArrayList;I)V

    .line 188
    new-instance v6, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;

    invoke-direct {v6, p0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$1;-><init>(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/allshare/media/Provider;->setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V

    .line 239
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/allshare/Item$MediaType;

    .line 240
    .restart local v5       #type:Lcom/sec/android/allshare/Item$MediaType;
    new-instance v0, Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 241
    .local v0, builder:Lcom/sec/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {v0, v5}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/sec/android/allshare/Item$MediaType;)Lcom/sec/android/allshare/media/SearchCriteria$Builder;

    .line 242
    invoke-virtual {v0}, Lcom/sec/android/allshare/media/SearchCriteria$Builder;->build()Lcom/sec/android/allshare/media/SearchCriteria;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {p1, v6, v8, v7}, Lcom/sec/android/allshare/media/Provider;->search(Lcom/sec/android/allshare/media/SearchCriteria;II)V

    goto :goto_2
.end method


# virtual methods
.method public cancel(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;

    .line 133
    .local v0, conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    #getter for: Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    invoke-static {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->access$100(Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->setCancel()V

    .line 139
    .end local v0           #conn:Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    :cond_1
    invoke-interface {p1}, Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 140
    return-void
.end method

.method public start(Lcom/sec/android/allshare/media/Provider;Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter "provider"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 153
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
    .line 145
    .local p2, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;->startFlatSearching(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 146
    return-void
.end method

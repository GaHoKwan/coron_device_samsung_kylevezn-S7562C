.class public Lcom/sec/android/allshare/extension/FlatProvider;
.super Lcom/sec/android/allshare/media/Provider;
.source "FlatProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    }
.end annotation


# instance fields
.field private mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

.field private mProvider:Lcom/sec/android/allshare/media/Provider;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/media/Provider;)V
    .locals 1
    .parameter "decoratedProvider"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/sec/android/allshare/media/Provider;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 35
    iput-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    .line 65
    iput-object p1, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    .line 66
    invoke-static {p0}, Lcom/sec/android/allshare/extension/impl/MediaGetterManager;->createMediaGetter(Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    .line 67
    return-void
.end method


# virtual methods
.method public browse(Lcom/sec/android/allshare/Item;II)V
    .locals 1
    .parameter "parentFolderItem"
    .parameter "startIndex"
    .parameter "requestCount"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/allshare/media/Provider;->browse(Lcom/sec/android/allshare/Item;II)V

    .line 122
    return-void
.end method

.method public cancelFlatBrowse(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p1}, Lcom/sec/android/allshare/extension/impl/IMediaGetter;->cancel(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 113
    return-void
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/allshare/extension/FlatProvider;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Lcom/sec/android/allshare/media/Receiver;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/Provider;->getReceiver()Lcom/sec/android/allshare/media/Receiver;

    move-result-object v0

    return-object v0
.end method

.method public getRootFolder()Lcom/sec/android/allshare/Item;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/Provider;->getRootFolder()Lcom/sec/android/allshare/Item;

    move-result-object v0

    return-object v0
.end method

.method public isSearchable()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0}, Lcom/sec/android/allshare/media/Provider;->isSearchable()Z

    move-result v0

    return v0
.end method

.method public search(Lcom/sec/android/allshare/media/SearchCriteria;II)V
    .locals 1
    .parameter "searchCriteria"
    .parameter "startIndex"
    .parameter "requestCount"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/allshare/media/Provider;->search(Lcom/sec/android/allshare/media/SearchCriteria;II)V

    .line 199
    return-void
.end method

.method public setBrowseItemsResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/Provider;->setBrowseItemsResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;)V

    .line 204
    return-void
.end method

.method public setEventListener(Lcom/sec/android/allshare/media/Provider$IProviderEventListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/Provider;->setEventListener(Lcom/sec/android/allshare/media/Provider$IProviderEventListener;)V

    .line 193
    return-void
.end method

.method public setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mProvider:Lcom/sec/android/allshare/media/Provider;

    invoke-virtual {v0, p1}, Lcom/sec/android/allshare/media/Provider;->setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V

    .line 209
    return-void
.end method

.method startBrowseMedeaGetterFlatBrowse(Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/allshare/extension/impl/IMediaGetter;->start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 91
    return-void
.end method

.method public startFlatBrowse(Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter "type"
    .parameter "conn"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/allshare/extension/impl/IMediaGetter;->start(Lcom/sec/android/allshare/media/Provider;Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 79
    return-void
.end method

.method public startFlatBrowse(Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .parameter
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$MediaType;>;"
    iget-object v0, p0, Lcom/sec/android/allshare/extension/FlatProvider;->mFlatBorwseWorker:Lcom/sec/android/allshare/extension/impl/IMediaGetter;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/allshare/extension/impl/IMediaGetter;->start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 103
    return-void
.end method

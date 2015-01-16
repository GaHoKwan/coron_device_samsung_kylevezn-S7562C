.class public Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;
.super Ljava/lang/Object;
.source "Playlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageListBuilder"
.end annotation


# instance fields
.field private mPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addItem(Lcom/sec/android/allshare/Item;)Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;
    .locals 2
    .parameter "item"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    return-object p0
.end method

.method public build()Lcom/sec/android/allshare/media/Playlist;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sec/android/allshare/media/Playlist;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/allshare/media/Playlist;-><init>(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;Lcom/sec/android/allshare/media/Playlist$1;)V

    move-object v0, v1

    goto :goto_0
.end method

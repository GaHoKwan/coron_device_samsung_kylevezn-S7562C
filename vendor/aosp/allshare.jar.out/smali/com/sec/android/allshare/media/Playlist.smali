.class public Lcom/sec/android/allshare/media/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/Playlist$1;,
        Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;,
        Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;,
        Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;
    }
.end annotation


# instance fields
.field private mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

.field private final mPlaylist:Ljava/util/ArrayList;
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
.method private constructor <init>(Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 47
    #getter for: Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;->mPlaylist:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;->access$100(Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 48
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;Lcom/sec/android/allshare/media/Playlist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/Playlist;-><init>(Lcom/sec/android/allshare/media/Playlist$AudioListBuilder;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 42
    #getter for: Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->mPlaylist:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;->access$000(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;Lcom/sec/android/allshare/media/Playlist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/Playlist;-><init>(Lcom/sec/android/allshare/media/Playlist$ImageListBuilder;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 52
    #getter for: Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;->access$200(Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;Lcom/sec/android/allshare/media/Playlist$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/Playlist;-><init>(Lcom/sec/android/allshare/media/Playlist$VideoListBuilder;)V

    return-void
.end method


# virtual methods
.method public final getMediaType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlayListType:Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public final getPlaylist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    goto :goto_0
.end method

.class public final enum Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
.super Ljava/lang/Enum;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum BUFFERING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum CONTENT_CHANGED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum PAUSED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum PLAYING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 182
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 187
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 192
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 203
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "CONTENT_CHANGED"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 208
    new-instance v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    .line 172
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1
    .parameter "name"

    .prologue
    .line 172
    const-class v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

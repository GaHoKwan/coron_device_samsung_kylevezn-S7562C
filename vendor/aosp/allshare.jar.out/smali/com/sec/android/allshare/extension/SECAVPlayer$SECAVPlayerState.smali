.class final enum Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
.super Ljava/lang/Enum;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SECAVPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum BUFFERING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum FINISHED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum PAUSE:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum PLAYING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

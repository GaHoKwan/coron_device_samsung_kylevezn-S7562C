.class public Lcom/sec/android/allshare/media/ContentInfo$Builder;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mStartingPosition:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/media/ContentInfo$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/sec/android/allshare/media/ContentInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-wide v1, p0, Lcom/sec/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sec/android/allshare/media/ContentInfo;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/allshare/media/ContentInfo;-><init>(Lcom/sec/android/allshare/media/ContentInfo$Builder;Lcom/sec/android/allshare/media/ContentInfo$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setStartingPosition(J)Lcom/sec/android/allshare/media/ContentInfo$Builder;
    .locals 0
    .parameter "position"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/sec/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    .line 78
    return-object p0
.end method

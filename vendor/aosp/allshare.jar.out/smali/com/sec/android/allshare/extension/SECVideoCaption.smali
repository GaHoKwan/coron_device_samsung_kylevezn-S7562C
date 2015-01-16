.class public Lcom/sec/android/allshare/extension/SECVideoCaption;
.super Ljava/lang/Object;
.source "SECVideoCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x4b000

.field public static mSubTitleURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getSubTitleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resourceURL"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    return-object v2

    .line 41
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;-><init>(Lcom/sec/android/allshare/extension/SECVideoCaption;Ljava/lang/String;)V

    .line 42
    .local v1, mGetSubTitleThread:Lcom/sec/android/allshare/extension/SECVideoCaption$GetSECCaption;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 45
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    sget-object v2, Lcom/sec/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

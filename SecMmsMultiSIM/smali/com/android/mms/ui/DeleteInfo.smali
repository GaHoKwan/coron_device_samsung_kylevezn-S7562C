.class public Lcom/android/mms/ui/DeleteInfo;
.super Ljava/lang/Object;
.source "DeleteInfo.java"


# instance fields
.field public mLast:Z

.field public mThreadId:J

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    .line 20
    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Z)V
    .locals 0
    .parameter "threadId"
    .parameter "uri"
    .parameter "last"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 32
    iput-boolean p4, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    .line 33
    iput-object p3, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    .line 34
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .parameter "threadId"
    .parameter "last"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 24
    iput-boolean p3, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    .line 28
    return-void
.end method

.class public Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;
.super Ljava/lang/Object;
.source "ImsLowSignalHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mImsOn:Z

.field private mLowSignal:Z

.field private mRefHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mLowSignal:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->notifyLowSignalRegistraints()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 153
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mRefHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method

.method private notifyLowSignalRegistraints()V
    .locals 3

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 204
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public isImsOn()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsOn:Z

    return v0
.end method

.class Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private mDeleteUri:Landroid/net/Uri;

.field private mHasLockedMessages:Z

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mHasLockedMessages:Z

    .line 2256
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2260
    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 2261
    iput-boolean p3, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 2262
    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2248
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2279
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2280
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;)V

    .line 2331
    .local v0, deleteRun:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "delete thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2334
    .end local v0           #deleteRun:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2335
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$3402(Lcom/android/mms/ui/BoxListFrame;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2336
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2337
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    .line 2339
    :cond_1
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 2265
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 2266
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;
    .locals 0
    .parameter "handler"

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 2271
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .parameter "hasLockedMessages"

    .prologue
    .line 2275
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->mHasLockedMessages:Z

    .line 2276
    return-void
.end method
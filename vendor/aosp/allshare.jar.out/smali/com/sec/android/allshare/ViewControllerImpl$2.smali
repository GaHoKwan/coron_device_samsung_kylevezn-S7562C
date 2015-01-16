.class Lcom/sec/android/allshare/ViewControllerImpl$2;
.super Ljava/lang/Object;
.source "ViewControllerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/ViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/ViewControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/sec/android/allshare/ViewControllerImpl$2;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public controlEvent(Lcom/sec/android/allshare/EventSync;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$2;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/allshare/ViewControllerImpl;->access$100(Lcom/sec/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$2;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/allshare/ViewControllerImpl;->access$100(Lcom/sec/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 691
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 692
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mArg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 693
    iget v1, p1, Lcom/sec/android/allshare/EventSync;->mArg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 694
    iget-object v1, p1, Lcom/sec/android/allshare/EventSync;->mStr:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v1, p0, Lcom/sec/android/allshare/ViewControllerImpl$2;->this$0:Lcom/sec/android/allshare/ViewControllerImpl;

    #getter for: Lcom/sec/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/allshare/ViewControllerImpl;->access$100(Lcom/sec/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.class Lcom/android/mms/ui/BoxListFrame$22;
.super Landroid/os/Handler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 3503
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 3506
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3508
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$5208(Lcom/android/mms/ui/BoxListFrame;)I

    .line 3509
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$4800(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4900(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 3510
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3511
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 3512
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 3513
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, v3, v3}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    .line 3514
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Move mode will be changed to normal and Move dialog will be destroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$22;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$5500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SecurityMailboxUtils;->sendMoveCompleteBroadCast(Landroid/content/Context;)V

    goto :goto_0

    .line 3506
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

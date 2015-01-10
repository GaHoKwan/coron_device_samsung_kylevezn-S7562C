.class Lcom/android/mms/ui/ComposeMessageFragment$51;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 6060
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 6064
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 6080
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6066
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_0

    .line 6074
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$51;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 6064
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/mms/ui/ComposeMessageFragment$5;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1106
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 1134
    :cond_1
    :goto_1
    return v0

    .line 1113
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusFailedIcon(Z)Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1

    .line 1118
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusFailedIcon(Z)Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    move-result v0

    goto :goto_1

    .line 1121
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusFailedIcon(Z)Z
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 1122
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllBannerVisible()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllGroupMsgBttn:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusReplyAllBanner(Z)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1127
    goto :goto_1

    .line 1130
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusFailedIcon(Z)Z
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

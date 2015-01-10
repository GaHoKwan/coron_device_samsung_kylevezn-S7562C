.class Lcom/android/mms/ui/ComposeMessageFragment$143;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initReplyAllBannerUI()V
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
    .line 16366
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$143;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 16369
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$143;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->setReplyAllGroupConversation(ZZ)V

    .line 16370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$143;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllGroupMsgBttn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16371
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$143;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllIndividualMsgBttn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16374
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$143;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setReplyAllLayout()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 16375
    return-void
.end method

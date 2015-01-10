.class Lcom/android/mms/ui/ComposeMessageFragment$26;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
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
    .line 2721
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2724
    if-nez p2, :cond_4

    .line 2725
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 2726
    .local v0, showErrorDialog:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v3, v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 2728
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2729
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_0

    .line 2730
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2732
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 2735
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2736
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2737
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2738
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2757
    .end local v0           #showErrorDialog:Z
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2758
    return-void

    :cond_3
    move v0, v2

    .line 2725
    goto :goto_0

    .line 2743
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2744
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
    invoke-static {v1, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 2748
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 2749
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2750
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 2752
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2753
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2754
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1
.end method

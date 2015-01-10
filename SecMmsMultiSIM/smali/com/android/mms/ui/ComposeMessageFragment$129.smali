.class Lcom/android/mms/ui/ComposeMessageFragment$129;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 13562
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 13564
    if-eqz p2, :cond_2

    .line 13566
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 13567
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 13568
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 13583
    :cond_1
    :goto_0
    return-void

    .line 13569
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13572
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 13573
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, p1

    .line 13575
    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 13576
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->isDelete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13577
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_3

    .line 13578
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13580
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$129;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method

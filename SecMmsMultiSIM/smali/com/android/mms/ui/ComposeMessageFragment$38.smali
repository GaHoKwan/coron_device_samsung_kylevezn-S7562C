.class Lcom/android/mms/ui/ComposeMessageFragment$38;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$max_width:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4074
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->val$max_width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 11
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/4 v10, 0x1

    .line 4106
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v7

    if-nez v7, :cond_1

    .line 4128
    :cond_0
    :goto_0
    return v10

    .line 4109
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4110
    .local v0, mCount:I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4112
    .local v4, recipients:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 4113
    .local v2, paint:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030006

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4115
    .local v3, recipientHoverInfoView:Landroid/view/View;
    const v7, 0x7f0e0012

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4116
    .local v5, recipientsView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4117
    if-le v0, v10, :cond_0

    .line 4118
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ActionbarTitleTextView;->setActionbarTitleText(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 4123
    .local v6, width:I
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->val$max_width:I

    if-le v6, v7, :cond_2

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->val$max_width:I

    .line 4125
    :cond_2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4126
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v3, v1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

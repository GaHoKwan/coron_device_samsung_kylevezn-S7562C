.class Lcom/android/mms/ui/ComposeMessageFragment$27;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 2761
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2763
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 2765
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v1, v2

    .line 2835
    :goto_0
    return v1

    .line 2767
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2768
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2771
    goto :goto_0

    .line 2774
    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2775
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v3, "RecipientEditor DPAD_UP isPopupShowing=true "

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->playSoundEffect(I)V

    move v1, v2

    .line 2777
    goto :goto_0

    .line 2781
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v3, v1, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 2783
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2784
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2789
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 2795
    :sswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2796
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v3, "RecipientEditor DPAD_DOWN isPopupShowing=true "

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->playSoundEffect(I)V

    move v1, v2

    .line 2798
    goto/16 :goto_0

    .line 2802
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->findAvailableViewToFocus(Landroid/view/KeyEvent;)V
    invoke-static {v2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3900(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/KeyEvent;)V

    .line 2803
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 2808
    :sswitch_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 2814
    :sswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2815
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2816
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2817
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2818
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2819
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2821
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    const/16 v3, 0x42

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 2827
    :sswitch_5
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2828
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    .line 2829
    .local v0, showErrorDialog:Z
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$27;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v3, v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    goto/16 :goto_0

    .end local v0           #showErrorDialog:Z
    :cond_7
    move v0, v2

    .line 2828
    goto :goto_1

    .line 2765
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x3d -> :sswitch_4
        0x42 -> :sswitch_5
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

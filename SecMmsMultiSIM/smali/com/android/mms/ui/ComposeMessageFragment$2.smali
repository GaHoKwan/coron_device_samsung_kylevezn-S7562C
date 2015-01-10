.class Lcom/android/mms/ui/ComposeMessageFragment$2;
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
    .line 848
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 850
    iget v6, p1, Landroid/os/Message;->what:I

    .line 851
    .local v6, what:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 852
    .local v2, position:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 854
    .local v4, type:I
    sparse-switch v6, :sswitch_data_0

    .line 1017
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 857
    :sswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 858
    if-ne v4, v10, :cond_1

    .line 859
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 861
    :cond_1
    if-ne v4, v11, :cond_2

    .line 862
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 864
    :cond_2
    if-ne v4, v12, :cond_3

    .line 865
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 867
    :cond_3
    const/16 v7, 0xd

    if-ne v4, v7, :cond_4

    .line 868
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 870
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 871
    const/16 v7, 0xe

    if-ne v4, v7, :cond_7

    .line 875
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 876
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 878
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 879
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 882
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 883
    .local v3, size:I
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-lt v1, v9, :cond_7

    .line 884
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 889
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 891
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-nez v7, :cond_9

    .line 892
    const/16 v5, 0x20

    .line 903
    .local v5, updateType:I
    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, v8, v5}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 905
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 907
    const/16 v7, 0x20

    if-ne v5, v7, :cond_8

    .line 908
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 909
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 894
    .end local v5           #updateType:I
    :cond_9
    if-eq v4, v10, :cond_a

    if-ne v4, v11, :cond_b

    .line 896
    :cond_a
    const/16 v5, 0x1f

    .restart local v5       #updateType:I
    goto :goto_2

    .line 897
    .end local v5           #updateType:I
    :cond_b
    if-ne v4, v12, :cond_c

    .line 898
    const/16 v5, 0x21

    .restart local v5       #updateType:I
    goto :goto_2

    .line 900
    .end local v5           #updateType:I
    :cond_c
    const/16 v5, 0x1e

    .restart local v5       #updateType:I
    goto :goto_2

    .line 913
    .end local v5           #updateType:I
    :sswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 914
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, v2}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 915
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v9, 0x22

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 916
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 919
    :cond_d
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 923
    :sswitch_3
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 924
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, v2}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 925
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v9, 0x23

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 926
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 930
    :cond_e
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 931
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 934
    :sswitch_4
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v8

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 935
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v7}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 938
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-static {v7, v8, v2, v4}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 944
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_5
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7, v9, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto/16 :goto_0

    .line 949
    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 950
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    goto/16 :goto_0

    .line 954
    :cond_f
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 956
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 957
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v7, v9, v8}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 962
    :goto_3
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_10

    .line 963
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 966
    :cond_10
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v7, :cond_0

    .line 967
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v7}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    .line 959
    :cond_11
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v7, v8, v9}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_3

    .line 988
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v7

    if-ne v7, v9, :cond_12

    .line 989
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 990
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 994
    :cond_12
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 995
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 1003
    :sswitch_8
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1004
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1005
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 1007
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1008
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1009
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x28 -> :sswitch_6
        0x32 -> :sswitch_0
        0x34 -> :sswitch_8
        0x35 -> :sswitch_7
    .end sparse-switch
.end method

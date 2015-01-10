.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2923
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 2930
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x111

    if-ne v4, v5, :cond_1

    .line 2931
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 2932
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "DialerHandlerThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    .line 2933
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2934
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v5, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v7, v7, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2935
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2936
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2937
    .local v2, msg1:Landroid/os/Message;
    const/16 v4, 0x11

    iput v4, v2, Landroid/os/Message;->what:I

    .line 2938
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2939
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<<<<<<<<< TIME OUT!!!! >>>>>>>>>"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3011
    .end local v2           #msg1:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2942
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x70

    if-ne v4, v5, :cond_0

    .line 2943
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2944
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<++++++++++>Sync UI"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2949
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 2994
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.arg1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2996
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2997
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2998
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3009
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 2951
    :pswitch_0
    const/4 v0, 0x0

    .line 2952
    .local v0, bCmpString:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2955
    .local v3, temp:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2966
    if-eqz v0, :cond_3

    .line 2967
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2968
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2969
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2970
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    iget v6, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
    invoke-static {v5, v4, v3, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V

    .line 2971
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2957
    :catch_0
    move-exception v1

    .line 2958
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IndexOutOfBoundsException in SEARCHOK"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2961
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 2962
    .local v1, e:Ljava/lang/NegativeArraySizeException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NegativeArraySizeException in SEARCHOK"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2973
    .end local v1           #e:Ljava/lang/NegativeArraySizeException;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultLayout()V
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_1

    .line 2977
    .end local v0           #bCmpString:Z
    .end local v3           #temp:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2978
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2979
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2980
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2981
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2983
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchResultEmpty()V
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    goto/16 :goto_1

    .line 2986
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2987
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2988
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2989
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2990
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3002
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3003
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 3004
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3005
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3006
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$6;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddBtn:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2949
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

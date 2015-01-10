.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 3016
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3017
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x111

    .line 3020
    const/4 v4, 0x0

    .line 3021
    .local v4, mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    const/4 v0, 0x0

    .line 3023
    .local v0, bCmpString:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->block()V

    .line 3024
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->close()V

    .line 3026
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3027
    .local v1, copyMsg:Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 3029
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3031
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 3135
    :cond_0
    :goto_0
    return-void

    .line 3033
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3035
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3037
    .local v5, temp:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3038
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "<++++++++++>Sync "

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3041
    const/4 v0, 0x0

    .line 3043
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Contact_SeparateLookupTable4ChinaDialerSearch"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 3044
    const/4 v0, 0x1

    .line 3062
    :goto_1
    if-nez v0, :cond_2

    .line 3063
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3064
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 3065
    monitor-exit v7

    goto :goto_0

    .line 3130
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 3046
    :cond_1
    :try_start_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_1

    .line 3049
    :catch_0
    move-exception v3

    .line 3050
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "IndexOutOfBoundsException in SEARCHSTART"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3052
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 3053
    monitor-exit v7

    goto :goto_0

    .line 3055
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 3056
    .local v3, e:Ljava/lang/NegativeArraySizeException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NegativeArraySizeException in SEARCHSTART"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3058
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 3059
    monitor-exit v7

    goto/16 :goto_0

    .line 3068
    .end local v3           #e:Ljava/lang/NegativeArraySizeException;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v6, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v4

    .line 3070
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3071
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_3

    .line 3072
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 3073
    const/16 v6, 0x13

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 3074
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    iput v6, v1, Landroid/os/Message;->arg2:I

    .line 3075
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3076
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3077
    .local v2, data:Landroid/os/Bundle;
    const-string v8, "args"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3079
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 3080
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 3105
    .end local v2           #data:Landroid/os/Bundle;
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_7

    .line 3106
    monitor-exit v7

    goto/16 :goto_0

    .line 3081
    :cond_3
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 3082
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 3083
    const/16 v6, 0x12

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 3084
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2602(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 3085
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_2

    .line 3087
    :cond_4
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 3088
    const/16 v6, 0x14

    iput v6, v1, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 3091
    :cond_5
    if-eqz v4, :cond_6

    .line 3092
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 3093
    const/16 v6, 0x13

    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 3094
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v6

    iput v6, v1, Landroid/os/Message;->arg2:I

    .line 3095
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3096
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3097
    .restart local v2       #data:Landroid/os/Bundle;
    const-string v8, "args"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_2

    .line 3100
    .end local v2           #data:Landroid/os/Bundle;
    :cond_6
    const/16 v6, 0x70

    iput v6, v1, Landroid/os/Message;->what:I

    .line 3101
    const/16 v6, 0x12

    iput v6, v1, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 3108
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x111

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3111
    const/4 v0, 0x0

    .line 3112
    :try_start_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    .line 3125
    if-eqz v0, :cond_8

    .line 3126
    :try_start_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3130
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .line 3114
    :catch_2
    move-exception v3

    .line 3115
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "IndexOutOfBoundsException in SEARCHSTART after listCreateSimple"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 3117
    monitor-exit v7

    goto/16 :goto_0

    .line 3119
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 3120
    .local v3, e:Ljava/lang/NegativeArraySizeException;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NegativeArraySizeException in SEARCHSTART after listCreateSimple"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 3122
    monitor-exit v7

    goto/16 :goto_0

    .line 3128
    .end local v3           #e:Ljava/lang/NegativeArraySizeException;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2100()Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3031
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

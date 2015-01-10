.class Lcom/android/mms/ui/ComposeMessageFragment$3;
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
    .line 1020
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    .line 1023
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "mMessageListItemHandler Fragment was detached"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    const/4 v10, 0x0

    .line 1029
    .local v10, type:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1061
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :pswitch_0
    const-string v10, "mms"

    .line 1065
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v2, v10, v4, v5, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1066
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 1067
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1068
    .local v0, messageOptions:Lcom/android/mms/ui/MessageOptions;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v12}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_0

    .line 1034
    .end local v0           #messageOptions:Lcom/android/mms/ui/MessageOptions;
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    :pswitch_1
    const-string v10, "sms"

    .line 1035
    goto :goto_1

    .line 1037
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1049
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 1050
    .local v7, data:[Ljava/lang/String;
    aget-object v11, v7, v12

    .line 1051
    .local v11, url:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v7, v1

    .line 1052
    .local v9, text:Ljava/lang/String;
    const-string v1, "geo:"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1053
    invoke-static {v11}, Lcom/android/mms/util/PackageInfo;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1054
    .local v8, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1056
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v11, v9}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

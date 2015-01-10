.class Lcom/android/mms/ui/ComposeMessageFragment$82;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8661
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$extrastring:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$extras:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 8665
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8669
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$extrastring:Ljava/lang/String;

    const-string v1, "vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I
    invoke-static {v0, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 8671
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 8672
    .local v2, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x6

    move v4, v3

    move v5, v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    .line 8677
    .end local v2           #contactUri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8679
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8685
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$extras:Landroid/os/Bundle;

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8686
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$intent:Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 8687
    .local v9, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8688
    .local v8, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v10, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8689
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 8697
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 8666
    .end local v7           #msg:Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 8667
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 8674
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    invoke-static {v0, v1, v4, v3, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    goto :goto_1

    .line 8680
    :catch_1
    move-exception v6

    .line 8681
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "Catch a IllegalArgumentException: "

    invoke-static {v0, v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 8690
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->val$intent:Landroid/content/Intent;

    const-string v1, "onlinealbum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "4444"

    invoke-static {v0, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8692
    .restart local v7       #msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 8694
    .end local v7           #msg:Landroid/os/Message;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8695
    .restart local v7       #msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;
.super Landroid/os/Handler;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 248
    const-string v1, "file_create_faile"

    .line 250
    .local v1, szFileName:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v6, "message backup started... waiting.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Backup"

    const-string v7, "Message DB Backup Started"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Backup"

    const-string v7, "Message DB Backup Completed"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #setter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 262
    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_2

    .line 263
    const-string v2, "MESSAGE DB BACKUP COMPLETE!! (%s)"

    .line 268
    .local v2, szTitle:Ljava/lang/String;
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 269
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 270
    const-string v5, "filename"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 273
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 274
    const-string v5, "MessageDatabaseBackupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    goto :goto_0

    .line 265
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #szTitle:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_2
    const-string v2, "MESSAGE DB BACKUP FAIL!! (%s)"

    .restart local v2       #szTitle:Ljava/lang/String;
    goto :goto_1

    .line 280
    .end local v2           #szTitle:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v6, "message restore started... waiting.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Restore"

    const-string v7, "Message DB Restore Started"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :pswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Restore"

    const-string v7, "Message DB Restore Completed"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 288
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #setter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 290
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_5

    .line 291
    const-string v2, "MESSAGE DB RESTORE COMPLETE!! (%s)"

    .line 296
    .restart local v2       #szTitle:Ljava/lang/String;
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 297
    .restart local v0       #bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 298
    const-string v5, "filename"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_4
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 301
    .local v4, toast2:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 302
    const-string v5, "MessageDatabaseBackupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 293
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #szTitle:Ljava/lang/String;
    .end local v4           #toast2:Landroid/widget/Toast;
    :cond_5
    const-string v2, "MESSAGE DB RESTORE FAIL!! (%s)"

    .restart local v2       #szTitle:Ljava/lang/String;
    goto :goto_2

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

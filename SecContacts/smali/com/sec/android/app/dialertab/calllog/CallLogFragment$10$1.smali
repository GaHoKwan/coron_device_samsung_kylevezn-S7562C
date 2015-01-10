.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

.field final synthetic val$callIds:Ljava/lang/StringBuilder;

.field final synthetic val$checkedRemindMeDates:Ljava/lang/StringBuilder;

.field final synthetic val$checkedRemindMeNumbers:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$callIds:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$checkedRemindMeNumbers:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$checkedRemindMeDates:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1563
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$callIds:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1570
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$checkedRemindMeNumbers:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.CALL_REMIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v0, i:Landroid/content/Intent;
    const-string v1, "state"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    const-string v1, "numbers"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$checkedRemindMeNumbers:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string v1, "date"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->val$checkedRemindMeDates:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1581
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-object v5
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1563
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidate()V

    .line 1587
    return-void
.end method

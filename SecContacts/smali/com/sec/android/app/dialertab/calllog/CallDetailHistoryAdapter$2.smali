.class Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

.field final synthetic val$mDate:J

.field final synthetic val$mDetailRemindMeButtonOff:Landroid/widget/Button;

.field final synthetic val$mDetailRemindMeButtonOn:Landroid/widget/Button;

.field final synthetic val$mId:I

.field final synthetic val$mNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;Landroid/widget/Button;Landroid/widget/Button;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDetailRemindMeButtonOn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDetailRemindMeButtonOff:Landroid/widget/Button;

    iput p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mId:I

    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mNumber:Ljava/lang/String;

    iput-wide p6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDate:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 417
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDetailRemindMeButtonOn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDetailRemindMeButtonOff:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 424
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "remind_me_later_set"

    const-string v4, "2"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 434
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateCallDetailData()V

    .line 438
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.CALL_REMIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, i:Landroid/content/Intent;
    const-string v3, "state"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v3, "numbers"

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v3, "date"

    iget-wide v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->val$mDate:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

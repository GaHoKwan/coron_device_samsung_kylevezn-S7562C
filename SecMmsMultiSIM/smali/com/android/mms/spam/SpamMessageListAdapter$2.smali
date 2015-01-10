.class Lcom/android/mms/spam/SpamMessageListAdapter$2;
.super Ljava/lang/Object;
.source "SpamMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SpamMessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SpamMessageListAdapter;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$000(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    instance-of v5, v5, Lcom/android/mms/spam/ManageSpamMessages;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I
    invoke-static {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$100(Lcom/android/mms/spam/SpamMessageListAdapter;)I

    move-result v5

    if-nez v5, :cond_0

    .line 380
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$200(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v5, v0, p1}, Lcom/android/mms/spam/ManageSpamMessages;->startSlideshow(ZLandroid/view/View;)V

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I
    invoke-static {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$100(Lcom/android/mms/spam/SpamMessageListAdapter;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 383
    sget-boolean v5, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v5, :cond_6

    .line 384
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 386
    .local v0, checked:Z
    :cond_1
    if-eqz v0, :cond_5

    .line 388
    const-wide/16 v2, 0x0

    .line 389
    .local v2, msgId:J
    const-string v4, "sms"

    .line 391
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 392
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 394
    :cond_2
    const-string v5, "transport_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 396
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 399
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/spam/SpamMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 405
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 412
    .end local v0           #checked:Z
    :cond_4
    :goto_1
    return-void

    .line 403
    .restart local v0       #checked:Z
    :cond_5
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->clearCheckedList()V

    goto :goto_0

    .line 409
    .end local v0           #checked:Z
    :cond_6
    iget-object v5, p0, Lcom/android/mms/spam/SpamMessageListAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->performClick()Z

    goto :goto_1
.end method

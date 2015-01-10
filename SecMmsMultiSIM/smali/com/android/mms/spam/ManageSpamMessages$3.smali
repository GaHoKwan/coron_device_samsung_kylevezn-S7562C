.class Lcom/android/mms/spam/ManageSpamMessages$3;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 294
    sget-boolean v5, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v5, :cond_4

    .line 295
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$200(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    .line 297
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 299
    const-wide/16 v2, 0x0

    .line 300
    .local v2, msgId:J
    const-string v4, "sms"

    .line 302
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 303
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    :cond_0
    const-string v5, "transport_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 310
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/spam/SpamMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$200(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 322
    .end local v0           #checked:Z
    :goto_2
    return-void

    .line 295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    .restart local v0       #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->clearCheckedList()V

    goto :goto_1

    .line 320
    .end local v0           #checked:Z
    :cond_4
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages$3;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/spam/ManageSpamMessages;->access$200(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->performClick()Z

    goto :goto_2
.end method

.class Lcom/android/mms/ui/ComposeMessageFragment$95;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V
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
    .line 9724
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 9726
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 9728
    .local v1, checked:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 9729
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9732
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9734
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9735
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9736
    .local v4, msgType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 9737
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 9743
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 9747
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 9750
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9751
    return-void

    .end local v1           #checked:Z
    :cond_2
    move v1, v6

    .line 9726
    goto :goto_0

    .line 9740
    .restart local v1       #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    goto :goto_1
.end method

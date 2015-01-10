.class Lcom/android/mms/ui/BoxListFrame$1;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 424
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 425
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v5, v6}, Lcom/android/mms/ui/BoxListFrame;->access$102(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 427
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, i:I
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/mms/ui/BoxListAdapter;->setChecked(JLjava/lang/String;)V

    .line 431
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->setChecked(IZ)V
    invoke-static {v5, v1, v3}, Lcom/android/mms/ui/BoxListFrame;->access$300(Lcom/android/mms/ui/BoxListFrame;IZ)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 433
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 442
    .end local v1           #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 443
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 444
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$500(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 448
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    .line 449
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)V

    .line 450
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v4

    .line 422
    goto :goto_0

    .line 436
    .restart local v0       #checked:Z
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 437
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v2

    .line 438
    .local v2, totalCnt:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 439
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->setChecked(IZ)V
    invoke-static {v5, v1, v4}, Lcom/android/mms/ui/BoxListFrame;->access$300(Lcom/android/mms/ui/BoxListFrame;IZ)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 446
    .end local v1           #i:I
    .end local v2           #totalCnt:I
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$1;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$500(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_1
.end method

.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$itemPosition:I

.field final synthetic val$itemSize:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemPosition:I

    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1615
    const/4 v3, 0x0

    .line 1616
    .local v3, iColumnIndex:I
    const/4 v4, 0x0

    .line 1617
    .local v4, iItemIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1619
    .local v1, callIds:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1620
    .local v0, c:Landroid/database/Cursor;
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor null? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1623
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->val$itemSize:I

    if-ge v2, v5, :cond_2

    .line 1624
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1625
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1627
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1631
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1632
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;->REMOVE_ITME_FROM_CALL_LOG:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12$1;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1651
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1652
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 1653
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 1654
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 1656
    :cond_3
    return-void
.end method

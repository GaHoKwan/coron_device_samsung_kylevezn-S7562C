.class Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 324
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 326
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 332
    if-eqz p3, :cond_0

    .line 334
    const-string v0, "[ServiceNumbersFragment]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #setter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$002(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$100(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Z)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mAdapter:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$200(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$300(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$400(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$300(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    #getter for: Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$400(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

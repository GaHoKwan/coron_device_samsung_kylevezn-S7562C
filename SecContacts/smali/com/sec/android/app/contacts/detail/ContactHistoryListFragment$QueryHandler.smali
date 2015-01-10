.class Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 1
    .parameter
    .parameter "fragment"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 914
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 915
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 923
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1200()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1200()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onQueryCompleted(Z)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 927
    return-void

    .line 924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 931
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 937
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1200()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #calls: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->considerBindDate(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1300(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/database/Cursor;)V

    .line 950
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1200()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLoading(Z)V

    .line 952
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 956
    :cond_3
    if-eqz p3, :cond_5

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iget-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onQueryCompleted(Z)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 962
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1502(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;I)I

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateAllCheckState()V

    .line 968
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v1

    .line 957
    goto :goto_0

    .line 965
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$1600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 918
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    .line 920
    :cond_0
    return-void
.end method

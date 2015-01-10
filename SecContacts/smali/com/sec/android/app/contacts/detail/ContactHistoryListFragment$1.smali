.class Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;
.super Landroid/database/ContentObserver;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z

    .line 228
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-direct {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;-><init>(Landroid/app/Fragment;)V

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$402(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Long;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$500()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    :cond_0
    return-void
.end method

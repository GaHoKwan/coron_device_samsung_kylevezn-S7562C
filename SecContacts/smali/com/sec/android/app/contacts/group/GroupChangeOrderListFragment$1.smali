.class Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 200
    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->clear()V

    .line 209
    const/4 v1, 0x0

    .line 212
    .local v1, order:I
    const/4 v5, -0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 213
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, systemId:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .local v2, order:I
    invoke-direct {v0, v4, v3, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .local v0, groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #order:I
    .restart local v1       #order:I
    goto :goto_0

    .line 219
    .end local v0           #groupListItem:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .end local v3           #systemId:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 220
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 221
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

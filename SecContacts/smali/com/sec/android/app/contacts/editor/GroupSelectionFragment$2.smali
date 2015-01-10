.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;
.super Ljava/lang/Object;
.source "GroupSelectionFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 496
    const-string v2, "show_ICE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 500
    .local v1, show_ice:Z
    if-eqz v1, :cond_0

    .line 502
    new-instance v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;-><init>(Landroid/content/Context;)V

    .line 512
    :goto_0
    return-object v0

    .line 506
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;-><init>(Landroid/content/Context;)V

    .line 508
    .local v0, loader:Landroid/content/CursorLoader;
    const-string v2, "title!=\'ICE\'"

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "curRecord"
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
    .line 524
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #calls: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->UpdateItems(Landroid/database/Cursor;)V
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #calls: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->considerBindData()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$500(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #calls: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$600(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    .line 530
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 536
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

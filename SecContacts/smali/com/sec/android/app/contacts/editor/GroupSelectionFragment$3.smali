.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;
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
.field bShow_ICE:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->bShow_ICE:Z

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 560
    const-string v0, "show_ICE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->bShow_ICE:Z

    .line 562
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 572
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "show_ICE"

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->bShow_ICE:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v3}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$700(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 580
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 586
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

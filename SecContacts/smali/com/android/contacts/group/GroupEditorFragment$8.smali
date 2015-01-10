.class Lcom/android/contacts/group/GroupEditorFragment$8;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1338
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mMode:I
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$800(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 1339
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v0

    .line 1340
    .local v0, groupId:J
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->createGoogleGroupMemberLoader(Landroid/content/Context;J)Landroid/content/CursorLoader;

    move-result-object v2

    .line 1348
    .end local v0           #groupId:J
    .local v2, loader:Landroid/content/CursorLoader;
    :goto_0
    return-object v2

    .line 1344
    .end local v2           #loader:Landroid/content/CursorLoader;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1345
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->createAggGroupMemberLoader(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v2

    .restart local v2       #loader:Landroid/content/CursorLoader;
    goto :goto_0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$8;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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
    .line 1354
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, -0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1355
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1358
    .local v0, contactId:J
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1361
    .end local v0           #contactId:J
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1400(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 1364
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1366
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$8;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1370
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

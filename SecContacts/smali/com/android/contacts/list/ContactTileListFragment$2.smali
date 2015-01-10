.class Lcom/android/contacts/list/ContactTileListFragment$2;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 480
    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment$8;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 497
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized DisplayType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactTileLoaderFactory;->createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    .line 484
    :pswitch_1
    const-string v1, "kylevexx"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kyleveub"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "logan2gxx"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 485
    .local v0, isLowRamModel:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 486
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactTileLoaderFactory;->createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v1

    goto :goto_0

    .line 484
    .end local v0           #isLowRamModel:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 489
    .restart local v0       #isLowRamModel:Z
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactTileLoaderFactory;->createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v1

    goto :goto_0

    .line 493
    .end local v0           #isLowRamModel:Z
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v1

    goto :goto_0

    .line 495
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactTileLoaderFactory;->createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v1

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v7, 0x0

    .line 505
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/contacts/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 511
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 512
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 513
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 515
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;->onFavoriteDataChanged(Z)V

    goto :goto_0

    .line 517
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 518
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v5, v5, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v5, v6, :cond_9

    .line 521
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 522
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 523
    .local v0, id:J
    const-string v5, "lookup"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, lookupKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    #setter for: Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactTileListFragment;->access$502(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 527
    .end local v0           #id:J
    .end local v2           #lookupKey:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .line 528
    .local v3, selectionExists:Z
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 529
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 530
    .restart local v0       #id:J
    const-string v5, "lookup"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    .restart local v2       #lookupKey:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 533
    .local v4, tempUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 534
    const/4 v3, 0x1

    .line 538
    .end local v0           #id:J
    .end local v2           #lookupKey:Ljava/lang/String;
    .end local v4           #tempUri:Landroid/net/Uri;
    :cond_7
    if-nez v3, :cond_8

    .line 539
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactTileListFragment;->selectFirstUri()V

    .line 546
    .end local v3           #selectionExists:Z
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 547
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$400(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;->onFavoriteDataChanged(Z)V

    goto/16 :goto_0

    .line 543
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v6, 0x0

    #setter for: Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactTileListFragment;->access$502(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 552
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

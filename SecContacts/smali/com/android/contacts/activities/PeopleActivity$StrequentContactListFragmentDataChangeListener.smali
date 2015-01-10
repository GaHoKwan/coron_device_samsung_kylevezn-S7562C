.class final Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentDataChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2346
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onFavoriteDataChanged(Z)V
    .locals 9
    .parameter "isListEmpty"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2350
    const-string v3, "kylevexx"

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "kyleveub"

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "logan2gxx"

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v1, v4

    .line 2352
    .local v1, isLowRamModel:Z
    :goto_0
    if-nez v1, :cond_1

    .line 2354
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, v3, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v3

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2356
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v7, v3, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-nez p1, :cond_5

    move v3, v4

    :goto_1
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2359
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, v3, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v3

    if-ne v3, v8, :cond_2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2362
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, v3, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    if-nez p1, :cond_6

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2364
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2366
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean p1, v3, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    .line 2367
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v4, 0x7f0902c5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2368
    .local v2, noFavoritesView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v3

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2370
    if-eqz p1, :cond_7

    .line 2371
    if-eqz v2, :cond_3

    .line 2372
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2393
    .end local v2           #noFavoritesView:Landroid/view/View;
    :cond_3
    :goto_3
    return-void

    .end local v1           #isLowRamModel:Z
    :cond_4
    move v1, v5

    .line 2350
    goto/16 :goto_0

    .restart local v1       #isLowRamModel:Z
    :cond_5
    move v3, v5

    .line 2356
    goto :goto_1

    :cond_6
    move v4, v5

    .line 2362
    goto :goto_2

    .line 2378
    .restart local v2       #noFavoritesView:Landroid/view/View;
    :cond_7
    if-eqz v2, :cond_3

    .line 2379
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v4, 0x7f0902c3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2381
    .local v0, favoritesDetailContainer:Landroid/view/View;
    if-eqz v0, :cond_8

    .line 2382
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-boolean v3, v3, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2387
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v3, v5

    .line 2382
    goto :goto_4
.end method

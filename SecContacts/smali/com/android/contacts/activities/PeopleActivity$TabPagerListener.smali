.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1506
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 1510
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1516
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1517
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 1519
    .local v0, selectedTab:I
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1520
    if-ne v0, v1, :cond_4

    .line 1521
    const/4 v0, 0x1

    .line 1531
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_FixMainTabWhenAppLaunched"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1533
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 1535
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1300(Lcom/android/contacts/activities/PeopleActivity;I)V

    .line 1538
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1539
    if-ne v0, v1, :cond_2

    .line 1540
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1549
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1551
    .end local v0           #selectedTab:I
    :cond_3
    return-void

    .line 1523
    .restart local v0       #selectedTab:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1526
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1200(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1540
    goto :goto_1

    .line 1544
    :cond_7
    if-ne v0, v1, :cond_2

    .line 1545
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

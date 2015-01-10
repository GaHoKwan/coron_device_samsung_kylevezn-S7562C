.class Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
.super Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabPagerAdapterSearchMode:Z

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;-><init>()V

    .line 1566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1571
    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1572
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1633
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    .line 1634
    if-nez p1, :cond_8

    .line 1635
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    .line 1661
    :goto_0
    return-object v0

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    if-ne p1, v2, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1647
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    goto :goto_0

    .line 1648
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1649
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 1650
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 1651
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v0

    goto :goto_0

    .line 1652
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1653
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1654
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    invoke-direct {v1}, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;-><init>()V

    #setter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1802(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .line 1656
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v0

    goto :goto_0

    .line 1658
    :cond_7
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1661
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 1665
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1685
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1692
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1694
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1594
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v2, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 1625
    :cond_0
    :goto_0
    return v0

    .line 1600
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1601
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 1602
    goto :goto_0

    .line 1607
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 1608
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 1610
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 1611
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 1613
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1614
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 1616
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 1617
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 1620
    :cond_6
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1621
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 1625
    :cond_7
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 1671
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 1673
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1674
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1676
    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 1698
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 1708
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSearchMode(Z)V
    .locals 1
    .parameter "searchMode"

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-ne p1, v0, :cond_0

    .line 1584
    :goto_0
    return-void

    .line 1582
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    .line 1583
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1630
    return-void
.end method

.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;,
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;,
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;
    }
.end annotation


# static fields
.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasPermanentMenuKey:Z

.field private mFromEmergencyDial:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mHasFocus:Z

.field private mIsAutoAdd:Z

.field private mIsEditable:Z

.field private mIsProgressShowing:Z

.field private mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mResId:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mSoftInputMode:I

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

.field private popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 147
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    .line 185
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setYellowPagesHeaderEnabled(Z)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private adjustLayoutPadding()V
    .locals 12

    .prologue
    const v11, 0x7f0c00af

    const/high16 v6, 0x300

    const v10, 0x7f0c00b1

    const/4 v9, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09016d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, listContainer:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09019d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 321
    .local v2, searchView:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 323
    .local v1, rightPadding:I
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 326
    .local v3, topPadding:I
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v4, :cond_1

    .line 327
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 328
    const-string v4, "alwasy_tab_mode_tablet"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 334
    div-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v3, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    :goto_0
    const-string v4, "alwasy_tab_mode_tablet"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v9, v3, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 358
    :goto_1
    return-void

    .line 337
    :cond_0
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v4, v3, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v4, "alwasy_tab_mode_tablet"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v9, v3, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v0, v9, v3, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {v2, v9, v3, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private configureEmptyText()V
    .locals 2

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1198
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    const v1, 0x7f0d028d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    const v1, 0x7f0d028c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 641
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchMode:Z

    if-eqz v0, :cond_1

    .line 642
    if-eqz p1, :cond_0

    .line 643
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 645
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setNoMatchesText()V

    .line 670
    :goto_0
    return-void

    .line 648
    :cond_0
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 650
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 651
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    goto :goto_0

    .line 654
    :cond_1
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSoftInputMode()V

    .line 656
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showNoMatchesView(Z)V

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v0, :cond_3

    .line 662
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 668
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyText()V

    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setGroupMemberHelpTextAndImage()V

    goto :goto_1
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 578
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 579
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 580
    .local v0, menu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const v2, 0x7f12001b

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$6;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 588
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 590
    return-void
.end method

.method private getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 919
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNumberDataArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 921
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    .line 928
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, p0, v0, p2}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_1
    const-string v0, "GroupMemberBrowseListFragment"

    const-string v1, "no phone number"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhoneNumberDataArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND lookup = \'"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v6

    const-string v4, "data2"

    aput-object v4, v2, v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1093
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    if-eqz v0, :cond_1

    .line 1097
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1098
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1101
    new-instance v4, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/contacts/model/PhoneNumberInfo;-><init>(Ljava/lang/String;I)V

    .line 1102
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1106
    :cond_1
    return-object v1
.end method

.method private getRunnableDelay()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1284
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x1f4

    goto :goto_0
.end method

.method private requestSearchViewFocus(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->shouldOnlyRequestFocus(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method private setGroupMemberHelpTextAndImage()V
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    const/16 v2, 0x140

    const/16 v3, 0x8

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1134
    const v1, 0x7f0205f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1135
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1136
    const v1, 0x7f0d025d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v2, :cond_4

    .line 1142
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1143
    if-eqz v0, :cond_2

    .line 1144
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    :cond_2
    :goto_0
    return-void

    .line 1146
    :cond_3
    if-eqz v0, :cond_2

    .line 1147
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1150
    :cond_4
    if-eqz v0, :cond_2

    .line 1151
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNoMatchesText()V
    .locals 3

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1125
    const v0, 0x7f09030b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1126
    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1127
    const v2, 0x7f0d0302

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1128
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1129
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1130
    return-void
.end method

.method private setVisibleAccountfilterHeaderView(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, accountFilterHeaderContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 364
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_0
    return-void

    .line 364
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f090384

    const v3, 0x7f09037e

    const/4 v2, 0x0

    .line 594
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_0

    .line 595
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 596
    const v1, 0x7f09037c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 599
    .local v0, isSMSAvailable:Z
    if-nez v0, :cond_1

    .line 600
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 603
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 605
    const v1, 0x7f09037d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    :cond_2
    return-void
.end method

.method private shouldOnlyRequestFocus(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 1299
    instance-of v0, p1, Lcom/android/contacts/activities/GroupDetailActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/activities/GroupDetailActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/contacts/activities/GroupDetailActivity;->inOptionMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 1
    .parameter "memberCount"

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 1249
    :cond_0
    return-void
.end method

.method private showNoMatchesView(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09016b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f09019f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f09019e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1114
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1118
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1119
    goto :goto_2

    :cond_4
    move v2, v1

    .line 1120
    goto :goto_3
.end method

.method private updateAddBtnVisible()V
    .locals 3

    .prologue
    .line 610
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    if-nez v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 612
    .local v0, addBtn:Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 614
    .end local v0           #addBtn:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method private updateCustomSearchBarVisibility(Z)V
    .locals 3
    .parameter "fromEmergencyDial"

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, customSearchBarLayout:Landroid/view/View;
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    return-void

    .line 636
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMenuBtnVisible(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v3, 0x8

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 619
    .local v0, menuBtn:Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 622
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 632
    :goto_0
    return-void

    .line 626
    :cond_1
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 628
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 630
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 979
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 982
    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09016a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 474
    .local v0, addBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    const v2, 0x7f0d0278

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 476
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 491
    .local v1, menuBtn:Landroid/widget/ImageButton;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    if-ne v2, v5, :cond_3

    .line 494
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 508
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090169

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 509
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 510
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 514
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 519
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    if-eqz v2, :cond_2

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getRunnableDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0d01df

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$5;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 573
    return-void

    .line 496
    :cond_3
    new-instance v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setDisplayPhotos(Z)V

    .line 264
    return-object v0
.end method

.method public dismissProgress()V
    .locals 3

    .prologue
    .line 998
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 999
    const-string v0, "GroupMemberBrowseListFragment"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_0
    return-void

    .line 1001
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1002
    const-string v0, "GroupMemberBrowseListFragment"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_1
    :try_start_0
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1006
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 1008
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSelectedGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public isAutoAdd()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsAutoAdd:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 3
    .parameter "groupInfo"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    .line 207
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsEditable:Z

    .line 208
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 209
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "loadGroup : LOAD ICE GROUP"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 216
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateAddBtnVisible()V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 218
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setMode(I)V

    .line 219
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 220
    return-void

    .line 213
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setQuickContactEnabled(Z)V

    goto :goto_0
.end method

.method public loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->reloadData()V

    .line 229
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 298
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->hasPermanentMenuKey:Z

    .line 299
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 811
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 895
    :cond_0
    :goto_1
    return v0

    .line 813
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hasPhoneNumber"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 814
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 815
    if-eqz v2, :cond_0

    .line 816
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    move-result-object v3

    .line 819
    if-eqz v3, :cond_0

    .line 823
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    const-string v5, "android.intent.extra.CONTACT_ID"

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 826
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v5, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 828
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v5, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 830
    const-string v2, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    iget-boolean v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 832
    const-string v2, "hasPhoneNumber"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 838
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 842
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 843
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    const-string v3, "CONTACT_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 845
    const-string v1, "mode"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    const-string v1, "direct_launch"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 851
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 855
    :sswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isDefaultICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 856
    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 859
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "targetLookupKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selectedName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 861
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 870
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 874
    :sswitch_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto/16 :goto_1

    .line 879
    :sswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "emergencyServiceId"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 880
    const-string v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 886
    :sswitch_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "emergencyServiceId"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 887
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v0, v2, v3}, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 811
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09039c -> :sswitch_2
        0x7f09039d -> :sswitch_3
        0x7f09039e -> :sswitch_0
        0x7f0903c4 -> :sswitch_9
        0x7f0903c5 -> :sswitch_8
        0x7f0903c6 -> :sswitch_4
        0x7f0903c7 -> :sswitch_5
        0x7f0903c8 -> :sswitch_6
        0x7f0903ce -> :sswitch_7
        0x7f0903cf -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateChosen()V
    .locals 3

    .prologue
    .line 1018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1019
    const-string v1, "is_ice_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1021
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1026
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 29
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v2, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    if-eqz p3, :cond_0

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .local v8, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    move-object/from16 v20, p3

    .line 683
    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 684
    .local v20, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v9, v2, v3

    .line 685
    .local v9, adjPosition:I
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v13

    .line 686
    .local v13, contactUri:Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 687
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 688
    .local v11, contactId:J
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v15

    .line 689
    .local v15, displayName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getUnknownNameText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v19

    .line 692
    .local v19, inflater:Landroid/view/MenuInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v23

    .line 693
    .local v23, isUsmEnabled:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 694
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v21

    .line 695
    .local v21, isDefaultICE:Z
    if-nez v21, :cond_0

    .line 708
    const v2, 0x7f120011

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 709
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    const v2, 0x7f0903c7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0d0279

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 712
    :cond_2
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getHasPhoneNumber(I)Z

    move-result v22

    .line 713
    .local v22, isPhoneNumber:Z
    if-nez v22, :cond_3

    .line 714
    const v2, 0x7f0903c6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v10, callIntent:Landroid/content/Intent;
    const-string v2, "isDefaultICE"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 719
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v25

    .line 720
    .local v25, lookupKey:Ljava/lang/String;
    const-string v2, "targetLookupKey"

    move-object/from16 v0, v25

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v2, "selectedName"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const v2, 0x7f0903c6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 725
    const/4 v2, 0x1

    new-array v4, v2, [J

    const/4 v2, 0x0

    aput-wide v11, v4, v2

    .line 728
    .local v4, membersToEditArray:[J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "editMemberCompleted"

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v26

    .line 732
    .local v26, removeIntent:Landroid/content/Intent;
    const v2, 0x7f0903c7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 735
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 736
    .local v16, editIntent:Landroid/content/Intent;
    const v2, 0x7f0903c8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v4           #membersToEditArray:[J
    .end local v10           #callIntent:Landroid/content/Intent;
    .end local v16           #editIntent:Landroid/content/Intent;
    .end local v19           #inflater:Landroid/view/MenuInflater;
    .end local v21           #isDefaultICE:Z
    .end local v22           #isPhoneNumber:Z
    .end local v23           #isUsmEnabled:Z
    .end local v25           #lookupKey:Ljava/lang/String;
    .end local v26           #removeIntent:Landroid/content/Intent;
    :cond_4
    move-object v2, v15

    .line 689
    goto/16 :goto_1

    .line 739
    .restart local v19       #inflater:Landroid/view/MenuInflater;
    .restart local v23       #isUsmEnabled:Z
    :cond_5
    const v2, 0x7f120013

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 743
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v18, groupIntent:Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 745
    const-string v2, "hasPhoneNumber"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getHasPhoneNumber(I)Z

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    const v2, 0x7f09039e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 754
    .end local v18           #groupIntent:Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 756
    :cond_6
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getLinkedAccounts(I)Ljava/lang/String;

    move-result-object v24

    .line 758
    .local v24, linkedAccounts:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v28

    .line 759
    .local v28, systemId:Ljava/lang/String;
    const-string v2, "Contacts"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v24, :cond_7

    .line 760
    const v2, 0x7f0903cf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const-string v2, "com.google"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 763
    :cond_7
    const/4 v2, 0x1

    new-array v4, v2, [J

    const/4 v2, 0x0

    aput-wide v11, v4, v2

    .line 768
    .restart local v4       #membersToEditArray:[J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v26

    .line 771
    .restart local v26       #removeIntent:Landroid/content/Intent;
    const v2, 0x7f0903cf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 777
    .end local v4           #membersToEditArray:[J
    .end local v24           #linkedAccounts:Ljava/lang/String;
    .end local v26           #removeIntent:Landroid/content/Intent;
    .end local v28           #systemId:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v23, :cond_c

    .line 778
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v27, sendInfoIntent:Landroid/content/Intent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 780
    const v2, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 787
    .end local v27           #sendInfoIntent:Landroid/content/Intent;
    :goto_5
    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isContactStarred(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 788
    const v2, 0x7f09039d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0d002f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 790
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isContactStarred(I)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_6
    invoke-static {v3, v13, v2}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v17

    .line 792
    .local v17, favoriteIntent:Landroid/content/Intent;
    const v2, 0x7f09039d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 795
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 796
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v14, deleteIntent:Landroid/content/Intent;
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 798
    const v2, 0x7f0903ce

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 749
    .end local v14           #deleteIntent:Landroid/content/Intent;
    .end local v17           #favoriteIntent:Landroid/content/Intent;
    :cond_9
    const v2, 0x7f09039e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 760
    .restart local v24       #linkedAccounts:Ljava/lang/String;
    .restart local v28       #systemId:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 773
    .end local v24           #linkedAccounts:Ljava/lang/String;
    .end local v28           #systemId:Ljava/lang/String;
    :cond_b
    const v2, 0x7f0903cf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 783
    :cond_c
    const v2, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 790
    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    .line 801
    .restart local v17       #favoriteIntent:Landroid/content/Intent;
    :cond_e
    const v2, 0x7f0903ce

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->adjustLayoutPadding()V

    .line 311
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setVisibleAccountfilterHeaderView(Z)V

    .line 313
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    if-lez v0, :cond_1

    .line 314
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 316
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1265
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDestroy()V

    .line 1266
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1268
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->destroy()V

    .line 1270
    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .parameter "position"
    .parameter "id"

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 901
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v1

    .line 902
    .local v1, isDefaultICE:Z
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v5, :cond_2

    .line 903
    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    .line 916
    .end local v4           #phoneNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, lookupKey:Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v2           #lookupKey:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    .line 913
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->configureEmptyView(Z)V

    .line 425
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 427
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateMenuBtnVisible(Z)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 432
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 413
    goto :goto_0

    :cond_2
    move v1, v2

    .line 427
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1254
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPause()V

    .line 1255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1257
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->pause()V

    .line 1259
    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1261
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onResume()V

    .line 372
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 374
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->resume()V

    .line 376
    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    .line 274
    .local v0, hasFocus:Z
    const-string v2, "hasFocus"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    .line 277
    .local v1, isShowing:Z
    const-string v2, "isShowing"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    const-string v2, "resourId"

    iget v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    .end local v1           #isShowing:Z
    :cond_0
    return-void
.end method

.method public onUpdateChosen()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    .line 1033
    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStartedLoading:Z

    .line 397
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    .line 398
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 400
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 287
    if-nez p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "hasFocus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mHasFocus:Z

    .line 291
    const-string v0, "isShowing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 292
    const-string v0, "resourId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    goto :goto_0
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .parameter "isAutoAdd"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsAutoAdd:Z

    .line 233
    return-void
.end method

.method public setFromEmergecyDial(ZZZZ)V
    .locals 2
    .parameter "fromEmergencyDial"
    .parameter "isOnlyDefaultAvailable"
    .parameter "sIsTwoPaneMode"
    .parameter "sIsPhone"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 243
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->setFromEmergencyDial(ZZ)V

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->updateCustomSearchBarVisibility(Z)V

    .line 247
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->adjustLayoutPadding()V

    .line 252
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    .line 196
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 202
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1274
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1275
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 954
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFakeQueryStatus()I

    move-result v1

    .line 955
    .local v1, status:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isFakeQueryModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 964
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 960
    .local v0, size:I
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mUserProfileExists:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    sub-int/2addr v0, v3

    .line 961
    if-gez v0, :cond_1

    move v0, v2

    .line 962
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    .line 963
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Status;

    goto :goto_0

    :cond_2
    move v3, v2

    .line 960
    goto :goto_1
.end method

.method public showProgress(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 988
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    .line 991
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    .line 992
    return-void
.end method

.method public startCallIntentAndFinishActivity(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 931
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 932
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 934
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 936
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDial:Z

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    const-string v0, "GroupMemberBrowseListFragment"

    const-string v1, "no phone number"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startLoading()V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 387
    .local v0, adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isGroupInfoLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    .end local v0           #adapter:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startLoading()V

    goto :goto_0
.end method

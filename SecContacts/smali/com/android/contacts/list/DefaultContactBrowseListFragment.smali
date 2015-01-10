.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;
    }
.end annotation


# static fields
.field public static callPressed:Z

.field private static sIsMMSAvailable:Z

.field private static sIsPhone:Z

.field private static sIsTwoPaneMode:Z


# instance fields
.field private directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

.field private hasPermanentMenuKey:Z

.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mAlert:Landroid/app/AlertDialog;

.field private mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCount:I

.field private mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

.field private mContactsUnavailableView:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mCreateButton:Landroid/widget/ImageButton;

.field private mCustomSearchBarLayout:Landroid/view/View;

.field protected mCustomSearchMode:Z

.field protected mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field protected mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

.field private mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

.field private mDeleteHeaderView:Landroid/view/View;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayYellowPagesHeader:Z

.field private mEasymodeCreateButton:Landroid/view/View;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mIsEasyMode:Z

.field private mIsHugeFontMode:Z

.field private mListContentFrame:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/TextView;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mProviderStatus:I

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mShouldUpdateDeleteContactList:Z

.field private mShowActionbar:Z

.field private mSim2Name:Ljava/lang/String;

.field private mTotalContactsTextView:Landroid/widget/TextView;

.field private mTotalContactsView:Landroid/view/View;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mYellowPagesHeader:Landroid/view/View;

.field private popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 215
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 223
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    .line 264
    iput v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    .line 289
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 303
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    .line 339
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 355
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 358
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFakeQueryModeEnabled(Z)V

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setYellowPagesHeaderEnabled(Z)V

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 365
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldForceLoad()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    return p1
.end method

.method private addATTYellowPagesHeader(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f04000b

    .line 2973
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    .line 2974
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 2975
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 2978
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$15;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2994
    return-void
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f04014e

    .line 1828
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1829
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    .line 1830
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1831
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1833
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureListBackgound()V

    .line 1834
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 1835
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1836
    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f040184

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1870
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 1875
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 1876
    const v0, 0x7f040185

    invoke-virtual {p1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 1877
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f090354

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 1878
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f090353

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 1879
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1880
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1881
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1885
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 1887
    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    .line 1888
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1889
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1890
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 1891
    return-void
.end method

.method private addToVipList(Landroid/net/Uri;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2427
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 2428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 2431
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2432
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2433
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2437
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2438
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03b5

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2462
    :goto_1
    return-void

    .line 2439
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 2440
    if-eqz p2, :cond_3

    .line 2441
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0d03b4

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 2446
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x2

    const v3, 0x7f0d03b3

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 2452
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2453
    const-string v0, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2454
    const-string v2, "number"

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2455
    if-eqz p2, :cond_5

    .line 2456
    const-string v0, "list"

    const-string v2, "whitelist"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2458
    :cond_5
    const-string v0, "list"

    const-string v2, "blacklist"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private checkDeleteHeaderViewVisibility()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1458
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    :cond_1
    :goto_0
    return-void

    .line 1463
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkHeaderViewVisibility()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 1453
    return-void

    .line 1450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureAccountFilterView()V
    .locals 6

    .prologue
    .line 3103
    sget-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3104
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 3106
    .local v1, listView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 3107
    .local v0, leftPadding:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 3109
    .local v2, rightPadding:I
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3113
    .end local v0           #leftPadding:I
    .end local v1           #listView:Landroid/view/View;
    .end local v2           #rightPadding:I
    :cond_0
    return-void
.end method

.method private configureListBackgound()V
    .locals 2

    .prologue
    .line 1839
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 1841
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/AutoScrollListView;->setSelector(I)V

    .line 1843
    :cond_0
    return-void
.end method

.method private configureSearchView()V
    .locals 7

    .prologue
    .line 3065
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 3066
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    .line 3067
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 3068
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    .line 3069
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3071
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 3073
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 3075
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 3078
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v3, v2, v1

    .line 3079
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v2, v0, v1

    .line 3080
    sub-int v1, v5, v4

    .line 3081
    sub-int v0, v5, v4

    .line 3083
    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v5, :cond_3

    .line 3084
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3085
    add-int/lit8 v2, v2, 0xc

    .line 3097
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 3099
    :cond_1
    return-void

    .line 3087
    :cond_2
    add-int/lit8 v3, v3, 0xc

    goto :goto_0

    .line 3091
    :cond_3
    sub-int v1, v6, v4

    .line 3093
    sub-int v0, v6, v4

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 945
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 946
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 947
    .local v0, menu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const/high16 v2, 0x7f12

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 954
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 960
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 961
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 962
    return-void
.end method

.method private copyToDialingScreen(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2466
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 2469
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 2470
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0d0256

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    .line 2479
    :goto_0
    return-void

    .line 2475
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    const-string v6, "tel"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2476
    const-string v0, "withSpecialChar"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 3240
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    sget-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3244
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    .line 3246
    :cond_0
    return-void
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 2396
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2397
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v7

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 2400
    const-string v0, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 2402
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 2406
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2409
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2413
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2415
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    :cond_1
    if-eqz v0, :cond_2

    .line 2419
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2422
    :cond_2
    return-object v6
.end method

.method private isAllDeleteChecked()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2602
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 2603
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, 0x0

    .line 2604
    .local v1, checkedCount:I
    monitor-enter v0

    .line 2605
    :try_start_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v2

    .line 2607
    .local v2, cursorSize:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 2609
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2607
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2616
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2621
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2623
    .local v3, mId:J
    const-wide/16 v9, 0x0

    cmp-long v6, v3, v9

    if-eqz v6, :cond_0

    .line 2627
    add-int/lit8 v1, v1, 0x1

    .line 2629
    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2630
    monitor-exit v0

    .line 2634
    .end local v3           #mId:J
    :goto_1
    return v7

    .line 2633
    :cond_3
    monitor-exit v0

    .line 2634
    if-nez v1, :cond_4

    move v6, v7

    :goto_2
    move v7, v6

    goto :goto_1

    .line 2633
    .end local v2           #cursorSize:I
    .end local v5           #position:I
    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v2       #cursorSize:I
    .restart local v5       #position:I
    :cond_4
    move v6, v8

    .line 2634
    goto :goto_2
.end method

.method private isBlackListContact(J)Z
    .locals 7
    .parameter "contactId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2348
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryBlackList()Ljava/util/HashMap;

    move-result-object v3

    .line 2349
    .local v3, rejectCallHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 2351
    .local v2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2352
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2353
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2354
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_0
    move v4, v5

    .line 2363
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_1
    return v4

    :cond_1
    move v4, v5

    .line 2360
    goto :goto_1

    .line 2351
    .restart local v1       #phoneNumber:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 2363
    goto :goto_1
.end method

.method private isDeleteContactsInGroup()Z
    .locals 2

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3206
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v1, :cond_0

    .line 3207
    check-cast v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v1

    .line 3210
    :goto_0
    return v1

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDeleteAllChecked(Z)V
    .locals 9
    .parameter "isChecked"

    .prologue
    .line 2547
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v5

    .line 2548
    .local v5, isSearchMode:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 2550
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    if-nez v5, :cond_0

    .line 2551
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2552
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 2555
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v4

    .line 2556
    .local v4, cursorSize:I
    const/4 v6, 0x0

    .local v6, position:I
    :goto_0
    if-ge v6, v4, :cond_6

    .line 2557
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2556
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2563
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2568
    :cond_3
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2569
    .local v1, contactId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 2572
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 2574
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2575
    .local v3, contactUri:Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 2576
    if-eqz p1, :cond_4

    .line 2579
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2581
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2583
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2586
    :cond_5
    if-eqz p1, :cond_1

    .line 2587
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2591
    .end local v1           #contactId:J
    .end local v3           #contactUri:Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 2595
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v7, :cond_7

    .line 2596
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 2598
    :cond_7
    return-void
.end method

.method private queryBlackList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2367
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2368
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 2369
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v8

    const-string v0, "reject_checked"

    aput-object v0, v2, v7

    .line 2372
    const-string v0, "reject_match = 0"

    .line 2374
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2376
    if-eqz v0, :cond_2

    .line 2377
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 2378
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 2392
    :goto_0
    return-object v0

    .line 2382
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2384
    :cond_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2385
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 2392
    goto :goto_0
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3143
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3144
    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3146
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "data1"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3151
    if-eqz v0, :cond_0

    .line 3152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, v0

    .line 3157
    :cond_0
    :goto_0
    return-object v5

    .line 3155
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private selectContactForDelete(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2495
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 2496
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2498
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2530
    :cond_0
    :goto_0
    return-void

    .line 2504
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2509
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2510
    invoke-virtual {v0, p2, p3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 2511
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2512
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 2523
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 2527
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v2, :cond_0

    .line 2528
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    goto :goto_0

    .line 2515
    :cond_4
    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 2516
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2518
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2519
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private setCreateButtonVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/16 v0, 0x8

    .line 1470
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 1477
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomMenuButtonVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/16 v0, 0x8

    .line 1486
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_3

    .line 1493
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1496
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 2867
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 2869
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2870
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_1

    .line 2871
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2872
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2873
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2874
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->hideActionbar()V

    .line 2878
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2883
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-super {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 2886
    :cond_1
    return-void
.end method

.method private setDeleteModeLayout()V
    .locals 6

    .prologue
    const v4, 0x7f0c004b

    .line 1342
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    .line 1344
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1351
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1352
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1361
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 1366
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 1367
    return-void

    .line 1356
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 1358
    goto :goto_0
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f090381

    const v6, 0x7f090376

    const v5, 0x7f09037e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 967
    const v0, 0x7f09036e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    const v0, 0x7f090370

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    const v0, 0x7f09036f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    const v0, 0x7f09037c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 971
    const v0, 0x7f090383

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 972
    const v0, 0x7f090384

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 973
    const v0, 0x7f090385

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 974
    const v0, 0x7f090386

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 975
    const v0, 0x7f090372

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 976
    const v0, 0x7f090387

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 977
    const v0, 0x7f090388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 979
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 980
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 986
    :goto_0
    const v0, 0x7f090380

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_0

    .line 988
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableMenuStorageStatus"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 990
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 997
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    const v0, 0x7f090379

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1003
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 1007
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v3

    .line 1008
    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    .line 1009
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1014
    :cond_2
    :goto_3
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v0, :cond_3

    .line 1015
    const v0, 0x7f09037b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1016
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1018
    :cond_3
    const v0, 0x7f090389

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1020
    sget-boolean v0, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    if-eqz v0, :cond_8

    .line 1021
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    :goto_4
    return-void

    .line 982
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 992
    :cond_5
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1005
    goto :goto_2

    .line 1011
    :cond_7
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1023
    :cond_8
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private shouldForceLoad()Z
    .locals 3

    .prologue
    .line 3214
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, " shouldForceLoad() : selected tab is not gruop. bypass"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const/4 v0, 0x0

    .line 3224
    :goto_0
    return v0

    .line 3218
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    .line 3220
    const-string v0, "DefaultContactBrowseListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shouldForceLoad() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z

    goto :goto_0

    .line 3223
    :cond_1
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, " shouldForceLoad() : query right now"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 2483
    if-nez p1, :cond_0

    .line 2491
    :goto_0
    return-void

    .line 2486
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2487
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2489
    const-string v1, "intentFrom"

    const-string v2, "mainlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2490
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2849
    if-eqz p1, :cond_0

    .line 2850
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2851
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2856
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2857
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2863
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2856
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2857
    goto :goto_1

    .line 2861
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2
.end method

.method private updateFilterHeaderView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1506
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 1507
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1512
    :cond_0
    instance-of v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1517
    :cond_2
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1518
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-ne v1, v3, :cond_3

    .line 1519
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1523
    :cond_3
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-ne v1, v3, :cond_4

    .line 1524
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1527
    :cond_4
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_a

    .line 1530
    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 1531
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1534
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1535
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1539
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1567
    :cond_6
    :goto_1
    const-string v1, "primary.sim2.account_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1568
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 1569
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1574
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v0, :cond_b

    .line 1575
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .line 1576
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v0

    .line 1578
    :goto_3
    instance-of v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    .line 1579
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d007c

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1541
    :cond_7
    const-string v1, "primary.sim.account_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1545
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 1546
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1558
    :cond_8
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "primary.sim2.account_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1560
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim2Name:Ljava/lang/String;

    .line 1562
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSim2Name:Ljava/lang/String;

    goto/16 :goto_1

    .line 1583
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1587
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public EnableDeleteContactInGroupMode(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 1
    .parameter "groupInfo"

    .prologue
    .line 1336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 1337
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1338
    return-void
.end method

.method callContact(Landroid/database/Cursor;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3161
    .line 3164
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v5

    .line 3165
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3166
    :cond_0
    if-eqz v5, :cond_1

    .line 3167
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v3

    .line 3197
    :goto_0
    return v0

    .line 3170
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 3172
    const-string v0, "data1"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    .line 3185
    :goto_1
    if-nez v4, :cond_6

    .line 3186
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3187
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 3194
    :goto_2
    if-eqz v5, :cond_3

    .line 3195
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v2

    .line 3197
    goto :goto_0

    .line 3174
    :cond_4
    const/4 v0, -0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v0, v1

    .line 3175
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3176
    const-string v0, "lookup"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3177
    const-string v4, "is_super_primary"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 3179
    const-string v4, "data1"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3189
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    invoke-static {v6, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3190
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3191
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    move-object v4, v1

    goto :goto_1
.end method

.method public callSelection()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3132
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 3133
    .local v1, list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3134
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 3135
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 3140
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 3138
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callContact(Landroid/database/Cursor;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearCustomSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2890
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 2892
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 2893
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 2894
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    .line 2895
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 2897
    :cond_0
    return-void
.end method

.method public clearCustomSearchViewFocus()V
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 2909
    :cond_0
    return-void
.end method

.method protected clearFocusOnSoftKeyboard()V
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 533
    :cond_0
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 2915
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V

    .line 2917
    new-instance v1, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2920
    return-void
.end method

.method protected configureVerticalTwIndexScrollbar()V
    .locals 1

    .prologue
    .line 3052
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->configureVerticalTwIndexScrollbar()V

    .line 3055
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 3056
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 3058
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 3059
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteModeLayout()V

    .line 3061
    :cond_0
    return-void
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createCustomSearchbar()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09019d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    .line 757
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090169

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    .line 758
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090190

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    .line 759
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsEasyMode:Z

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09016a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    .line 762
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 763
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 807
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 809
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 810
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 811
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x6

    invoke-virtual {v0, v7, v2, v7, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 821
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 831
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 879
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 880
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_5

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 893
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSearchView()V

    .line 894
    return-void

    :cond_4
    move v0, v2

    .line 763
    goto/16 :goto_0

    .line 883
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteContactsInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    new-instance v0, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/DeleteContactsInGroupListAdapter;-><init>(Landroid/content/Context;)V

    .line 567
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 568
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 570
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setItemViewLayerTypeSoftware(Z)V

    .line 571
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    .line 575
    :cond_0
    return-object v0

    .line 564
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_1
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .restart local v0       #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    goto :goto_0
.end method

.method public forceSetDeleteMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1421
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_2

    .line 1422
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 1424
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 1426
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 1427
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    .line 1428
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 1430
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v1, :cond_3

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1432
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    .line 1433
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    .line 1437
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v1, :cond_1

    .line 1438
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 1442
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1443
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v4, :cond_6

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1446
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_2
    return-void

    .restart local v0       #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_3
    move v1, v3

    .line 1430
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1432
    goto :goto_1

    :cond_5
    move v1, v3

    .line 1433
    goto :goto_2

    :cond_6
    move v2, v3

    .line 1443
    goto :goto_3
.end method

.method public getContactItemCount()I
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    return v0
.end method

.method public getSearchViewQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    .line 581
    const v0, 0x7f0400de

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040066

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isSearching()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3249
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 3253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1156
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onRestoreSavedState(Landroid/os/Bundle;)V

    .line 1158
    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->forceSetDeleteMode()V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 1167
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 900
    sparse-switch p1, :sswitch_data_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 904
    :sswitch_0
    if-ne p2, v6, :cond_0

    .line 905
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 908
    .local v5, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "smsto"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 909
    .local v4, phoneUri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 910
    const-string v6, "sendto"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 917
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #phoneUri:Landroid/net/Uri;
    .end local v5           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1
    if-ne p2, v6, :cond_0

    .line 918
    const-string v6, "result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 920
    .restart local v5       #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 921
    .local v3, output:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 922
    const-string v6, ""

    aput-object v6, v3, v1

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 928
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 929
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "DefaultContactBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 900
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1171
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 1174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    new-instance v1, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-direct {v1, p1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 1181
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    .line 1182
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    .line 1183
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    .line 1184
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hasPermanentMenuKey:Z

    .line 1186
    const-string v1, "DefaultContactBrowseListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsMMSAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    instance-of v1, p1, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v1, :cond_1

    .line 1189
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setForceReverseFastScrollBarPositionEnabled(Z)V

    .line 1195
    :cond_1
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1196
    return-void

    .line 1195
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v3, v2

    .line 2344
    :cond_0
    :goto_0
    return v3

    .line 2194
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-eqz v0, :cond_3

    .line 2198
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2199
    iput-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlert:Landroid/app/AlertDialog;

    .line 2200
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->findLinkedEntriesFromLookupURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->isAutoUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0402

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0407

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$13;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$13;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlert:Landroid/app/AlertDialog;

    .line 2215
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 2216
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2222
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->editContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2227
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2228
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto/16 :goto_0

    .line 2232
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2233
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2237
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2239
    const-string v2, "CONTACT_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2240
    const-string v0, "mode"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2241
    const-string v0, "direct_launch"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2242
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2246
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 2250
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2251
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "hasPhoneNumber"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2252
    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    move-result-object v2

    .line 2256
    if-eqz v2, :cond_0

    .line 2260
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2261
    const-string v5, "android.intent.extra.CONTACT_ID"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2263
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v5, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2265
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v5, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2267
    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    iget-boolean v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2269
    const-string v0, "hasPhoneNumber"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2270
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2275
    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2278
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2282
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 2284
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 2285
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2286
    if-eqz v0, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2287
    :cond_4
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "invalid number"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0435

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2284
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2292
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2295
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "isBlackListContact"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2299
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->shouldShowAddToRejectListTips(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2301
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v1, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v4, v5, v0, v2}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 2304
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v1, :cond_a

    move v2, v3

    :cond_a
    invoke-static {v4, v0, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_0

    .line 2312
    :pswitch_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2313
    invoke-direct {p0, v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 2317
    :pswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2318
    invoke-direct {p0, v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 2322
    :pswitch_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2323
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->copyToDialingScreen(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2328
    :pswitch_a
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d024d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2336
    :pswitch_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2337
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2338
    const-string v2, "CONTACT_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2339
    const-string v0, "mode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2340
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2191
    :pswitch_data_0
    .packed-switch 0x7f090399
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1896
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v2, :cond_1

    .line 1897
    invoke-super/range {p0 .. p3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    .line 1902
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1903
    if-nez p3, :cond_2

    .line 1904
    const-string v2, "DefaultContactBrowseListFragment"

    const-string v3, "info == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1908
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1910
    move-object/from16 v0, p3

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v8, v3, v4

    .line 1914
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1918
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 1919
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v10

    .line 1920
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isContactWritable(I)Z

    move-result v11

    .line 1921
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v3

    .line 1922
    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    .line 1924
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1926
    :cond_3
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_4
    const/4 v4, 0x1

    .line 1927
    :goto_2
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1928
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x1

    .line 1943
    :cond_5
    :goto_3
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isSim2Contact(I)Z

    move-result v12

    .line 1944
    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    .line 1948
    :goto_4
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isUserProfile(I)Z

    move-result v13

    .line 1949
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v14

    .line 1950
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v15

    .line 1951
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v13, :cond_11

    const/4 v6, 0x1

    .line 1955
    :goto_5
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v7

    .line 1956
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getUnknownNameText()Ljava/lang/CharSequence;

    move-result-object v7

    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 1960
    const v16, 0x7f120005

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v7

    .line 1964
    if-eqz v11, :cond_12

    if-nez v3, :cond_12

    .line 1965
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1966
    const v17, 0x7f090399

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1983
    :goto_6
    if-nez v3, :cond_16

    .line 1984
    if-eqz v6, :cond_15

    .line 1985
    const v3, 0x7f09039a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2009
    :goto_7
    if-nez v13, :cond_1a

    .line 2010
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2011
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2013
    const v5, 0x7f09039b

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v4, :cond_19

    if-nez v12, :cond_19

    const/4 v3, 0x1

    :goto_8
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2023
    :goto_9
    if-eqz v11, :cond_1b

    if-nez v13, :cond_1b

    if-eqz v14, :cond_1b

    if-nez v7, :cond_1b

    .line 2024
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2025
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2026
    const v5, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2032
    :goto_a
    if-nez v13, :cond_1e

    .line 2033
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2034
    const v3, 0x7f09039d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0d002f

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2036
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_b
    invoke-static {v5, v9, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 2039
    const v5, 0x7f09039d

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v4, :cond_1d

    if-nez v12, :cond_1d

    const/4 v3, 0x1

    :goto_c
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2049
    :goto_d
    if-nez v13, :cond_23

    .line 2050
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2051
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2052
    const-string v3, "hasPhoneNumber"

    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2053
    if-nez v4, :cond_8

    if-eqz v12, :cond_1f

    :cond_8
    const/4 v3, 0x1

    .line 2055
    :goto_e
    if-eqz v3, :cond_21

    .line 2056
    const v3, 0x7f09039e

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v4, :cond_20

    if-nez v12, :cond_20

    const/4 v3, 0x1

    :goto_f
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2072
    :goto_10
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v3

    if-eqz v3, :cond_26

    if-nez v13, :cond_26

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Contact_DisableMenuAddToRejectList"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2075
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isBlackListContact(J)Z

    move-result v3

    .line 2077
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2081
    const v5, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0d03be

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2087
    :cond_9
    :goto_11
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2088
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2089
    const-string v6, "isBlackListContact"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2091
    const v3, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v4, :cond_25

    if-nez v12, :cond_25

    if-eqz v15, :cond_25

    const/4 v3, 0x1

    :goto_12
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2101
    :goto_13
    const v3, 0x7f0903a0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2102
    if-eqz v3, :cond_a

    .line 2103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2105
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v13, :cond_27

    .line 2106
    const v4, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2107
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2108
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2109
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2118
    :cond_a
    :goto_14
    const v3, 0x7f0903a1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2119
    if-eqz v3, :cond_b

    .line 2120
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2122
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez v13, :cond_29

    .line 2123
    const v4, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2124
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2125
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2126
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2136
    :cond_b
    :goto_15
    const v3, 0x7f0903a2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2137
    if-eqz v3, :cond_c

    .line 2138
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2140
    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    if-nez v13, :cond_2b

    .line 2141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2142
    const-string v4, "withSpecialChar"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2143
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2144
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2155
    :cond_c
    :goto_16
    if-eqz v11, :cond_2d

    if-nez v13, :cond_2d

    if-nez v7, :cond_2d

    .line 2156
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2158
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2159
    const-string v4, "text/x-vcard"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2160
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0d024d

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v2

    .line 2165
    const v3, 0x7f0903a3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2171
    :goto_17
    if-eqz v11, :cond_2e

    if-nez v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMobilePrintSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2172
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2173
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2174
    const v3, 0x7f0903a4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2179
    :goto_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_AddExtMobilePrint"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Epson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2182
    const v2, 0x7f0903a4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1922
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1926
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1928
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1944
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1951
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1969
    :cond_12
    if-eqz v11, :cond_13

    if-nez v5, :cond_13

    if-eqz v12, :cond_13

    .line 1970
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1971
    const v17, 0x7f090399

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1972
    :cond_13
    if-eqz v11, :cond_14

    if-nez v3, :cond_14

    if-eqz v4, :cond_14

    .line 1973
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1974
    const v17, 0x7f090399

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1976
    :cond_14
    const v16, 0x7f090399

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1987
    :cond_15
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1988
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1989
    const v5, 0x7f09039a

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1993
    :cond_16
    if-nez v5, :cond_17

    if-eqz v12, :cond_17

    .line 1994
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1995
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1996
    const v5, 0x7f09039a

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1997
    :cond_17
    if-nez v3, :cond_18

    if-eqz v4, :cond_18

    .line 1998
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1999
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2000
    const v5, 0x7f09039a

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 2002
    :cond_18
    const v3, 0x7f09039a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 2013
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 2019
    :cond_1a
    const v3, 0x7f09039b

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 2028
    :cond_1b
    const v3, 0x7f09039c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 2036
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 2039
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 2045
    :cond_1e
    const v3, 0x7f09039d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 2053
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 2056
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 2059
    :cond_21
    const v3, 0x7f09039e

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v8}, Lcom/android/contacts/list/ContactListAdapter;->isGooglePlusAccount(I)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    :goto_19
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    :cond_22
    const/4 v3, 0x0

    goto :goto_19

    .line 2068
    :cond_23
    const v3, 0x7f09039e

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 2083
    :cond_24
    if-eqz v3, :cond_9

    .line 2084
    const v5, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0d0329

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 2091
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 2097
    :cond_26
    const v3, 0x7f09039f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_13

    .line 2111
    :cond_27
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 2114
    :cond_28
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 2128
    :cond_29
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 2131
    :cond_2a
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 2147
    :cond_2b
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_16

    .line 2150
    :cond_2c
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_16

    .line 2167
    :cond_2d
    const v2, 0x7f0903a3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_17

    .line 2176
    :cond_2e
    const v2, 0x7f0903a4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090348

    const/4 v2, 0x0

    .line 588
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    .line 598
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09019e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    .line 605
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090349

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    .line 607
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09019f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    .line 609
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090249

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    .line 612
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 613
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEasymodeCreateButton:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09016b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 652
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0901a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    .line 653
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0901a0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 655
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090354

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 658
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureAccountFilterView()V

    .line 661
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 665
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_3

    .line 666
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addATTYellowPagesHeader(Landroid/view/LayoutInflater;)V

    .line 673
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 674
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 676
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 679
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, footerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f040182

    invoke-virtual {p1, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    .line 682
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    const v3, 0x7f09030b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    .line 683
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 686
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 688
    new-instance v1, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v1}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 692
    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_5

    .line 696
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v3, 0x7f09034e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v3, 0x7f09034f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v1, :cond_6

    .line 721
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v3, 0x7f090347

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 724
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    :cond_6
    return-void

    .end local v0           #footerContainer:Landroid/widget/FrameLayout;
    :cond_7
    move v1, v2

    .line 613
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 3235
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onDestroy()V

    .line 3236
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dismissProgressDialog()V

    .line 3237
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 11
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 476
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f04014e

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 479
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDeleteAllChecked(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 515
    :sswitch_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 516
    .local v8, ypIntent:Landroid/content/Intent;
    const-string v0, "com.sec.android.app.yp"

    const-string v1, "com.sec.android.app.yp.CategoriesActivity"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 485
    .end local v8           #ypIntent:Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "is_user_profile"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 488
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 489
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01d9

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 491
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 494
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_3
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    .local v7, intent:Landroid/content/Intent;
    const/high16 v0, 0x2400

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    const-string v0, "newLocalProfile"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    const-string v0, "com.android.jcontacts"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 495
    .end local v7           #intent:Landroid/content/Intent;
    :cond_5
    if-eqz v6, :cond_3

    .line 496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 483
    :sswitch_data_0
    .sparse-switch
        0x7f04000b -> :sswitch_0
        0x7f040184 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2930
    .line 2932
    if-nez p3, :cond_0

    .line 2964
    :goto_0
    return-void

    .line 2936
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2939
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2940
    const-string v1, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2941
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2946
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2947
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2948
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2949
    const-string v1, "list"

    const-string v2, "whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2954
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2955
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2956
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2957
    const-string v1, "list"

    const-string v2, "blacklist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2958
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2936
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->selectContactForDelete(IJ)V

    .line 556
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 2969
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 3117
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 3118
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dismissProgressDialog()V

    .line 3119
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    if-eqz v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;->onContactDataChanged(Z)V

    .line 3121
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 2640
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 2642
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    .line 2643
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 2645
    :cond_0
    return-void

    .line 2643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1139
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "VoLTEStateTracker : stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/android/contacts/VoLTEStateTracker;->stopTracking()V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1148
    :cond_1
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1149
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1151
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPause()V

    .line 1152
    return-void
.end method

.method public onRestoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1200
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 1201
    if-nez p1, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1206
    :cond_0
    const-string v0, "deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    .line 1207
    const-string v0, "deleteIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    .line 1208
    const-string v0, "deleteUris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 1209
    const-string v0, "customSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    .line 1210
    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    .line 1211
    const-string v0, "showActionbar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1030
    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onResume()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1035
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchMode(Z)V

    .line 1037
    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1040
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    .line 1042
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    if-nez v0, :cond_8

    .line 1043
    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1050
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 1052
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1056
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setVoLTEEnabled(Z)V

    .line 1060
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "VoLTEStateTracker : startTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$11;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1072
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1073
    const-string v1, "huge_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1074
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1075
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f11004c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1078
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1091
    const-string v1, "huge_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    .line 1092
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f11004c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1097
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1110
    :cond_6
    :goto_2
    sput-boolean v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    .line 1113
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 1117
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1119
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v0, :cond_b

    .line 1121
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 1132
    :cond_7
    :goto_3
    return-void

    .line 1045
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    goto/16 :goto_0

    .line 1080
    :cond_9
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    .line 1081
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "ClassCastException occurs."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1099
    :cond_a
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsHugeFontMode:Z

    .line 1100
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1101
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1105
    :catch_1
    move-exception v0

    .line 1106
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "ClassCastException occurs."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1126
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1216
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1219
    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1220
    const-string v0, "deleteUris"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1221
    const-string v0, "deleteIds"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1222
    const-string v0, "customSearchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1223
    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v0, "showActionbar"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1225
    return-void
.end method

.method public queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2658
    new-instance v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    invoke-direct {v6, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 2661
    :try_start_0
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2662
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2666
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2668
    :cond_0
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2669
    iget-object v1, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    :cond_1
    const-string v1, "com.google"

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2673
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    .line 2675
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2677
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2679
    iget-object v0, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2681
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    .line 2683
    :goto_0
    iget-object v0, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2684
    if-nez v1, :cond_4

    .line 2685
    const-string v0, " ( _id = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    :goto_1
    iget-object v0, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2687
    :cond_4
    const-string v0, " OR _id = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2705
    :catch_0
    move-exception v0

    .line 2706
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v1, "Exception occurs at queryForAddToGroup(), return null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 2710
    :goto_2
    return-object v0

    .line 2692
    :cond_5
    :try_start_1
    const-string v0, " ) "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "title"

    aput-object v8, v2, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2698
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2700
    :cond_6
    iget-object v1, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2703
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move-object v0, v6

    .line 2710
    goto :goto_2
.end method

.method public requestDeleteContacts()V
    .locals 3

    .prologue
    .line 2534
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2535
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$14;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 2541
    .local v0, listener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V

    .line 2543
    .end local v0           #listener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public setAccountFilterHeaderClickabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 3030
    return-void
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3005
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eq v0, p1, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 3007
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 3008
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 3009
    if-eqz p1, :cond_1

    .line 3010
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    const v4, 0x7f0205a2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3012
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3020
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3021
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3023
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    .line 3025
    :cond_0
    return-void

    .line 3015
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    const v4, 0x7f0205a1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3017
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setContactsUnavailableViewVisible(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f090350

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2785
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2792
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2793
    if-eqz p1, :cond_6

    .line 2794
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2795
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2801
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2802
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2804
    if-eqz v0, :cond_2

    .line 2805
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2814
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2816
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2817
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-nez p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2818
    if-eqz p1, :cond_3

    .line 2819
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2823
    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_0

    .line 2824
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2825
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2828
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v4, 0x7f09034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2830
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v5, 0x7f09034b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2833
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 2834
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2835
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2838
    :cond_4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    .line 2839
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2798
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    .line 2809
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 2814
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 2816
    goto :goto_4

    :cond_9
    move v0, v2

    .line 2817
    goto :goto_5

    .line 2841
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setContactsUnavailableViewVisible(ZZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f090350

    const/16 v4, 0x30

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 2715
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2782
    :cond_0
    :goto_0
    return-void

    .line 2722
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2723
    if-eqz p1, :cond_7

    .line 2724
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2725
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2731
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2732
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2734
    if-eqz v0, :cond_2

    .line 2735
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2743
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2744
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 2746
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2751
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2753
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz p1, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2754
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-nez p1, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2755
    if-eqz p1, :cond_4

    .line 2756
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2760
    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_0

    .line 2761
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2762
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2765
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v4, 0x7f09034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2767
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    const v5, 0x7f09034b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2770
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 2771
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2772
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2775
    :cond_5
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 2776
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2728
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    .line 2739
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 2751
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 2753
    goto :goto_4

    :cond_a
    move v0, v2

    .line 2754
    goto :goto_5

    .line 2778
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setCustomSearchBarVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setDataChangeListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDataChangeListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;

    .line 3125
    return-void
.end method

.method public setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2925
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    .line 2926
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1281
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eq v1, p1, :cond_4

    .line 1282
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    .line 1284
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v1, :cond_5

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1285
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactListAdapter;->setQuickContactEnabled(Z)V

    .line 1288
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/list/ContactListAdapter;->setCheckBoxAnimationStartTimeMilis(J)V

    .line 1291
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 1293
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1294
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1296
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1300
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsListener:Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;->onSelectedCountChanged(I)V

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1306
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mYellowPagesHeader:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    .line 1311
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 1314
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    .line 1315
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 1316
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDeleteMode(Z)V

    .line 1318
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    .line 1319
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_b

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1322
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    .line 1323
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_3

    .line 1324
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->clearParitionsForDeleteMode()V

    .line 1328
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 1331
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteModeLayout()V

    .line 1333
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 1284
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 1285
    goto/16 :goto_1

    :cond_7
    move v4, v3

    .line 1286
    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 1306
    goto :goto_3

    :cond_9
    move v1, v3

    .line 1311
    goto :goto_4

    .restart local v0       #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :cond_a
    move v1, v3

    .line 1318
    goto :goto_5

    :cond_b
    move v2, v3

    .line 1319
    goto :goto_6
.end method

.method public setEasyMode(Z)V
    .locals 0
    .parameter "IsEasyMode"

    .prologue
    .line 1268
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsEasyMode:Z

    .line 1269
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 1501
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1502
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 1503
    return-void
.end method

.method protected setProfileHeader()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1816
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    .line 1817
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1820
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1823
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1824
    return-void

    :cond_0
    move v0, v2

    .line 1817
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1820
    goto :goto_1
.end method

.method public setProviderStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3257
    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    if-eq v0, p1, :cond_0

    .line 3258
    iput p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    .line 3260
    :cond_0
    return-void
.end method

.method public setRcsEnable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3035
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3037
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 3038
    if-eqz v0, :cond_0

    .line 3039
    if-eqz p1, :cond_1

    .line 3040
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->activateRcsPinner(Z)V

    .line 3041
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->resume()V

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 3043
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->activateRcsPinner(Z)V

    .line 3044
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->pause()V

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v3, 0x2

    .line 1229
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1230
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1236
    .local v1, config:Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-nez v2, :cond_5

    .line 1237
    if-eqz p1, :cond_3

    .line 1238
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    .line 1239
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1240
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->hideActionbar()V

    .line 1264
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1248
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    .line 1250
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1

    .line 1251
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1253
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1

    .line 1257
    :cond_5
    iget-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-eqz v2, :cond_2

    .line 1258
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_2

    .line 1259
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isShowingActionbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1260
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    goto :goto_1
.end method

.method public setShowActionbar(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 3229
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    .line 3230
    return-void
.end method

.method protected setYellowPagesHeaderEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2998
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    if-eq v0, p1, :cond_0

    .line 2999
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDisplayYellowPagesHeader:Z

    .line 3001
    :cond_0
    return-void
.end method

.method public shouldShowCustomSearchResult()Z
    .locals 1

    .prologue
    .line 2901
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1593
    if-nez p2, :cond_3

    .line 1594
    const-string v0, "DefaultContactBrowseListFragment"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    if-eqz v0, :cond_18

    .line 1602
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .line 1603
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v0

    .line 1606
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v0, :cond_e

    .line 1608
    invoke-direct {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1610
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1613
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    sub-int v0, v2, v0

    .line 1614
    if-gez v0, :cond_5

    move v2, v3

    .line 1615
    :goto_3
    if-eqz v2, :cond_7

    .line 1617
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_1

    .line 1618
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1623
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1626
    :try_start_0
    const-string v1, "only_phones"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1628
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    :goto_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_5
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    :cond_2
    :goto_6
    return-void

    .line 1595
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    .line 1597
    const-string v0, "DefaultContactBrowseListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready to display : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 1613
    goto :goto_2

    :cond_5
    move v2, v0

    .line 1614
    goto :goto_3

    .line 1631
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5

    .line 1656
    :cond_7
    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_9

    .line 1657
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearAnimation()V

    .line 1658
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    .line 1659
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsPhone:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsMMSAvailable:Z

    if-eqz v0, :cond_c

    :cond_8
    move v0, v1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    .line 1663
    :cond_9
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_a

    .line 1664
    invoke-virtual {p0, v1, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1667
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProviderStatus:I

    if-ne v0, v5, :cond_b

    .line 1669
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShowActionbar:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_8
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1671
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_c
    move v0, v3

    .line 1659
    goto :goto_7

    :cond_d
    move v0, v3

    .line 1669
    goto :goto_8

    .line 1722
    :cond_e
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_f

    .line 1723
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1727
    :cond_f
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 1728
    if-eqz v0, :cond_2

    .line 1734
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1736
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1740
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_11

    .line 1741
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1791
    :cond_11
    :goto_9
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1798
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1799
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    if-eqz p2, :cond_2

    .line 1801
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_17

    .line 1802
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>CONTACT_FOUND : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1744
    :cond_12
    :try_start_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f09030b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1746
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v4, 0x7f09014c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1749
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 1750
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1754
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v4, :cond_13

    .line 1755
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1758
    :cond_13
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1760
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1761
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1762
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1765
    :cond_14
    const v0, 0x7f0d01b8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1766
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1767
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_9

    .line 1788
    :catch_1
    move-exception v0

    goto/16 :goto_9

    .line 1770
    :cond_15
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1771
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 1772
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    .line 1773
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showNoMatchesView(Z)V

    .line 1776
    :cond_16
    const v0, 0x7f0d0302

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1777
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1778
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1779
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v4, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1781
    const/16 v2, 0x2d

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 1785
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_3
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 1805
    :cond_17
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>CONTACT_NOT_FOUND : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_18
    move v0, v3

    goto/16 :goto_1
.end method

.method protected showEmptyUserProfile(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1852
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1853
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1854
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1855
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1856
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1857
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1858
    return-void

    :cond_0
    move v0, v2

    .line 1852
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1853
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1854
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1855
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1856
    goto :goto_4

    :cond_5
    move v1, v2

    .line 1857
    goto :goto_5
.end method

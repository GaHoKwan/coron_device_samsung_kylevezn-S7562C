.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;
.implements Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$5;,
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field public static mIsAvailableMyNetwork:Z

.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAabHandler:Landroid/os/Handler;

.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mBrowserView:Landroid/view/View;

.field mChangeViewMenu:Landroid/view/MenuItem;

.field private mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

.field private mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentOrientationmode:I

.field mDeleteFavoritesMenu:Landroid/view/MenuItem;

.field private mDetailsView:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableAnimation:Z

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFinished:Z

.field private mFragmentInitialized:Z

.field private mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsEasyMode:Z

.field mIsFavoriteListEmpty:Z

.field private mIsFromPhoneApp:Z

.field private mIsMultiWindow:Z

.field private mIsMultiWindowSupported:Z

.field private mIsPhone:Z

.field private mIsRecreatedInstance:Z

.field private mIsUsingTwoPanes:Z

.field private mLaunchedAccountPrompt:Ljava/lang/Boolean;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field mMultipleDeleteMenu:Landroid/view/MenuItem;

.field private mOnlineSearchMode:I

.field private mOptionsMenuContactsAvailable:Z

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field mSelectedFavoriteUri:Landroid/net/Uri;

.field private mSkipAnimationAdapter:Z

.field mStartSubscriberInfoChecker:Ljava/lang/Runnable;

.field private mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

.field private mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 214
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFinished:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableAnimation:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mSkipAnimationAdapter:Z

    .line 253
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 269
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    .line 271
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    .line 275
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    .line 277
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 279
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 316
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 4033
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$4;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    .line 4041
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    .line 401
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 402
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 403
    new-instance v0, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 404
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 405
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 406
    return-void
.end method

.method private OnlineSearchModeChanged()Z
    .locals 2

    .prologue
    .line 1224
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 1225
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 1227
    const/4 v0, 0x1

    .line 1229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->startSubscriberInfoChecker()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 422
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private checkLockScreenOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4054
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4056
    if-eqz v0, :cond_1

    .line 4057
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4058
    const/4 v0, 0x1

    .line 4063
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 4060
    goto :goto_0

    :cond_1
    move v0, v1

    .line 4063
    goto :goto_0
.end method

.method private configureContactListFragment()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1749
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v3

    .line 1752
    .local v0, showSearchResult:Z
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 1755
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    .line 1759
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 1760
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    .line 1763
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "easy_mode_switch"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 1764
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    .line 1774
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1775
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 1776
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 1792
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 1794
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v4

    if-nez v4, :cond_c

    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 1795
    return-void

    .end local v0           #showSearchResult:Z
    :cond_3
    move v0, v2

    .line 1749
    goto :goto_0

    .line 1769
    .restart local v0       #showSearchResult:Z
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1775
    goto :goto_2

    :cond_6
    move v1, v4

    .line 1776
    goto :goto_3

    .line 1779
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1781
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_a

    .line 1782
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hideTwIndexScrollbar()V

    .line 1788
    :goto_6
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v5, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalTwIndexScrollbarPosition(I)V

    goto :goto_4

    .line 1783
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 1784
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hideTwIndexScrollbar()V

    goto :goto_6

    .line 1786
    :cond_b
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showTwIndexScrollbar()V

    goto :goto_6

    :cond_c
    move v3, v2

    .line 1794
    goto :goto_5
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1716
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 1717
    .local v0, contactUri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1721
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1724
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 1729
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    if-nez v1, :cond_3

    .line 1731
    iput v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 1737
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1738
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 1743
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1744
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1746
    :cond_2
    return-void

    .line 1734
    :cond_3
    iput v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    goto :goto_0

    .line 1740
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_1
.end method

.method private configureFavoriteListFragment()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectionVisible(Z)V

    .line 1804
    return-void
.end method

.method private configureFragments(Z)V
    .locals 6
    .parameter "fromRequest"

    .prologue
    .line 1067
    if-eqz p1, :cond_4

    .line 1068
    const/4 v1, 0x0

    .line 1069
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 1070
    .local v0, actionCode:I
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    .line 1071
    .local v2, searchMode:Z
    const/4 v3, -0x1

    .line 1072
    .local v3, tabToOpen:I
    sparse-switch v0, :sswitch_data_0

    .line 1101
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1103
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v4, :cond_6

    .line 1104
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1105
    const/4 v3, 0x1

    .line 1113
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 1116
    :cond_1
    if-eqz v1, :cond_2

    .line 1117
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 1118
    const/4 v2, 0x0

    .line 1121
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1122
    const/4 v2, 0x0

    .line 1125
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1126
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    .line 1129
    .end local v0           #actionCode:I
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v2           #searchMode:Z
    .end local v3           #tabToOpen:I
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    .line 1130
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    .line 1131
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureFavoriteListFragment()V

    .line 1133
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1134
    return-void

    .line 1074
    .restart local v0       #actionCode:I
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    .restart local v2       #searchMode:Z
    .restart local v3       #tabToOpen:I
    :sswitch_0
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1076
    const/4 v3, 0x3

    .line 1077
    goto :goto_0

    .line 1079
    :sswitch_1
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 1081
    const/4 v3, 0x3

    .line 1082
    goto :goto_0

    .line 1087
    :sswitch_2
    const/4 v3, 0x2

    .line 1088
    goto :goto_0

    .line 1093
    :sswitch_3
    const/4 v3, 0x3

    .line 1094
    goto :goto_0

    .line 1096
    :sswitch_4
    const/4 v3, 0x1

    goto :goto_0

    .line 1107
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1110
    :cond_6
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-nez v4, :cond_0

    .line 1111
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1072
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureListPadding(Z)V

    .line 1799
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    .line 1800
    return-void
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 3964
    .local p0, listMembers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 3965
    .local v2, size:I
    new-array v1, v2, [J

    .line 3966
    .local v1, membersArray:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3967
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 3966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3969
    :cond_0
    return-object v1
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0902b7

    .line 724
    const v0, 0x7f04012f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 726
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 730
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 733
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 734
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_6

    .line 735
    const v0, 0x7f0902bf

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 736
    const v0, 0x7f0902bd

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 737
    const v0, 0x7f0902be

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 738
    const v0, 0x7f0902c0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    .line 786
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 787
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEasyMode(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDataChangeListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    .line 798
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 799
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 800
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 801
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 804
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_4

    .line 808
    const v0, 0x7f0902c1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    .line 809
    const v0, 0x7f0902b8

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    .line 813
    const v0, 0x7f09023b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 814
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 816
    const v0, 0x7f0902c4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 817
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V

    .line 820
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 821
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 823
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 830
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 833
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f09010c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 836
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f0902c3

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 840
    :cond_4
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 841
    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 844
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 847
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;ZZ)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 849
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 852
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_5

    .line 853
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    const v1, 0x7f0902bb

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0902b9

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0902c2

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0902ba

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f090232

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v1, 0x7f0902bc

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v1, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .line 858
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->initialize(Landroid/os/Bundle;)V

    .line 863
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 876
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 877
    return-void

    .line 740
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    .line 741
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    .line 742
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V

    .line 743
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 745
    const-string v0, "tab-pager-favorite"

    .line 746
    const-string v0, "tab-pager-all"

    .line 747
    const-string v0, "tab-pager-groups"

    .line 748
    const-string v0, "tab-pager-yellowpage"

    .line 758
    const-string v0, "tab-pager-favorite"

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 760
    const-string v0, "tab-pager-all"

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 762
    const-string v0, "tab-pager-groups"

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 765
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    const-string v0, "tab-pager-yellowpage"

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    .line 769
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 771
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 772
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 774
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 775
    new-instance v0, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    .line 777
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {v8, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 778
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {v8, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 779
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v1, "tab-pager-groups"

    invoke-virtual {v8, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 781
    const-string v0, ""

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    const-string v1, "tab-pager-yellowpage"

    invoke-virtual {v8, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0
.end method

.method private deleteSelectedContact()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 3688
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v6, :cond_0

    .line 3689
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    .line 3691
    .local v3, list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 3692
    .local v2, headerViewCount:I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    .line 3694
    .local v4, position:I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ge v4, v2, :cond_1

    .line 3703
    .end local v2           #headerViewCount:I
    .end local v3           #list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .end local v4           #position:I
    :cond_0
    :goto_0
    return v5

    .line 3696
    .restart local v2       #headerViewCount:I
    .restart local v3       #list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .restart local v4       #position:I
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 3697
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    sub-int v6, v4, v2

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 3699
    .local v1, contactUri:Landroid/net/Uri;
    invoke-static {p0, v1, v5}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 3701
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getClassNameOfTopActivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4073
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4074
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 4075
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4077
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 2517
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 2520
    :cond_0
    return-void
.end method

.method private isFDNEnabled()Z
    .locals 2

    .prologue
    .line 4158
    const/4 v0, 0x0

    .line 4160
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 4162
    if-eqz v1, :cond_0

    .line 4163
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4166
    :cond_0
    :goto_0
    return v0

    .line 4164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1217
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processIntent(Z)Z
    .locals 5
    .parameter "forNewIntent"

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 696
    const-string v2, "PeopleActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processIntent: forNewIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    .line 720
    :goto_0
    return v1

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 706
    .local v0, redirect:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 708
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    const/16 v3, 0x8c

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v2, :cond_3

    .line 713
    new-instance v0, Landroid/content/Intent;

    .end local v0           #redirect:Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    .restart local v0       #redirect:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 719
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 720
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setCustomUnavailableViewForEachTab(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1925
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 1928
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1929
    const v3, 0x7f0900c1

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1931
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1932
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 1935
    :cond_0
    if-eqz v3, :cond_1

    .line 1936
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_2

    .line 1939
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1944
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_4

    .line 1945
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    .line 1946
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1976
    :cond_3
    :goto_0
    return-void

    .line 1950
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1951
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 1958
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_6

    .line 1959
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyStatePhoto()V

    .line 1963
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_3

    .line 1964
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyStatePhoto()V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1951
    goto :goto_1

    .line 1968
    :cond_8
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_9

    .line 1969
    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    .line 1971
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_2
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1713
    return-void
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 1149
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1150
    return-void
.end method

.method private setupFavoriteDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 1154
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1155
    return-void
.end method

.method private setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 1
    .parameter "groupInfo"
    .parameter "isAutoAdd"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setAutoAdd(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1161
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 1163
    :cond_0
    return-void
.end method

.method private showEmptyStateForTab(I)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f0d0069

    const/4 v0, -0x1

    .line 1468
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    .line 1469
    packed-switch p1, :pswitch_data_0

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1471
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 1475
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0d006b

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d006c

    goto :goto_1

    .line 1479
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 1482
    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startSubscriberInfoChecker()V
    .locals 3

    .prologue
    .line 4046
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/contacts/aab/activity/SubscriberInfoCheckerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4047
    const-string v1, "isValidSubscriberResponse"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4048
    const-string v1, "PeopleActivity"

    const-string v2, "startActivity: SubscriberInfoCheckerActivity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 4050
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v5

    .line 1240
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->OnlineSearchModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1242
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1246
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_d

    .line 1247
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1251
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1252
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1273
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1274
    invoke-direct {p0, v5}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 1278
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1280
    if-eq v5, v4, :cond_a

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1281
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setRcsEnable(Z)V

    .line 1286
    :cond_2
    :goto_1
    if-ne v5, v1, :cond_3

    .line 1287
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1290
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearching()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1293
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {v3, v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 1298
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1300
    if-eq v5, v1, :cond_5

    .line 1301
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissAlertDialog()V

    .line 1304
    :cond_5
    if-ne v5, v7, :cond_6

    .line 1305
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1306
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 1307
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1308
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1465
    :cond_6
    :goto_4
    return-void

    .line 1257
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v0

    .line 1258
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 1259
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v3

    .line 1260
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 1261
    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-nez v0, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v6, v3, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1264
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1265
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1268
    :cond_8
    if-ne v5, v4, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 1261
    goto :goto_5

    .line 1283
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setRcsEnable(Z)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 1287
    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 1293
    goto :goto_3

    .line 1318
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1322
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1343
    :goto_6
    if-ne v4, v7, :cond_e

    .line 1344
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1345
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 1346
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1347
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1349
    :cond_e
    packed-switch v4, :pswitch_data_0

    .line 1386
    :cond_f
    :goto_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1392
    packed-switch v4, :pswitch_data_1

    .line 1444
    :cond_10
    :goto_8
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1445
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1446
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1456
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1458
    :cond_11
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v0, v7, :cond_6

    .line 1463
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/activities/PeopleActivity;->setNoContactsViewVisible(ZZ)V

    goto/16 :goto_4

    .line 1327
    :cond_12
    if-ne v5, v4, :cond_14

    .line 1328
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    .line 1339
    :goto_9
    if-eq v5, v1, :cond_13

    .line 1340
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    :cond_13
    move v4, v5

    goto :goto_6

    .line 1333
    :cond_14
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1334
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1335
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchBarVisibility(Z)V

    goto :goto_9

    .line 1351
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v0, :cond_15

    move v0, v3

    :goto_a
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v0, :cond_16

    move v0, v3

    :goto_b
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    const v0, 0x7f0902c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v0, :cond_17

    move v0, v3

    :goto_c
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    const v0, 0x7f0902c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v5, :cond_18

    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_15
    move v0, v2

    .line 1351
    goto :goto_a

    :cond_16
    move v0, v2

    .line 1352
    goto :goto_b

    :cond_17
    move v0, v2

    .line 1354
    goto :goto_c

    :cond_18
    move v2, v3

    .line 1356
    goto :goto_d

    .line 1360
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v5

    if-nez v5, :cond_19

    move v2, v1

    :cond_19
    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 1363
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    const v0, 0x7f0902c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    const v0, 0x7f0902c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1368
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    const v0, 0x7f0902c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    const v0, 0x7f0902c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1376
    :pswitch_3
    const-string v0, ""

    const-string v5, "CHINA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1377
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    const v0, 0x7f0902c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1394
    :pswitch_4
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1395
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1396
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1397
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1398
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1399
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1400
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1401
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1403
    const-string v3, ""

    const-string v5, "CHINA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1404
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_8

    .line 1407
    :pswitch_5
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1408
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1409
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1410
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1411
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1412
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1413
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1414
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1416
    const-string v3, ""

    const-string v5, "CHINA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1417
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_8

    .line 1420
    :pswitch_6
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1421
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1422
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1423
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1424
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1425
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1427
    const-string v3, ""

    const-string v5, "CHINA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1428
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1429
    :cond_1a
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1430
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_8

    .line 1433
    :pswitch_7
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1434
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1435
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1436
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1437
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1438
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1439
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1440
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1441
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mYellowPageFrament:Lcom/sec/android/app/contacts/yellowpage/activities/YellowPageFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_8

    .line 1349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1392
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private updateViewConfiguration(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1812
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 1813
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 1819
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setProviderStatus(I)V

    .line 1824
    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setCustomUnavailableViewForEachTab(I)V

    .line 1826
    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v0, v6, :cond_3

    .line 1830
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1831
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v0

    .line 1833
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1834
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1835
    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    .line 1836
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    goto :goto_0

    .line 1844
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->shouldShowVZWBackupAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_0

    .line 1846
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->startVZWBackupAssistantActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1853
    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->shouldShowVZWBackupAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_4

    .line 1855
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->startVZWBackupAssistantActivity(Landroid/app/Activity;)V

    .line 1859
    :cond_4
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1860
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1862
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v2, :cond_9

    .line 1863
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1865
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_5

    .line 1866
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 1868
    :cond_5
    if-eqz v1, :cond_6

    .line 1869
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1871
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_7

    .line 1872
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1917
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1918
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto/16 :goto_0

    .line 1892
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_a

    .line 1893
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1895
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v2, :cond_b

    .line 1896
    new-instance v2, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 1897
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 1899
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0902b6

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1903
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1905
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_c

    .line 1908
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    .line 1910
    :cond_c
    if-eqz v1, :cond_d

    .line 1911
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1914
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    .line 1915
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_1
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCustomSearchViewFocus()V
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 4172
    :cond_0
    return-void
.end method

.method public createNewGroupWithAccountDisambiguation()V
    .locals 3

    .prologue
    .line 3393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3394
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3395
    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3396
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3397
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3998
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3984
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3988
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3992
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3995
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method public getActivityTabState()I
    .locals 1

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2523
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2545
    :cond_0
    :goto_0
    return v0

    .line 2527
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2531
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2536
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2541
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2545
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1170
    packed-switch p1, :pswitch_data_0

    .line 1196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1174
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 1175
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1176
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1198
    :goto_0
    return-void

    .line 1180
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1181
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1183
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1186
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setShowActionbar(Z)V

    .line 1187
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V

    goto :goto_0

    .line 1193
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    .line 1170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x5f

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 3483
    sparse-switch p1, :sswitch_data_0

    .line 3685
    :cond_0
    :goto_0
    return-void

    .line 3485
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 3486
    const-string v0, "contactListFilter"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 3488
    if-eqz v0, :cond_0

    .line 3491
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 3492
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 3494
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0, v4}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 3502
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 3503
    const-string v0, "onlyContactWithPhonesChanged"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3505
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    goto :goto_0

    .line 3513
    :sswitch_2
    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 3515
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadDataAndSetSelectedUri(Landroid/net/Uri;)V

    .line 3517
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 3518
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    goto :goto_0

    .line 3525
    :sswitch_3
    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 3536
    :sswitch_4
    if-ne p2, v0, :cond_2

    .line 3537
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 3552
    :cond_2
    :sswitch_5
    if-ne p2, v0, :cond_0

    .line 3553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3554
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3556
    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3557
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3558
    const-string v2, "sendto"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3559
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3565
    :sswitch_6
    if-ne p2, v0, :cond_0

    .line 3566
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3568
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v2, v3

    .line 3569
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 3570
    const-string v0, ""

    aput-object v0, v5, v2

    .line 3571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v5, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 3569
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 3576
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3577
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3579
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3580
    :catch_0
    move-exception v1

    .line 3581
    const v1, 0x7f0d0125

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3583
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3591
    :sswitch_7
    if-ne p2, v0, :cond_0

    .line 3592
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3593
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3599
    :sswitch_8
    if-ne p2, v0, :cond_0

    .line 3600
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getSelectedGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    .line 3601
    invoke-static {v1, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 3603
    if-ne p1, v6, :cond_5

    .line 3604
    if-ne v2, v5, :cond_4

    .line 3617
    :goto_2
    if-ne p1, v6, :cond_7

    .line 3618
    const v0, 0x7f0d0278

    .line 3622
    :goto_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 3623
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 3624
    const-string v0, "ModifiedIds"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3626
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v2

    .line 3627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "editMemberCompleted"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 3631
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 3607
    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    .line 3609
    :cond_5
    const/16 v3, 0x60

    if-ne p1, v3, :cond_a

    .line 3610
    if-ne v2, v5, :cond_6

    .line 3611
    const/4 v5, 0x5

    goto :goto_2

    .line 3613
    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    .line 3620
    :cond_7
    const v0, 0x7f0d0279

    goto :goto_3

    .line 3636
    :sswitch_9
    if-ne p2, v0, :cond_0

    .line 3637
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3639
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v2, v3

    .line 3640
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 3641
    const-string v0, ""

    aput-object v0, v5, v2

    .line 3642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v5, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 3640
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 3645
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3646
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3648
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3649
    :catch_1
    move-exception v1

    .line 3650
    const v1, 0x7f0d0125

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3652
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3657
    :sswitch_a
    if-ne p2, v0, :cond_0

    .line 3658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3659
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3661
    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3662
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3663
    const-string v2, "sendto"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3664
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3668
    :sswitch_b
    if-ne p2, v0, :cond_0

    .line 3669
    const-string v0, "GroupInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 3670
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto/16 :goto_0

    .line 3674
    :sswitch_c
    if-ne p2, v0, :cond_9

    .line 3675
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_0

    .line 3676
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    goto/16 :goto_0

    .line 3679
    :cond_9
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_0

    .line 3680
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    goto/16 :goto_0

    :cond_a
    move v5, v0

    goto/16 :goto_2

    .line 3483
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_b
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0xe -> :sswitch_5
        0x5e -> :sswitch_c
        0x5f -> :sswitch_8
        0x60 -> :sswitch_8
        0x61 -> :sswitch_a
        0x62 -> :sswitch_9
        0x63 -> :sswitch_1
        0x65 -> :sswitch_7
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAddFavoritesRequested()V
    .locals 2

    .prologue
    .line 3469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 3471
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 438
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view-pager-favorites-about-fragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 443
    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    goto :goto_0

    .line 445
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 446
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 447
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const v3, 0x7f050001

    const/4 v2, 0x0

    .line 3781
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3782
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3784
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 3835
    :cond_1
    :goto_0
    return-void

    .line 3790
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3792
    invoke-static {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isContactsDeleting(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3793
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    goto :goto_0

    .line 3799
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_FixMainTabWhenAppLaunched"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3801
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3802
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab()V

    .line 3808
    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isTwLauncherAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3809
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 3810
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 3818
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3819
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 3834
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 3822
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 3823
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 3824
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    goto :goto_1

    .line 3829
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_6

    .line 3831
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->clearSearchResult()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 4083
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4085
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4086
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isActionBarModeTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4087
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 4089
    :cond_0
    return-void
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 454
    const-string v4, "ContactsPerf"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    const-string v4, "ContactsPerf"

    const-string v8, "PeopleActivity.onCreate start"

    invoke-static {v4, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 459
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 463
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    .line 465
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    .line 467
    invoke-direct {p0, v6}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 610
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    .line 473
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    if-eqz v4, :cond_3

    .line 474
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 475
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 476
    iput-boolean v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    .line 482
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "easy_mode_switch"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v5, v4, :cond_b

    .line 483
    iput-boolean v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    .line 491
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 493
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 494
    if-eqz p1, :cond_c

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    .line 495
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 496
    new-instance v4, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 498
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    .line 502
    new-instance v4, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 526
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "from_phone_app"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 528
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->checkTalkBackEnable()V

    .line 529
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v4, :cond_d

    .line 530
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v6, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 536
    :cond_4
    :goto_4
    const-string v4, "ContactsPerf"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 537
    const-string v4, "ContactsPerf"

    const-string v8, "PeopleActivity.onCreate finish"

    invoke-static {v4, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_5
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v4, :cond_7

    .line 542
    const-string v4, "isFavoritesListEmpty"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    .line 543
    const-string v4, "selectedfavoriteuri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 544
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v4, :cond_6

    .line 545
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 546
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectedFavoriteUri(Landroid/net/Uri;)V

    .line 549
    :cond_6
    const-string v4, "mOnlineSearchMode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    .line 550
    const-string v4, "launchedAccountPrompt"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    .line 554
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v8, "CscFeature_Contact_FixMainTabWhenAppLaunched"

    invoke-virtual {v4, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 556
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v4, :cond_8

    .line 558
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v4, :cond_e

    .line 559
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 578
    :cond_8
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 580
    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v4, :cond_9

    .line 581
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->startAabService()V

    .line 586
    :cond_9
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, salesCode:Ljava/lang/String;
    const-string v4, "PAP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "need_import_demo_vcf"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, demoImport:I
    if-lez v0, :cond_10

    .line 591
    const-string v4, "ContactsApplication"

    const-string v5, "Need Import..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "need_import_demo_vcf"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    const-string v4, "file:///storage/sdcard0/LiveDemo/Contacts_livedemo.vcf"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 595
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v4, "text/x-vcard"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 601
    const-string v4, "account_name"

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v4, "account_type"

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 478
    .end local v0           #demoImport:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #salesCode:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_a
    iput-boolean v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindow:Z

    goto/16 :goto_1

    .line 488
    :cond_b
    iput-boolean v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    goto/16 :goto_2

    :cond_c
    move v4, v6

    .line 494
    goto/16 :goto_3

    .line 532
    :cond_d
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v7, v6}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    goto/16 :goto_4

    .line 561
    :cond_e
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v4, :cond_f

    move v4, v7

    :goto_6
    invoke-virtual {v8, v4, v5}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    goto/16 :goto_5

    :cond_f
    const/4 v4, 0x2

    goto :goto_6

    .line 607
    .restart local v0       #demoImport:I
    .restart local v2       #salesCode:Ljava/lang/String;
    :cond_10
    const-string v4, "ContactsApplication"

    const-string v5, "Need Not Import..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 671
    packed-switch p1, :pswitch_data_0

    .line 680
    :goto_0
    return-object v0

    .line 673
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d029c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d029e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2493
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2495
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2496
    const/high16 v1, 0x7f12

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2513
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteFavoritesRequested()V
    .locals 2

    .prologue
    .line 3464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 3466
    return-void
.end method

.method public onDeleteRequested(Z)V
    .locals 3
    .parameter "requested"

    .prologue
    const/4 v1, 0x1

    .line 3446
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 3447
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setDeleteMode(Z)V

    .line 3448
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_1

    .line 3449
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    .line 3454
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_2

    .line 3457
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setContactsUnavailableViewVisible(ZZ)V

    .line 3460
    :cond_2
    return-void

    .line 3457
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1063
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 1064
    return-void
.end method

.method public onDialerTabSelected()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 1212
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1213
    return-void
.end method

.method public onFavoriteChangeViewState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3475
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3476
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "favorite_strquent_listview_state"

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3478
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    .line 3479
    return-void

    :cond_0
    move v0, v2

    .line 3476
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3478
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 3710
    sparse-switch p1, :sswitch_data_0

    .line 3731
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3732
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget v1, v1, Landroid/content/res/Configuration;->navigation:I

    if-ne v1, v5, :cond_2

    .line 3735
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3737
    const/16 v1, 0x52

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 3738
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3755
    :cond_0
    :goto_0
    return v0

    .line 3712
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3755
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3720
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelectedContact()Z

    goto :goto_1

    .line 3724
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 3725
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getSelectListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3743
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 3744
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3745
    new-instance v2, Ljava/lang/String;

    new-array v3, v0, [I

    aput v1, v3, v4

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([III)V

    .line 3746
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3747
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 3748
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 3710
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x14 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 3759
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3760
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v3, :cond_1

    .line 3763
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3776
    :goto_0
    return v0

    .line 3766
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    if-nez v0, :cond_3

    .line 3767
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3769
    :cond_3
    const/16 v0, 0x14

    if-ne p1, v0, :cond_4

    .line 3770
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    .line 3771
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_4

    if-ne v0, v3, :cond_4

    .line 3772
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getSelectListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3776
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4151
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4152
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4154
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    .line 615
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v1, "from_phone_app"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    .line 622
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, action:Ljava/lang/String;
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 625
    const-string v1, "joinFail"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->showDialog(I)V

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 630
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    .line 631
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 649
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromDetail"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 658
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromDetail"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchFromRelationship(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 661
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 662
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 665
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 666
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto/16 :goto_0

    .line 636
    :cond_6
    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 637
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->onDeleteCompleted()V

    goto/16 :goto_0

    .line 643
    :cond_7
    const-string v1, "editMemberCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->dismissProgress()V

    goto :goto_1
.end method

.method public onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3921
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$5;->$SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3957
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ContactSplitRatioController action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3923
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3924
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    .line 3960
    :goto_0
    return-void

    .line 3926
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3931
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3928
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3934
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3940
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3941
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3943
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3948
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3945
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3951
    :pswitch_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setChangingSplitRatioMode(Z)V

    goto :goto_0

    .line 3921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 3926
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 3943
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2979
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 2980
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_1

    .line 2983
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 2985
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_2

    .line 2986
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09019d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2987
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2988
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2991
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 3382
    :cond_3
    :goto_0
    :sswitch_0
    return v1

    .line 2994
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_3

    .line 2995
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2997
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    .line 3016
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3024
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 3026
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3032
    :goto_1
    if-nez v0, :cond_4

    .line 3033
    const-string v0, ":android:show_fragment"

    const-class v3, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3035
    const-string v0, ":android:show_fragment_title"

    const v3, 0x7f0d01da

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3038
    :cond_4
    const/16 v0, 0x63

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3029
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_1

    .line 3043
    :sswitch_3
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 3046
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3049
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0d0129

    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    goto :goto_0

    .line 3088
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_7

    .line 3089
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 3092
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3094
    const-string v2, "currentFilter"

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3096
    const/16 v2, 0x2711

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3100
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->closeOptionsMenu()V

    .line 3101
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 3107
    :sswitch_5
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 3108
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3111
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    .line 3113
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    .line 3120
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3124
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_9

    .line 3125
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3127
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3130
    invoke-virtual {p0, v0, v8}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3135
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3140
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroupWithAccountDisambiguation()V

    goto/16 :goto_0

    .line 3145
    :sswitch_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableNotificationWhenDeviceMemoryFull"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3158
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_b

    .line 3159
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v3

    .line 3160
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    sub-int v2, v3, v0

    .line 3162
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;I)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 3160
    goto :goto_2

    .line 3168
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3169
    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3170
    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3171
    const-string v3, "authorities"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3174
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3179
    :sswitch_a
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_d

    .line 3180
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setReadyForFakeQuery(Z)V

    .line 3182
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3183
    const/16 v2, 0x5e

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3187
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.GROUP_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3192
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3193
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3198
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    .line 3203
    :sswitch_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_ExtendSpeedDialTo100"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3205
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3209
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3207
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 3214
    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3215
    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    const-string v2, "StartFrom"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3217
    const-string v2, "actionbar_title"

    const-string v3, "Send email"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v2, :cond_f

    .line 3220
    const-string v2, "mode"

    const-string v3, "easy-mode"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3222
    :cond_f
    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3226
    :sswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3227
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_DisableMMS"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3230
    const-string v2, "additional"

    const-string v3, "phone-multi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3231
    const-string v2, "StartFrom"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3232
    const-string v2, "actionbar_title"

    const-string v3, "Send message"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3233
    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3237
    :cond_10
    const-string v2, "additional"

    const-string v3, "email-phone-multi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3238
    const-string v2, "StartFrom"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3239
    const-string v2, "actionbar_title"

    const-string v3, "Send message"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3242
    const-string v2, "FromMMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3244
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v2, :cond_11

    .line 3245
    const-string v2, "mode"

    const-string v3, "easy-mode"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3247
    :cond_11
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3252
    :sswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3253
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3257
    :sswitch_12
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3258
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v3, :cond_3

    .line 3259
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v3

    .line 3261
    if-ne v3, v7, :cond_12

    .line 3262
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberCountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3264
    :cond_12
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAutoAdd()Z

    move-result v2

    .line 3265
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3266
    const-string v5, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3267
    const-string v5, "GroupInfo"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3269
    const-string v0, "AutoAdd"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3271
    if-ne v3, v6, :cond_13

    .line 3272
    const-string v0, "EditMode"

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3278
    :goto_4
    const/16 v0, 0x5f

    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3275
    :cond_13
    const-string v0, "EditMode"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 3284
    :sswitch_13
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3285
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v2, :cond_3

    .line 3286
    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 3287
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAutoAdd()Z

    move-result v3

    .line 3288
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3289
    const-string v5, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3290
    const-string v5, "GroupInfo"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3292
    const-string v0, "AutoAdd"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3295
    if-ne v2, v6, :cond_14

    .line 3296
    const-string v0, "EditMode"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3301
    :goto_5
    const/16 v0, 0x60

    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3299
    :cond_14
    const-string v0, "EditMode"

    const/4 v2, 0x4

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 3306
    :sswitch_14
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3307
    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 3308
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3309
    const-string v4, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3310
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3311
    const-string v0, "actionCode"

    const/16 v4, 0x96

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3313
    const-string v0, "SelectMode"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3314
    const/16 v0, 0x61

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3318
    :sswitch_15
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3319
    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 3320
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3321
    const-string v4, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3322
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3323
    const-string v0, "actionCode"

    const/16 v4, 0xa0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3325
    const-string v0, "SelectMode"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3326
    const/16 v0, 0x62

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3330
    :sswitch_16
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3331
    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 3332
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3333
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3334
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3336
    if-ne v2, v6, :cond_15

    .line 3337
    const-string v0, "EditMode"

    const/16 v2, 0xf

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3342
    :goto_6
    invoke-virtual {p0, v3, v7}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3339
    :cond_15
    const-string v0, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 3347
    :sswitch_17
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3348
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3352
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onAddFavoritesRequested()V

    goto/16 :goto_0

    .line 3357
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteFavoritesRequested()V

    goto/16 :goto_0

    .line 3362
    :sswitch_1a
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onFavoriteChangeViewState()V

    goto/16 :goto_0

    .line 3367
    :sswitch_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3368
    const-string v2, "com.samsung.circleGL.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3369
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3374
    :sswitch_1c
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3375
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3376
    const-string v3, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3377
    const-string v3, "GroupInfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3378
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2991
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f09036e -> :sswitch_6
        0x7f09036f -> :sswitch_7
        0x7f090370 -> :sswitch_4
        0x7f090371 -> :sswitch_1c
        0x7f090372 -> :sswitch_11
        0x7f090373 -> :sswitch_0
        0x7f090374 -> :sswitch_a
        0x7f090375 -> :sswitch_b
        0x7f090376 -> :sswitch_5
        0x7f090377 -> :sswitch_8
        0x7f090378 -> :sswitch_d
        0x7f090379 -> :sswitch_c
        0x7f09037a -> :sswitch_9
        0x7f09037b -> :sswitch_e
        0x7f09037c -> :sswitch_16
        0x7f09037d -> :sswitch_f
        0x7f09037e -> :sswitch_10
        0x7f09037f -> :sswitch_3
        0x7f090380 -> :sswitch_17
        0x7f090381 -> :sswitch_1b
        0x7f090382 -> :sswitch_2
        0x7f090383 -> :sswitch_12
        0x7f090384 -> :sswitch_13
        0x7f090385 -> :sswitch_14
        0x7f090386 -> :sswitch_15
        0x7f090387 -> :sswitch_18
        0x7f090388 -> :sswitch_19
        0x7f090389 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 943
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    const-string v0, "PeopleActivity"

    const-string v1, "onBackPressed showContactTipsAgain"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->showContactTipsAgain(Landroid/content/Context;)V

    .line 948
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 957
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 958
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 29
    .parameter

    .prologue
    .line 2550
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 2551
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v2, :cond_0

    .line 2552
    const/4 v2, 0x0

    .line 2973
    :goto_0
    return v2

    .line 2555
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v2

    .line 2558
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 2559
    const/4 v2, 0x0

    goto :goto_0

    .line 2563
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2564
    const/4 v2, 0x0

    goto :goto_0

    .line 2568
    :cond_2
    const-string v2, "com.samsung.circleGL.action.MAIN"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    .line 2570
    const v2, 0x7f090373

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 2571
    const v2, 0x7f09036e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2572
    const v2, 0x7f09037f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2574
    const v2, 0x7f090370

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2575
    const v2, 0x7f090377

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2576
    const v2, 0x7f09037a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2577
    const v2, 0x7f090382

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 2578
    const v2, 0x7f090379

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 2579
    const v2, 0x7f090378

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 2580
    const v2, 0x7f09037b

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 2581
    const v2, 0x7f09037d

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2582
    const v2, 0x7f09037e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 2583
    const v2, 0x7f090372

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 2584
    const v2, 0x7f090383

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 2585
    const v2, 0x7f090384

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 2586
    const v2, 0x7f090385

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 2587
    const v2, 0x7f090386

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 2588
    const v2, 0x7f09037c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 2589
    const v2, 0x7f090376

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 2595
    const v2, 0x7f09036f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 2596
    const v2, 0x7f090387

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 2597
    const v2, 0x7f090388

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    .line 2598
    const v2, 0x7f090389

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    .line 2599
    const v2, 0x7f090374

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    .line 2600
    const v2, 0x7f090375

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 2601
    const v2, 0x7f090371

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2608
    const v2, 0x7f090380

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 2610
    const v2, 0x7f090381

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 2612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    .line 2613
    const-string v27, "feature_vzw"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    const-string v27, "feature_wvga"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 2615
    const-string v27, "infiniteusc"

    const-string v28, "ro.product.name"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 2616
    const v27, 0x7f0206ae

    move/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2617
    const v27, 0x7f0206ae

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2620
    :cond_3
    if-eqz v2, :cond_4

    .line 2622
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v3

    .line 2623
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 2624
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2629
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v2, :cond_8

    .line 2630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v2, v0, :cond_7

    .line 2631
    const/4 v2, 0x1

    .line 2639
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 2958
    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->isFDNEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2959
    if-eqz v20, :cond_6

    .line 2960
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2973
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2633
    :cond_7
    const/4 v2, 0x3

    goto :goto_2

    .line 2636
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    goto :goto_2

    .line 2646
    :pswitch_0
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2647
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2648
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2649
    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2650
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2651
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2652
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2654
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2655
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2656
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2657
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2658
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2659
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2660
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2661
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2662
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2663
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2664
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2665
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2666
    if-eqz v24, :cond_9

    .line 2667
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2669
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2670
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2673
    const-string v2, "kylevexx"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "kyleveub"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "logan2gxx"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    const/4 v2, 0x1

    .line 2674
    :goto_4
    if-nez v2, :cond_11

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "favorite_strquent_listview_state"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const v3, 0x7f0206b7

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2688
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 2689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_7
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2705
    :cond_b
    :goto_8
    if-eqz v25, :cond_c

    .line 2706
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2709
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2711
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2673
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 2683
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const v3, 0x7f02069b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2689
    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 2691
    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    .line 2697
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 2700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_9
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    .line 2720
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v27

    .line 2721
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2722
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2723
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2724
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2725
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2726
    if-eqz v27, :cond_1a

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2727
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2728
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2729
    if-eqz v24, :cond_13

    .line 2730
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2733
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    .line 2734
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContactItemCount()I

    move-result v4

    sub-int v2, v4, v2

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    :goto_c
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2737
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_15

    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2743
    :cond_15
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2757
    :goto_d
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2759
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    :goto_e
    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2761
    if-eqz v27, :cond_1f

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2762
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_10
    invoke-interface {v13, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2763
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2764
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2765
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2766
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2767
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2768
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2769
    sget-boolean v2, Lcom/android/contacts/activities/PeopleActivity;->mIsAvailableMyNetwork:Z

    if-eqz v2, :cond_21

    .line 2770
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2777
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_16

    .line 2778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const v3, 0x7f0d0250

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2782
    :cond_16
    if-eqz v25, :cond_17

    .line 2783
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableMenuStorageStatus"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2787
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2794
    :cond_17
    :goto_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2796
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2800
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2802
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    .line 2804
    :goto_13
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v3

    .line 2805
    if-eqz v3, :cond_24

    if-nez v2, :cond_24

    .line 2806
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2811
    :cond_19
    :goto_14
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2726
    :cond_1a
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 2733
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 2734
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 2745
    :cond_1d
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 2759
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 2761
    :cond_1f
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 2762
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 2772
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 2789
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_12

    .line 2802
    :cond_23
    const/4 v2, 0x0

    goto :goto_13

    .line 2808
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_14

    .line 2817
    :pswitch_2
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2818
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2819
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2820
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2821
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2822
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2824
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2825
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2826
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2827
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2828
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2829
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2830
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2831
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2832
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2836
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2837
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2841
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2842
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2844
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2845
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2846
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2847
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2848
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2849
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2850
    if-eqz v24, :cond_5

    .line 2851
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2865
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2866
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2870
    :goto_15
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2871
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2872
    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2873
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2874
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2875
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mMultipleDeleteMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2877
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2878
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2879
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2880
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2881
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2882
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2883
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2884
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2885
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2888
    if-eqz v24, :cond_25

    .line 2889
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2891
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-eqz v2, :cond_31

    .line 2892
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2c

    .line 2894
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2898
    :goto_16
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2900
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2901
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    .line 2903
    if-eqz v2, :cond_30

    .line 2904
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v3

    .line 2905
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v2

    .line 2906
    if-nez v2, :cond_26

    .line 2907
    const v2, 0x7f090383

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2908
    const v2, 0x7f090384

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2909
    const v2, 0x7f09037c

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2911
    :cond_26
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 2912
    const/4 v4, 0x4

    if-eq v3, v4, :cond_27

    if-nez v2, :cond_28

    .line 2913
    :cond_27
    const v2, 0x7f09037e

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2915
    :cond_28
    const/4 v2, 0x5

    if-ne v3, v2, :cond_2e

    .line 2916
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2917
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2918
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2919
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2945
    :cond_29
    :goto_18
    if-eqz v25, :cond_2a

    .line 2946
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2950
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2952
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2868
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 2896
    :cond_2c
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_16

    .line 2898
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 2921
    :cond_2e
    const/4 v2, 0x1

    if-ne v3, v2, :cond_29

    .line 2922
    if-eqz v24, :cond_29

    .line 2923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2f

    .line 2924
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_18

    .line 2926
    :cond_2f
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_18

    .line 2931
    :cond_30
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2932
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2933
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2934
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2935
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_18

    .line 2938
    :cond_31
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2939
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2940
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2941
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2942
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 2639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 1809
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 962
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 964
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isActionBarModeTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 970
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 972
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableToastPopup4StopDeletingOperationByCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const v0, 0x7f0d03c8

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 979
    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStoppedDeleting(Z)Z

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 987
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 991
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    if-eqz v0, :cond_3

    .line 992
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_5

    .line 993
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 997
    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneApp:Z

    .line 1004
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_6

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1015
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1036
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->checkTalkBackEnable()V

    .line 1037
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 1040
    :cond_4
    return-void

    .line 995
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    goto :goto_0

    .line 1017
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_7

    .line 1018
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 1019
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 1022
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1031
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    goto :goto_2

    .line 1026
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1010
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    const/4 v2, 0x0

    .line 3854
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3856
    const-string v0, "isFavoritesListEmpty"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3857
    const-string v0, "selectedfavoriteuri"

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3858
    const-string v0, "mOnlineSearchMode"

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3859
    const-string v0, "launchedAccountPrompt"

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mLaunchedAccountPrompt:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3861
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3862
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 3863
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3865
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_1

    .line 3866
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3873
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 3874
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_2

    .line 3875
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    .line 3879
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    if-eqz v0, :cond_3

    .line 3880
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactSplitRatioController:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3882
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_4

    .line 3883
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3884
    :cond_4
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3425
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_1

    .line 3441
    :cond_0
    :goto_0
    return v2

    .line 3428
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3431
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSearchViewQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchResult()V

    .line 3440
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0
.end method

.method public onSelectedTabChanged()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 1204
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 1205
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 888
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-eqz v2, :cond_2

    .line 893
    :cond_1
    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->getClassNameOfTopActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->checkLockScreenOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->startAabService()V

    .line 899
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v2, :cond_3

    .line 900
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    .line 914
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_6

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->onStart(Z)V

    .line 917
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 920
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->shouldShowContactTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 922
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_5

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z

    if-nez v0, :cond_5

    .line 925
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->checkShowContactTipsAgain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 926
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->show(Landroid/app/FragmentManager;Landroid/content/Context;)V

    .line 927
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->doNotShowContactTipsAgain(Landroid/content/Context;)V

    .line 937
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 914
    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 881
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 882
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setCallSipPressed(Z)V

    .line 248
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onWindowFocusChanged(Z)V

    .line 249
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4092
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 4093
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4094
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4095
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 4096
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentOrientationmode:I

    if-ne v0, v3, :cond_2

    .line 4097
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4098
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    .line 4108
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 4109
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 4110
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 4140
    :cond_0
    :goto_1
    return-void

    .line 4100
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 4103
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4104
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 4106
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0

    .line 4113
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 4114
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4115
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1

    .line 4117
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1

    .line 4121
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4122
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 4123
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4124
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    .line 4127
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 4128
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->restoreLastSelectedTab()V

    .line 4129
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 4126
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_2

    .line 4132
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setMultiWindow(Z)V

    .line 4133
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4134
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1

    .line 4136
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_1
.end method

.method public setFakeQueryModeEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3974
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFakeQueryModeEnabled(Z)V

    .line 3975
    return-void
.end method

.method public setNoContactsViewVisible(ZZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f090348

    const/4 v7, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1980
    const v0, 0x7f0902b4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1981
    const v0, 0x7f0902c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1983
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1985
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 1986
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    if-eqz p1, :cond_0

    .line 1989
    const v0, 0x7f090347

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1990
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1991
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$3;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2001
    :cond_0
    if-eqz v4, :cond_1

    .line 2002
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2003
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2004
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1986
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1987
    goto :goto_1

    .line 2006
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2008
    if-eqz v4, :cond_1

    .line 2009
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2010
    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2011
    if-nez p1, :cond_6

    :goto_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2013
    if-eqz p1, :cond_1

    .line 2014
    iput-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 2010
    goto :goto_3

    :cond_6
    move v1, v2

    .line 2011
    goto :goto_4

    .line 2018
    :cond_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2019
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    if-eqz v4, :cond_1

    .line 2021
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2023
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public startAabService()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 4005
    const-string v0, "AAB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registration count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getRegistrationCountFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->checkAABStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4009
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getRegistrationCountFlag()I

    move-result v0

    .line 4012
    if-gt v0, v4, :cond_1

    .line 4013
    if-ne v0, v4, :cond_0

    .line 4018
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->setRegistrationCompleteFlag(Z)V

    .line 4022
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4023
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4024
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAabHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mStartSubscriberInfoChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4028
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/aab/activity/AABFlagInfo;->addRegistrationCountFlag(I)V

    .line 4030
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

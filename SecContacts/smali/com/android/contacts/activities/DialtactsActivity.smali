.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Landroid/app/Activity;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLandFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;,
        Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;,
        Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;,
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field public static VT_ENABLE:Z

.field private static buildcarrier:Ljava/lang/String;

.field private static isFavouriteEmptyStatus:Z

.field public static isSupportMultiWindow:Z

.field public static mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

.field public static mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field public static mContactsDB_Status:I

.field private static mCurrentTab:I

.field public static mDisplayNameOrder:I

.field public static mEasyMode:Z

.field public static mIsSamsungCorean:Z

.field public static mIsVendorKTT:Z

.field public static mIsVendorLGT:Z

.field public static mIsVendorSKT:Z

.field private static mTalkbackCheck:Z


# instance fields
.field private Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

.field private isNewIntentCallLog:Z

.field private isUpdateListModeTabPosition:Z

.field private isUpdateTabPosition:Z

.field private isUsingTwoPanel:Z

.field private mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mCTStatusHandler:Landroid/os/Handler;

.field private mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field private mCallLogCustomTabView:Landroid/view/View;

.field private mCallLogCustomTabView_Text:Landroid/widget/TextView;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mChangeViewMenu:Landroid/view/MenuItem;

.field private mContactCustomTabView:Landroid/view/View;

.field private mContactCustomTabView_Text:Landroid/widget/TextView;

.field private mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLandLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field mDeleteFavoriteItem:Landroid/view/MenuItem;

.field private mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mDialCustomTabView:Landroid/view/View;

.field private mDialCustomTabView_Text:Landroid/widget/TextView;

.field private mDialUri:Landroid/net/Uri;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field mDuringSwipe:Z

.field private mFavoCustomTabView:Landroid/view/View;

.field private mFavoCustomTabView_Text:Landroid/widget/TextView;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

.field private mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mSupportFolderType:Z

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mTw_color017:I

.field private mTw_color031:I

.field mUserTabClick:Z

.field public mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    sput v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 202
    sput-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    .line 208
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    .line 231
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    .line 232
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    .line 233
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    .line 234
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    .line 237
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    .line 247
    sput v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    .line 250
    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mDisplayNameOrder:I

    .line 253
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    .line 463
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 205
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    .line 242
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 244
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 248
    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 329
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 337
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 445
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 454
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    .line 456
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

    .line 461
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 465
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 773
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 795
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 819
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 831
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 842
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 861
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 883
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 913
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 924
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2373
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$13;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    .line 2380
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$14;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 2392
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 3174
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    sput p0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/DialtactsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/DialtactsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/sec/multiwindow/MultiWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    sput-boolean p0, Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->sendAccessibilityEvent(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/contacts/activities/DialtactsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/contacts/activities/DialtactsActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/contacts/activities/DialtactsActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/DialtactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/DialtactsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    return p1
.end method

.method private checkVoipState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3238
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3239
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->voipIsInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3241
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->returnToVoipCallScreen()V

    .line 3242
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/activities/DialtactsActivity;->overridePendingTransition(II)V

    .line 3243
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 3245
    :cond_0
    return-void
.end method

.method private enterSearchUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2574
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v3, :cond_0

    .line 2630
    :goto_0
    return-void

    .line 2583
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_1

    .line 2584
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 2587
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2597
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2598
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 2599
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 2602
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 2604
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2605
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 2606
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2607
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2609
    invoke-direct {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 2610
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_3

    .line 2611
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    .line 2612
    invoke-direct {p0, v1, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 2611
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2616
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 2617
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2618
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2619
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2620
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_4

    .line 2621
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 2625
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 2626
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 2629
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2653
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2656
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v3, :cond_0

    .line 2657
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 2659
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2660
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2661
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2665
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2666
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2667
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 2669
    iget-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_3

    .line 2670
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 2671
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 2670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 2671
    goto :goto_1

    .line 2675
    :cond_2
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 2676
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 2678
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setVisibility(I)V

    .line 2680
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 2683
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 2686
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 2687
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 2688
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1545
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1547
    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1549
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1551
    :cond_1
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2764
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2766
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2769
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2770
    const-string v1, "fromDialer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2773
    :cond_0
    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 2691
    packed-switch p1, :pswitch_data_0

    .line 2710
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2693
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 2707
    :goto_0
    return-object v0

    .line 2695
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 2697
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 2699
    :pswitch_3
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFragmentAt, mLastManuallySelectedFragment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    packed-switch v0, :pswitch_data_1

    .line 2703
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    goto :goto_0

    .line 2705
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    .line 2707
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    .line 2691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2700
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2642
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2643
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2644
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2646
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2134
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return v0

    .line 2137
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2138
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2139
    if-eqz v1, :cond_2

    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1902
    if-eqz p2, :cond_0

    .line 1903
    const-string v2, "call_key"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1904
    const-string v3, "notify"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1906
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1907
    if-eqz v3, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return v0

    .line 1911
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1912
    goto :goto_0

    .line 1915
    :cond_2
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1916
    const-string v3, "phone2"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1917
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1918
    goto :goto_0

    .line 1922
    :catch_0
    move-exception v1

    .line 1923
    const-string v2, "DialtactsActivity"

    const-string v3, "Failed to handle send while in call"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playSoundEffect(I)V
    .locals 1
    .parameter

    .prologue
    .line 2188
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2189
    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2192
    :cond_0
    return-void
.end method

.method private prepareSearchView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1449
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1451
    const v0, 0x7f090169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 1452
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1453
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1463
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$12;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/DialtactsActivity$12;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1472
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    const v0, 0x7f090244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1475
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1481
    return-void
.end method

.method private registerProviderStatusObserver()V
    .locals 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 1321
    :cond_0
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    .line 1322
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1323
    const-string v0, "DialtactsActivity"

    const-string v1, "registerProviderStatusObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void
.end method

.method private returnToVoipCallScreen()V
    .locals 3

    .prologue
    .line 3251
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3254
    :try_start_0
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    :goto_0
    return-void

    .line 3255
    :catch_0
    move-exception v0

    .line 3256
    const-string v1, "DialtactsActivity"

    const-string v2, "voipinterface.isVoIPRingOrDialing() or voipinterface.isOffhook() failed"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .parameter

    .prologue
    .line 3124
    const-string v0, ""

    .line 3126
    packed-switch p1, :pswitch_data_0

    .line 3147
    :goto_0
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3151
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3152
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3153
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 3154
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3155
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3157
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3159
    return-void

    .line 3128
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3132
    :pswitch_1
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3135
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3139
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3143
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendAccessibilityEvent(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter

    .prologue
    .line 3078
    const-string v0, ""

    .line 3080
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3104
    :goto_0
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3108
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3110
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 3111
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3112
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3116
    :try_start_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3121
    :goto_1
    return-void

    .line 3083
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3087
    :pswitch_1
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3090
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3094
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3098
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3117
    :catch_0
    move-exception v0

    .line 3118
    const-string v0, "DialtactsActivity"

    const-string v1, "java.lang.IllegalStateException: Accessibility off."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2716
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFragmentVisibiltyChange(). position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 2721
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2722
    if-eqz v0, :cond_0

    .line 2723
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 2724
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 2726
    :cond_0
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_1

    .line 2727
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 2730
    :cond_1
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1936
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTab , intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const-string v0, "notify"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1939
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1940
    invoke-direct {p0, p1, v9}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 2073
    :goto_0
    return-void

    .line 1944
    :cond_0
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    if-ne v0, v3, :cond_1

    .line 1945
    iput v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1949
    :cond_1
    iget v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1952
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    .line 1954
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1955
    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1959
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1960
    const-string v0, "is_read"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    const-string v0, "type"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1965
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1968
    if-eqz v1, :cond_1b

    .line 1969
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1970
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 1973
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1980
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecntcallEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v13, :cond_6

    const-string v1, "logs"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    move v0, v6

    move v1, v7

    .line 2045
    :goto_3
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2046
    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 2049
    :cond_3
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_16

    .line 2050
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    .line 2051
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v2, v1, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 2053
    if-eq v0, v1, :cond_4

    .line 2054
    invoke-direct {p0, v0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 2057
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 2058
    invoke-direct {p0, v1, v7}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    move v0, v7

    .line 2064
    :cond_5
    :goto_4
    if-eqz v0, :cond_17

    .line 2065
    iput v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 2071
    :goto_5
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 2072
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 1975
    :catch_0
    move-exception v0

    move v0, v6

    .line 1976
    :goto_6
    const-string v1, "DialtactsActivity"

    const-string v2, "LogsProvider cursor returns null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1983
    :cond_6
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-nez v8, :cond_9

    if-nez v9, :cond_9

    .line 1985
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_8

    .line 1986
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    move v0, v6

    move v1, v6

    goto :goto_3

    .line 1988
    :cond_8
    invoke-virtual {v11, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1989
    sput v6, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    move v0, v6

    move v1, v6

    goto :goto_3

    .line 1991
    :cond_9
    if-eqz v9, :cond_11

    .line 1992
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1994
    if-eqz v12, :cond_a

    const-string v0, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    if-eqz v13, :cond_c

    const-string v0, "logs"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v0, v6

    move v1, v7

    .line 1996
    goto :goto_3

    .line 1999
    :cond_c
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_e

    .line 2000
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_d

    .line 2001
    const-string v0, "keyevent5_current_dialtab"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v6

    move v1, v6

    goto/16 :goto_3

    .line 2003
    :cond_d
    const-string v0, "keyevent5_current_dialtab"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v6

    move v1, v6

    goto/16 :goto_3

    .line 2006
    :cond_e
    invoke-virtual {v11}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_f

    .line 2007
    const-string v0, "keyevent5_current_dialtab"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v6

    move v1, v6

    goto/16 :goto_3

    .line 2009
    :cond_f
    const-string v0, "keyevent5_current_dialtab"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v6

    move v1, v6

    goto/16 :goto_3

    .line 2016
    :cond_10
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_19

    .line 2017
    sput v7, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    move v0, v7

    move v1, v7

    goto/16 :goto_3

    .line 2019
    :cond_11
    const-string v1, "phone_icon_to_keypad"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    move v0, v7

    move v1, v6

    .line 2023
    goto/16 :goto_3

    .line 2024
    :cond_13
    if-eqz v0, :cond_14

    .line 2026
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_18

    .line 2027
    sput v7, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    move v0, v6

    move v1, v7

    goto/16 :goto_3

    .line 2028
    :cond_14
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_15

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v6

    move v1, v6

    .line 2030
    goto/16 :goto_3

    .line 2034
    :cond_15
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    move v1, v0

    move v0, v6

    goto/16 :goto_3

    .line 2060
    :cond_16
    invoke-virtual {v11}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 2061
    invoke-virtual {v11, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_4

    .line 2069
    :cond_17
    iput v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    goto/16 :goto_5

    .line 1975
    :catch_1
    move-exception v1

    goto/16 :goto_6

    :cond_18
    move v0, v6

    move v1, v7

    goto/16 :goto_3

    :cond_19
    move v0, v7

    move v1, v7

    goto/16 :goto_3

    :cond_1a
    move v0, v6

    goto/16 :goto_1

    :cond_1b
    move v0, v6

    goto/16 :goto_2
.end method

.method private setEmbeddedTabs()V
    .locals 6

    .prologue
    .line 3283
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 3286
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHasEmbeddedTabs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3287
    if-eqz v1, :cond_0

    .line 3288
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3289
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3296
    :cond_0
    :goto_0
    return-void

    .line 3294
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3293
    :catch_1
    move-exception v0

    goto :goto_0

    .line 3292
    :catch_2
    move-exception v0

    goto :goto_0

    .line 3291
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private setupCallLog()V
    .locals 7

    .prologue
    const v2, 0x7f040002

    const v6, 0x7f020563

    const/4 v5, 0x0

    const v4, 0x7f0d0316

    const v3, 0x7f090021

    .line 1763
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 1764
    const v0, 0x7f0d0086

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1765
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1766
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_5

    .line 1767
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1769
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1799
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1800
    return-void

    .line 1771
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v2, "lt02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040003

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1773
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1774
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1776
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_2

    const-string v0, "feature_cdma_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_gsm_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1777
    :cond_2
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1778
    const v0, 0x7f0d01a0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1780
    :cond_3
    invoke-virtual {v1, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1783
    :cond_4
    invoke-virtual {v1, v6}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1787
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    .line 1788
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1790
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1791
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d01a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1795
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;

    .line 1796
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    .line 1793
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setupContacts()V
    .locals 6

    .prologue
    const v2, 0x7f040002

    const/4 v5, 0x0

    const v4, 0x7f090021

    const v3, 0x7f0d0238

    .line 1838
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 1839
    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1840
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1842
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_2

    .line 1843
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1845
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1889
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1891
    return-void

    .line 1847
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v2, "lt02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040003

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1849
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1850
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1852
    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1881
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    .line 1882
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02055e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1883
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1885
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;

    .line 1886
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupDialUri(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 2833
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2837
    :goto_0
    return-void

    .line 2836
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupDialer()V
    .locals 7

    .prologue
    const v2, 0x7f040002

    const v6, 0x7f020560

    const/4 v5, 0x0

    const v4, 0x7f0d0315

    const v3, 0x7f090021

    .line 1731
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 1732
    const v0, 0x7f0d0085

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1733
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1735
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_4

    .line 1736
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1738
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1739
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1759
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1760
    return-void

    .line 1740
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v2, "lt02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1741
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040003

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1742
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1743
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1745
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_2

    const-string v0, "feature_cdma_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_gsm_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1746
    :cond_2
    invoke-virtual {v1, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1748
    :cond_3
    invoke-virtual {v1, v6}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1752
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1753
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1755
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;

    .line 1756
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupFavoriteDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 3171
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 3172
    return-void
.end method

.method private setupFavorites()V
    .locals 7

    .prologue
    const v2, 0x7f040002

    const v6, 0x7f020565

    const/4 v5, 0x0

    const v4, 0x7f0d0317

    const v3, 0x7f090021

    .line 1803
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 1804
    const v0, 0x7f0d0084

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 1805
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1807
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_4

    .line 1808
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1810
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1811
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 1833
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1834
    return-void

    .line 1812
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v2, "lt02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1813
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040003

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    .line 1814
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1817
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_2

    const-string v0, "feature_cdma_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_gsm_layout"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1818
    :cond_2
    invoke-virtual {v1, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1821
    :cond_3
    invoke-virtual {v1, v6}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 1825
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    .line 1826
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1827
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1829
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;

    .line 1830
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 2178
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    const-string v0, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2183
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2633
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2634
    if-eqz v0, :cond_0

    .line 2635
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2636
    const-string v0, "DialtactsActivity"

    const-string v1, "Failed to show soft input method."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_0
    return-void
.end method

.method private unregisterProviderStatusObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1329
    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->Status_observer:Lcom/android/contacts/activities/DialtactsActivity$ProviderStatusObserver;

    .line 1331
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCTStatusHandler:Landroid/os/Handler;

    .line 1333
    const-string v0, "DialtactsActivity"

    const-string v1, "unregisterProviderStatusObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method private updateFakeMenuButtonsVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2742
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFakeMenuButtonVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-void
.end method

.method private voipIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3265
    .line 3267
    :try_start_0
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3268
    if-eqz v1, :cond_1

    .line 3269
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3275
    :cond_1
    :goto_0
    return v0

    .line 3271
    :catch_0
    move-exception v1

    .line 3272
    const-string v2, "DialtactsActivity"

    const-string v3, "voipCall.isVoIPActivated() or voipCall.isVoIPRingOrDialing() failed"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2195
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSupportFolderType:Z

    if-nez v6, :cond_0

    .line 2196
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    .line 2254
    :goto_0
    return v7

    .line 2198
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 2200
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2201
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v1

    .line 2203
    .local v1, currentPage:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2254
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #currentPage:I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    .line 2206
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #currentPage:I
    :pswitch_0
    if-nez v0, :cond_2

    .line 2207
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    .line 2208
    :cond_2
    if-ne v1, v7, :cond_1

    .line 2209
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2210
    .local v4, tab:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 2211
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    .line 2212
    .local v5, twListview:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    if-nez v6, :cond_4

    move v2, v7

    .line 2213
    .local v2, isCalllogFirstItemFocused:Z
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v7

    .line 2214
    .local v3, isWindowNotFocused:Z
    :goto_3
    if-nez v2, :cond_3

    if-eqz v3, :cond_1

    .line 2215
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 2216
    invoke-direct {p0, v7}, Lcom/android/contacts/activities/DialtactsActivity;->playSoundEffect(I)V

    goto :goto_0

    .end local v2           #isCalllogFirstItemFocused:Z
    .end local v3           #isWindowNotFocused:Z
    :cond_4
    move v2, v8

    .line 2212
    goto :goto_2

    .restart local v2       #isCalllogFirstItemFocused:Z
    :cond_5
    move v3, v8

    .line 2213
    goto :goto_3

    .line 2225
    .end local v2           #isCalllogFirstItemFocused:Z
    .end local v4           #tab:Landroid/view/View;
    .end local v5           #twListview:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    :pswitch_1
    if-nez v0, :cond_6

    .line 2226
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 2227
    :cond_6
    if-nez v1, :cond_1

    .line 2228
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2229
    .restart local v4       #tab:Landroid/view/View;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2230
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 2238
    .end local v4           #tab:Landroid/view/View;
    :pswitch_2
    if-nez v0, :cond_7

    .line 2239
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 2240
    :cond_7
    if-ne v1, v7, :cond_1

    .line 2241
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v5

    .line 2242
    .restart local v5       #twListview:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    if-gez v6, :cond_1

    .line 2243
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 2203
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 3050
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3069
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3072
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3053
    :pswitch_0
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3056
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3060
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3064
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 3162
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 3163
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 3165
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 3166
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDialtactsPage()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 2799
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_1

    .line 2800
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2801
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2802
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    .line 2808
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return v1

    .line 2806
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v2, :cond_0

    .line 2807
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_0
.end method

.method public hasMultiWindwoFeature()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3192
    .line 3194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3195
    if-eqz v1, :cond_0

    .line 3196
    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3202
    :cond_0
    :goto_0
    return v0

    .line 3198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2778
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2783
    :pswitch_0
    const-string v0, "contactListFilter"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 2785
    if-eqz v0, :cond_0

    .line 2788
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 2789
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 2791
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 2781
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    const/4 v3, 0x1

    .line 1487
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    .line 1489
    .local v0, currentPosition:I
    :goto_0
    instance-of v1, p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    .line 1490
    check-cast p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 1491
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V

    .line 1492
    if-nez v0, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 1525
    :cond_0
    :goto_1
    return-void

    .line 1487
    .end local v0           #currentPosition:I
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1495
    .restart local v0       #currentPosition:I
    :cond_2
    instance-of v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_3

    .line 1496
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 1497
    if-ne v0, v3, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    .line 1499
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    goto :goto_1

    .line 1501
    .restart local p1
    :cond_3
    instance-of v1, p1, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_4

    .line 1502
    check-cast p1, Lcom/android/contacts/list/ContactTileListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 1503
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 1505
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 1506
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V

    .line 1507
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto :goto_1

    .line 1521
    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    if-eqz v1, :cond_0

    .line 1522
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2338
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDigits()V

    .line 2342
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_3

    .line 2343
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2344
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 2346
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 2351
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 2352
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 2355
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_6

    .line 2357
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 2368
    :goto_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v0, :cond_4

    .line 2369
    const v0, 0x7f050001

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/activities/DialtactsActivity;->overridePendingTransition(II)V

    .line 2371
    :cond_4
    return-void

    .line 2349
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0

    .line 2358
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2363
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->safe_moveTaskback()V

    goto :goto_1

    .line 2365
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter "newConfig"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1361
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1364
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1366
    .local v4, intent:Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v6, :cond_8

    .line 1367
    const-string v6, "alwasy_tab_mode_tablet"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v7, "lt02"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1368
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1416
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 1417
    .local v3, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 1418
    .local v5, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 1419
    const v6, 0x7f09010c

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1420
    .local v2, contactsView:Landroid/view/View;
    const v6, 0x7f09023a

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1422
    .local v1, contactsLandView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_7

    .line 1423
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1424
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1425
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1426
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    :goto_1
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1434
    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1446
    .end local v1           #contactsLandView:Landroid/view/View;
    .end local v2           #contactsView:Landroid/view/View;
    .end local v3           #fragmentManager:Landroid/app/FragmentManager;
    .end local v5           #transaction:Landroid/app/FragmentTransaction;
    :cond_2
    :goto_2
    return-void

    .line 1370
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_5

    .line 1371
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v6, :cond_4

    .line 1372
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v6}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1373
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1374
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v6, p0, v10}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1375
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1376
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1377
    sget v6, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1380
    :cond_4
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1381
    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v6, p0, v10}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1382
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1383
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1384
    sget v6, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1387
    :cond_5
    sget-boolean v6, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v6, :cond_6

    .line 1388
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v6}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1389
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 1390
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1391
    iput-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1392
    sget v6, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1395
    :cond_6
    iput-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 1396
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1397
    iput-object v10, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1398
    sget v6, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 1428
    .restart local v1       #contactsLandView:Landroid/view/View;
    .restart local v2       #contactsView:Landroid/view/View;
    .restart local v3       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v5       #transaction:Landroid/app/FragmentTransaction;
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1429
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1430
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1437
    .end local v1           #contactsLandView:Landroid/view/View;
    .end local v2           #contactsView:Landroid/view/View;
    .end local v3           #fragmentManager:Landroid/app/FragmentManager;
    .end local v5           #transaction:Landroid/app/FragmentTransaction;
    :cond_8
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1438
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 1439
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v6, v9, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_2

    .line 1442
    :cond_9
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 936
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 937
    const-string v3, "DialtactsActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkVoipState()V

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    .line 942
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 944
    const-string v3, "com.sec.feature.folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mSupportFolderType:Z

    .line 946
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->hasMultiWindwoFeature()Z

    move-result v3

    sput-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    .line 950
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    .line 952
    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 953
    new-instance v3, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;-><init>()V

    sput-object v3, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    .line 955
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 956
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 957
    const-string v3, "vnd.android.cursor.dir/calls"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 958
    .local v19, recentCallsRequest:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 1140
    :cond_1
    :goto_0
    return-void

    .line 963
    :cond_2
    const v3, 0x7f0400d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    .line 965
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    .line 968
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_3

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 983
    .local v6, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v20

    .line 984
    .local v20, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f09023e

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f090095

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v4, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f09023b

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f09023c

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragmentListener:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFavoriteLoaderFragmentListener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectionVisible(Z)V

    .line 994
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 995
    .local v5, savedState:Landroid/os/Bundle;
    const-string v3, "IsDialerFrom"

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 996
    const-string v3, "Portrait"

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 998
    new-instance v3, Lcom/android/contacts/detail/ContactDetailLayoutController;

    const v4, 0x7f09010c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFragmentListener;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 1002
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .local v9, landscapeSavedState:Landroid/os/Bundle;
    const-string v3, "IsDialerFrom"

    const/4 v4, 0x1

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    const-string v3, "Portrait"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    new-instance v7, Lcom/android/contacts/detail/ContactDetailLayoutController;

    const v3, 0x7f09023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLandFragmentListener;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLandFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v10, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 1010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1012
    invoke-virtual/range {v20 .. v20}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1013
    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1017
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    .line 1019
    const v3, 0x7f090233

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1020
    .local v11, id_split_bar_colored:Landroid/widget/LinearLayout;
    const v3, 0x7f0900c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 1021
    .local v12, id_split_bar_left:Landroid/widget/ImageButton;
    const v3, 0x7f090238

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 1022
    .local v13, id_split_bar_right:Landroid/widget/ImageButton;
    const v3, 0x7f090232

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 1023
    .local v15, id_tab_list_container:Landroid/widget/FrameLayout;
    const v3, 0x7f090234

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1025
    .local v14, id_split_hover:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/activities/DialtactsActivity;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setValues(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/android/contacts/list/ContactTileListFragment;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->onCreate()V

    .line 1029
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;

    .line 1032
    .end local v5           #savedState:Landroid/os/Bundle;
    .end local v6           #fragmentManager:Landroid/app/FragmentManager;
    .end local v9           #landscapeSavedState:Landroid/os/Bundle;
    .end local v11           #id_split_bar_colored:Landroid/widget/LinearLayout;
    .end local v12           #id_split_bar_left:Landroid/widget/ImageButton;
    .end local v13           #id_split_bar_right:Landroid/widget/ImageButton;
    .end local v14           #id_split_hover:Landroid/widget/LinearLayout;
    .end local v15           #id_tab_list_container:Landroid/widget/FrameLayout;
    .end local v20           #transaction:Landroid/app/FragmentTransaction;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    .line 1034
    new-instance v3, Lcom/android/contacts/list/ContactListFilterController;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    new-instance v4, Lcom/android/contacts/activities/DialtactsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 1048
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v3, :cond_9

    .line 1049
    const v3, 0x7f09010d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    new-instance v4, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setAdapter(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1068
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupContacts()V

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_f

    .line 1074
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_5

    .line 1075
    invoke-static/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 1077
    :cond_5
    const-string v3, "alwasy_tab_mode_tablet"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v4, "lt02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1078
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1111
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1114
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "DialtactsActivity_last_manually_selected_tab"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_7

    .line 1119
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1122
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 1124
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_8

    .line 1126
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 1130
    :cond_8
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1131
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    .line 1132
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1133
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    goto/16 :goto_0

    .line 1054
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1056
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f020529

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1060
    :cond_a
    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_1

    .line 1081
    :cond_b
    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->mContext:Landroid/content/Context;

    const v7, 0x1090009

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v7}, Lcom/android/contacts/activities/DialtactsActivity$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0315

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0316

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0084

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0238

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1090
    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v3, v4, v7}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_2

    .line 1093
    :cond_c
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_e

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1096
    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v3, v4, v7}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_2

    .line 1099
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1100
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_2

    .line 1103
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1104
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_2

    .line 1109
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_2

    .line 1134
    :cond_10
    const-string v3, "feature_kt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1135
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    goto/16 :goto_0

    .line 1136
    :cond_11
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1137
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2444
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2445
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2446
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 2447
    :cond_0
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2450
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2449
    :cond_1
    const v1, 0x7f120008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2262
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2263
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2333
    :goto_0
    return v0

    .line 2264
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    .line 2265
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 2266
    if-nez v1, :cond_1

    .line 2267
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2269
    :cond_1
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2270
    const-string v3, "hennessy3gduosctc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2271
    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    .line 2272
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2275
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 2333
    :cond_4
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2277
    :pswitch_1
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 2281
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2284
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2287
    :pswitch_4
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2293
    :pswitch_5
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 2295
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2296
    :cond_5
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2299
    :pswitch_7
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2302
    :pswitch_8
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_1

    .line 2323
    :pswitch_9
    if-nez v0, :cond_4

    .line 2324
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2325
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2275
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 2277
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2293
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2077
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2079
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 2080
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 2082
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2083
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 2090
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2091
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->isNewIntentCallLog:Z

    .line 2094
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_8

    .line 2095
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_6

    .line 2096
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_5

    .line 2097
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 2118
    :cond_2
    :goto_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2119
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialUri(Landroid/content/Intent;)V

    .line 2124
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_4

    .line 2125
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->removeDispensableDialogs()V

    .line 2128
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 2129
    return-void

    .line 2099
    :cond_5
    const-string v0, "DialtactsActivity"

    const-string v1, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2102
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_7

    .line 2103
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2105
    :cond_7
    const-string v0, "DialtactsActivity"

    const-string v1, "CallLogFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2109
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2110
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 2111
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_9

    .line 2112
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2114
    :cond_9
    const-string v0, "DialtactsActivity"

    const-string v1, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 1529
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1531
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DialtactsActivity_last_manually_selected_tab"

    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1533
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->unregisterProviderStatusObserver()V

    .line 1535
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 1536
    .local v0, priority:I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 1537
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1539
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2458
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2460
    const v0, 0x7f0903b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2461
    const v0, 0x7f0903b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2462
    const v0, 0x7f0903b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2463
    const v0, 0x7f0903b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2464
    const v0, 0x7f090387

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2465
    const v0, 0x7f090388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    .line 2466
    const v0, 0x7f090389

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    .line 2468
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    .line 2470
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 2471
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2473
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2475
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2476
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2483
    :goto_0
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2549
    :goto_1
    return v2

    .line 2480
    :cond_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2481
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2488
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_4

    .line 2491
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 2492
    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2493
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2494
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2529
    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2530
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2532
    if-eqz v0, :cond_d

    .line 2533
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    if-ne v0, v11, :cond_c

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_c

    .line 2534
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2535
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2536
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2491
    goto :goto_2

    .line 2495
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-ne v0, v11, :cond_b

    .line 2497
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_e

    .line 2498
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v0

    .line 2501
    :goto_4
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2502
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2503
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    if-lez v0, :cond_5

    move v3, v2

    :goto_5
    invoke-interface {v9, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2504
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2506
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    const-string v3, "row_ram"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    :goto_6
    invoke-interface {v9, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2507
    iget-object v9, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-lez v0, :cond_7

    move v3, v2

    :goto_7
    invoke-interface {v9, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2508
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "favorite_strquent_listview_state"

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2509
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d03f5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2510
    if-lez v0, :cond_8

    .line 2511
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0206b6

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2521
    :goto_8
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v0, v2

    .line 2522
    goto/16 :goto_3

    :cond_5
    move v3, v1

    .line 2503
    goto :goto_5

    :cond_6
    move v3, v1

    .line 2506
    goto :goto_6

    :cond_7
    move v3, v1

    .line 2507
    goto :goto_7

    .line 2513
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0206b5

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_8

    .line 2515
    :cond_9
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d03f4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2516
    if-lez v0, :cond_a

    .line 2517
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f02069a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_8

    .line 2519
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f020699

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_8

    .line 2524
    :cond_b
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2525
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2526
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v2

    goto/16 :goto_3

    .line 2539
    :cond_c
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2540
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2541
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2544
    :cond_d
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2545
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_UseEccDialerInCaseOfNoInternalMemory"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getAvailableInternalMemorySize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1190
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1191
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 1194
    :cond_0
    const-string v0, "DialtactsActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 1198
    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v6

    :goto_0
    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    .line 1201
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_e

    .line 1202
    invoke-virtual {v8}, Landroid/app/ActionBar;->hide()V

    .line 1203
    const v0, 0x7f09022f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1205
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 1222
    :cond_1
    :goto_1
    const-string v0, "clipboardEx"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    sput-object v0, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 1224
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    .line 1225
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume  mTalkbackCheck is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mTalkbackCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$LogsListActionListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V

    .line 1229
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_3

    .line 1230
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    .line 1232
    :cond_3
    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1233
    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 1234
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSupportFolderType:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v10, :cond_10

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isNewIntentCallLog:Z

    if-eqz v0, :cond_10

    .line 1235
    invoke-virtual {v8, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1236
    iput-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->isNewIntentCallLog:Z

    .line 1244
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_6

    .line 1246
    const/4 v0, -0x1

    .line 1247
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    if-eqz v1, :cond_5

    .line 1248
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    .line 1250
    :cond_5
    if-ne v0, v6, :cond_11

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 1254
    invoke-direct {p0, v0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1255
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v0, v6}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 1263
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1264
    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_8

    .line 1270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1271
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    .line 1273
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->registerProviderStatusObserver()V

    .line 1277
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 1278
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    sput v0, Lcom/android/contacts/activities/DialtactsActivity;->mDisplayNameOrder:I

    .line 1280
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_b

    .line 1281
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_9

    .line 1282
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 1284
    :cond_9
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/contacts/activities/DialtactsActivity;->buildcarrier:Ljava/lang/String;

    const-string v1, "lt02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1285
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setEmbeddedTabs()V

    .line 1286
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1314
    :cond_b
    :goto_4
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_c

    .line 1315
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setdialogResultShowing(Z)V

    .line 1316
    :cond_c
    return-void

    :cond_d
    move v0, v7

    .line 1199
    goto/16 :goto_0

    .line 1209
    :cond_e
    invoke-virtual {v8}, Landroid/app/ActionBar;->show()V

    .line 1210
    const v0, 0x7f09022f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1213
    const-string v1, "feature_qhd"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1214
    const/16 v1, 0x60

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 1216
    :cond_f
    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 1239
    :cond_10
    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1240
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_4

    .line 1241
    sput v7, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    goto/16 :goto_2

    .line 1256
    :cond_11
    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_6

    .line 1258
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->onVisibilityChanged(Z)V

    goto/16 :goto_3

    .line 1288
    :cond_12
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_13

    .line 1289
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1290
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1291
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1292
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1293
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_4

    .line 1295
    :cond_13
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_15

    .line 1296
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-ne v0, v6, :cond_14

    .line 1297
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1298
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 1299
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1300
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateListModeTabPosition:Z

    .line 1301
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_4

    .line 1303
    :cond_14
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1304
    iput-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_4

    .line 1307
    :cond_15
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1308
    iput-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    goto/16 :goto_4
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1144
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1146
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->checkVoipState()V

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->onStart(Z)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1158
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_5

    .line 1159
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v0, :cond_2

    .line 1160
    :cond_1
    const-string v0, "DialtactsActivity"

    const-string v3, "reset buggy flag state.."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1162
    iput-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1165
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v4

    .line 1167
    const-string v0, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart(). current position: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Reset all menu visibility state."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-nez v4, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    move v3, v2

    .line 1171
    :goto_1
    const/4 v0, 0x4

    if-ge v3, v0, :cond_5

    .line 1172
    if-ne v3, v4, :cond_4

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1171
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1170
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1172
    goto :goto_2

    .line 1175
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color017:I

    .line 1176
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->resource:Landroid/content/res/Resources;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTw_color031:I

    .line 1177
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3206
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStatusChanged isMaximized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMinimized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPinup :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->WindowStatusChanged(Z)V

    .line 3208
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallDetailFragment:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->WindowStatusChanged(Z)V

    .line 3210
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_0

    .line 3211
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3212
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3213
    iput-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 3214
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3215
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 3234
    :cond_0
    :goto_0
    return-void

    .line 3218
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3220
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3221
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-direct {v0, p0, v5}, Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3222
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 3223
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 3225
    :cond_2
    iput-boolean v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z

    .line 3226
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 3227
    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mNavigationListener:Lcom/android/contacts/activities/DialtactsActivity$MyNavigationListener;

    .line 3228
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method public safe_moveTaskback()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2991
    const-string v0, "DialtactsActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2998
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2999
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3000
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 3002
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    .line 3003
    :cond_0
    const-string v0, "DialtactsActivity"

    const-string v1, "Launcher App is nothing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    move-result v0

    .line 3008
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish successBack="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3011
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3013
    if-eqz v6, :cond_4

    .line 3015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    move v1, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3016
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3017
    const-string v4, "DialtactsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runningTaskInfo.topActivity.getClassName()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v1

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3020
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3022
    iget-object v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v5

    .line 3023
    goto :goto_1

    .line 3027
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    .line 3028
    goto :goto_0

    :cond_4
    move v2, v3

    move v1, v3

    .line 3030
    :cond_5
    const-string v0, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "successBack after scan tasks = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const-string v0, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    if-ne v2, v5, :cond_7

    .line 3036
    :goto_2
    if-nez v3, :cond_6

    .line 3037
    const-string v0, "DialtactsActivity"

    const-string v1, "finish successBack is false so start Launcher "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3039
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3040
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3042
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 3044
    :cond_6
    return-void

    :cond_7
    move v3, v1

    goto :goto_2
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 2556
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 2557
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 2568
    :goto_0
    return-void

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 2563
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 2566
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method

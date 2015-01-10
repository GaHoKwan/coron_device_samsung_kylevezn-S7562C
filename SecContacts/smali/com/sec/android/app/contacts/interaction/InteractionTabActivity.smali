.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;,
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
    }
.end annotation


# static fields
.field private static SEND_ALL_NAMECARDS:I

.field private static SEND_INDIVIDUAL_NAMECARDS:I

.field private static mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

.field private static sendType:I


# instance fields
.field private final CONTACTS_TAG:Ljava/lang/String;

.field private final FAVORITES_TAG:Ljava/lang/String;

.field private final GROUPS_TAG:Ljava/lang/String;

.field private final LOGS_TAG:Ljava/lang/String;

.field count:I

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mActionbartitle:Ljava/lang/String;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

.field private mCurrentCount:I

.field private mCurrentOrientationmode:I

.field private mDeco:Landroid/view/View;

.field private mDisplayTab:Z

.field private mDoneButtonClickable:Z

.field private mEnableSelectAllFromMMS:Z

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

.field private mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsGroupConference:Z

.field private mIsMultiWindowSupported:Z

.field private mIsPhone:Z

.field private mIsRecreatedInstance:Z

.field private mIsSendingMSG:Z

.field private mIsStartMultiWindow:Z

.field private mIsTablet:Z

.field private mLimitedCount:I

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMainView:Landroid/view/View;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mOnlineSearchMode:I

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I

.field private mSpeedDial:Z

.field public mTabState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    .line 217
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 117
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 183
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 212
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->count:I

    .line 225
    const-string v0, "tab-contacts"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->CONTACTS_TAG:Ljava/lang/String;

    .line 227
    const-string v0, "tab-groups"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->GROUPS_TAG:Ljava/lang/String;

    .line 229
    const-string v0, "tab-logs"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->LOGS_TAG:Ljava/lang/String;

    .line 231
    const-string v0, "tab-favorites"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->FAVORITES_TAG:Ljava/lang/String;

    .line 243
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    .line 269
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    .line 666
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 178
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/sec/multiwindow/MultiWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->doDoneAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method private actionbarTitle(I)Ljava/lang/String;
    .locals 8
    .parameter "selectedCount"

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 744
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 745
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v2, v1

    .line 777
    .end local v1           #title:Ljava/lang/String;
    .local v2, title:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 749
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-nez v3, :cond_1

    .line 750
    if-lez p1, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03fc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 753
    .end local v1           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 757
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "actionbar_title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, actionBarTitle:Ljava/lang/String;
    const-string v3, "Send message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 760
    const v3, 0x7f0d0255

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 772
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    const-string v1, ""

    :cond_2
    move-object v2, v1

    .line 777
    .end local v1           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 761
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_3
    const-string v3, "Send email"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 762
    const v3, 0x7f0d0254

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 763
    :cond_4
    const-string v3, "Speed dial setting"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    const v3, 0x7f0d0253

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 765
    :cond_5
    const-string v3, "Share namecard via"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 766
    const v3, 0x7f0d024d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 768
    :cond_6
    const v3, 0x7f0d001d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private configureContactsFragments()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 612
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureContactsFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMultiSelectEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchMode(Z)V

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setLegacyCompatibilityMode(Z)V

    .line 619
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMMSinformation(IIIZ)V

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSpeedDial(Z)V

    .line 629
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v0

    if-nez v0, :cond_2

    .line 636
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 642
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    if-nez v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectoryResultLimit(I)V

    .line 648
    :goto_2
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setMMSinformation(III)V

    goto :goto_0

    .line 639
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    goto :goto_1

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    goto :goto_2
.end method

.method private configureFavoritesFragments()V
    .locals 4

    .prologue
    .line 651
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments - configureFavoritesFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMMSinformation(III)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setLegacyCompatibilityMode(Z)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setMultiSelectEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSearchMode(Z)V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDirectorySearchMode(I)V

    .line 659
    return-void
.end method

.method private configureFragments(I)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 591
    const-string v0, "InteractionTabActivity"

    const-string v1, "configureFragments"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 595
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 596
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureGroupsFragments()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSendingMSG(Z)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSendingMSG(Z)V

    .line 604
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setSendingMSG(Z)V

    .line 608
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 609
    return-void
.end method

.method private configureGroupsFragments()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 663
    return-void
.end method

.method private createViewsAndMultipleFragments(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f090161

    .line 500
    const-string v2, "InteractionTabActivity"

    const-string v3, "createViewsAndMultipleFragments"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;IZ)V

    sput-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .line 504
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->checkTalkBackEnable()V

    .line 505
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 506
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    .line 508
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_9

    .line 509
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 514
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 515
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 517
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 519
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_0

    .line 520
    const-string v2, "tab-groups"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 523
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "tab-logs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 527
    :cond_1
    const-string v2, "tab-favorites"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 535
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-nez v2, :cond_6

    .line 536
    :cond_2
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 537
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_3

    .line 538
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 540
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_4

    .line 541
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 543
    :cond_4
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 547
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_5

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v3, "tab-groups"

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 550
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_6

    .line 551
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v3, "tab-logs"

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 554
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 555
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_7

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 558
    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_8

    .line 559
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 561
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 563
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 564
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 566
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(I)V

    .line 567
    return-void

    .line 511
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :cond_9
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const-string v3, "currentTab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    goto/16 :goto_0
.end method

.method private createViewsAndSingleFragments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 572
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 575
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v2, :cond_0

    .line 579
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 580
    const v2, 0x7f090161

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const-string v4, "tab-contacts"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 582
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 583
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 585
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v2, :cond_1

    .line 586
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 588
    :cond_1
    return-void
.end method

.method private doDoneAction()V
    .locals 3

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_3

    .line 859
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    goto :goto_0

    .line 864
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0
.end method

.method private getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0d0238

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1925
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1926
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v7

    .line 1929
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 1931
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1932
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1934
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1935
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1936
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1937
    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1938
    :cond_0
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1941
    :goto_0
    if-eqz v1, :cond_1

    .line 1942
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1946
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method private handleHomeKeyForVideoCall(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1186
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1189
    if-eqz p1, :cond_1

    .line 1190
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isVideoCallActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    .line 1192
    const/high16 v1, 0x1

    .line 1193
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->requestSystemKeyEvent(IZ)Z

    .line 1197
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private hasActiveVideoCall()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1202
    .line 1204
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1205
    if-eqz v1, :cond_0

    .line 1206
    const-string v2, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isVideoCallActive() :  phone.isIdle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phone.getActivePhoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1214
    :cond_0
    :goto_0
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoCallActive..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return v0

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    const-string v2, "InteractionTabActivity"

    const-string v3, "Connection Failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 1804
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1805
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1806
    return-void
.end method

.method private isVideoCallActive()Z
    .locals 1

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hasActiveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;->hasActiveImsCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1596
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, keyStrings:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, dataStrings:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    .local v2, resultString:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0x118

    if-ne v4, v5, :cond_0

    .line 1603
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1614
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1

    .line 1615
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1616
    .local v3, shareUri:Landroid/net/Uri;
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1622
    .end local v3           #shareUri:Landroid/net/Uri;
    :cond_1
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_2

    .line 1623
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1626
    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x21

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_4

    .line 1628
    :cond_3
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1630
    :cond_4
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_5

    .line 1631
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1633
    :cond_5
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v5, 0xbe

    if-ne v4, v5, :cond_6

    .line 1635
    aget-object v4, v1, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1641
    :cond_6
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1642
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1652
    :cond_7
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1223
    const/4 v0, 0x0

    .line 1225
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1227
    if-eqz v1, :cond_0

    .line 1228
    if-eqz p2, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v1

    .line 1240
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setActionBarLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1888
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setMultiWindow(Z)V

    .line 1891
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateActionBarMode(I)V

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setMultiWindow(Z)V

    .line 1894
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateActionBarMode(I)V

    goto :goto_0
.end method

.method private setCurrentFragmentActiveFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1829
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 1857
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v0, :cond_2

    .line 1835
    :cond_1
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment or mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1839
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1849
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 1841
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 1845
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 1853
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    .line 1839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentFragmentSoftInputMode()V
    .locals 2

    .prologue
    .line 1861
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    .line 1879
    :goto_0
    return-void

    .line 1866
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1874
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setSoftInputMode()V

    goto :goto_0

    .line 1868
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSoftInputMode()V

    goto :goto_0

    .line 1871
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSoftInputMode()V

    goto :goto_0

    .line 1866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setupMultiWindow()V
    .locals 2

    .prologue
    .line 699
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-nez v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDeco:Landroid/view/View;

    .line 703
    const v1, 0x7f0900f7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMainView:Landroid/view/View;

    .line 705
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 706
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 707
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private updateMultipleFragmentVisibility(Z)V
    .locals 6
    .parameter

    .prologue
    .line 1063
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateMultipleFragmentVisibility"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1068
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    packed-switch v2, :pswitch_data_0

    .line 1169
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1170
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1171
    :goto_1
    return-void

    .line 1070
    :pswitch_0
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->GROUPS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    .line 1072
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setVTConferenceMode(Z)V

    .line 1074
    if-eqz p1, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1076
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1077
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1078
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1079
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1085
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1086
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1087
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1088
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    .line 1093
    :pswitch_1
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->CONTACTS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1095
    :cond_2
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1100
    :cond_3
    if-eqz p1, :cond_4

    .line 1101
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1102
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1103
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_4

    .line 1104
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1109
    :cond_4
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_5

    .line 1110
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1112
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1113
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1114
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1119
    :pswitch_2
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->FAVORITES"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1121
    :cond_6
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1126
    :cond_7
    if-eqz p1, :cond_8

    .line 1128
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1129
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1130
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_8

    .line 1131
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 1136
    :cond_8
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_9

    .line 1137
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1139
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1140
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1141
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_a

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1145
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSearchViewClearFocus()V

    goto/16 :goto_0

    .line 1148
    :pswitch_3
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->LOGS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    if-eqz p1, :cond_b

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearSelectedArray()V

    .line 1153
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    .line 1154
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearSelectedArray()V

    .line 1155
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->clearCustomSearchResult()V

    .line 1159
    :cond_b
    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v2, :cond_c

    .line 1160
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1162
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1163
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 1164
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateSingleFragmentVisibility()V
    .locals 3

    .prologue
    .line 1048
    const-string v0, "InteractionTabActivity"

    const-string v1, "updateSingleFragmentVisibility"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1053
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1054
    :cond_0
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1059
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 3

    .prologue
    const/16 v1, 0x1e

    .line 712
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 714
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 720
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    .line 721
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 722
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_1

    .line 723
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 728
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 729
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_3

    .line 730
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 732
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 733
    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionbartitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1182
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1177
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1178
    .local v0, action:I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public hideSoftKeyboardInFragment(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1810
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1812
    packed-switch p1, :pswitch_data_0

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1814
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1819
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1820
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiwindowMode()Z
    .locals 1

    .prologue
    .line 1883
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1777
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1779
    packed-switch p1, :pswitch_data_0

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1781
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1782
    if-eqz p3, :cond_1

    .line 1783
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1785
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 1791
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1792
    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1794
    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1795
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 1779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 941
    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-nez v0, :cond_0

    .line 944
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    .line 946
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_5

    .line 947
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_2

    .line 948
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 971
    :cond_1
    :goto_0
    return-void

    .line 952
    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_3

    .line 953
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_0

    .line 957
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_4

    .line 959
    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    goto :goto_0

    .line 961
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_1

    .line 962
    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_0

    .line 969
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 1274
    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0xffff

    const/16 v9, 0x3e8

    const/16 v8, 0xfa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const-string v3, "InteractionTabActivity"

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 279
    new-instance v3, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentOrientationmode:I

    .line 283
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    .line 284
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    .line 285
    new-instance v3, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    .line 288
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 289
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    .line 290
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 291
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupMultiWindow()V

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 299
    .local v1, mIntent:Landroid/content/Intent;
    const-string v3, "isGroupConference"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    .line 301
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 305
    const-string v3, "isLogsTabBlock"

    const-string v6, "logblock"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "vip-email"

    const-string v6, "additional"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pick-contact-from-tab"

    const-string v6, "additional"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    :cond_1
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 309
    sput-boolean v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 354
    :goto_0
    if-eqz p1, :cond_8

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    .line 355
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v3, :cond_9

    .line 356
    const-string v3, "InteractionTabActivity"

    const-string v5, "mIsRecreatedInstance"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v3, "actionCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 358
    const-string v3, "extraValue"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 359
    const-string v3, "maxRecipientCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 360
    const-string v3, "existingRecipientCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 361
    const-string v3, "from_speed_dial"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 362
    const-string v3, "displayTab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 363
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    if-eqz v3, :cond_2

    .line 364
    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    const-string v5, "currentTab"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 366
    const-string v3, "InteractionTabActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRecreatedInstance-mTabState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2
    const-string v3, "doneButtonClickable"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    .line 369
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    const-string v3, "FromMMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    .line 374
    :cond_3
    const-string v3, "mSelectedCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    .line 375
    const-string v3, "mOnlineSearchMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 377
    const-string v3, "FromMMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    .line 463
    :goto_2
    const-string v3, "InteractionTabActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mActionCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v3, "InteractionTabActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLimitedCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v3, "InteractionTabActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v2

    .line 468
    .local v2, redirect:Landroid/content/Intent;
    if-eqz v2, :cond_19

    .line 470
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 497
    .end local v2           #redirect:Landroid/content/Intent;
    :goto_3
    return-void

    .line 312
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v3

    const/16 v6, 0x25

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v3

    const/16 v6, 0x26

    if-ne v3, v6, :cond_6

    .line 314
    :cond_5
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 315
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    .line 319
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v3

    const/16 v6, 0x1e

    if-ne v3, v6, :cond_7

    .line 320
    sput-boolean v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 321
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    .line 324
    :cond_7
    sput-boolean v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 325
    sput-boolean v5, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto/16 :goto_0

    :cond_8
    move v3, v5

    .line 354
    goto/16 :goto_1

    .line 380
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 384
    const-string v3, "InteractionTabActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mExtraValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 386
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_3

    .line 395
    :cond_a
    new-instance v3, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 396
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v3

    sput v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    .line 398
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getRecipientLimit()I

    move-result v0

    .line 400
    .local v0, limitedMmsCount:I
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0x96

    if-ne v3, v6, :cond_e

    .line 401
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    const/16 v7, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 444
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "existingRecipientCount"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "from_speed_dial"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 451
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    .line 453
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "FromMMS"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    .line 460
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "FromMMS"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    goto/16 :goto_2

    .line 406
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_4

    .line 408
    :cond_e
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0xa0

    if-ne v3, v6, :cond_f

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_4

    .line 411
    :cond_f
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0xaa

    if-ne v3, v6, :cond_10

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_4

    .line 413
    :cond_10
    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    if-ne v3, v6, :cond_11

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    if-ne v3, v8, :cond_11

    .line 415
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_MaxCountVcardAttachment"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 417
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    if-gtz v3, :cond_b

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 420
    :cond_11
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_12

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v6, 0x11

    if-ne v3, v6, :cond_12

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 423
    :cond_12
    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    const/16 v6, 0x12d

    if-eq v3, v6, :cond_13

    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    const/16 v6, 0x12e

    if-ne v3, v6, :cond_14

    .line 426
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 427
    :cond_14
    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    if-ne v3, v6, :cond_17

    .line 428
    const-string v3, "SPH-D710"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "aegis2vzw"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "SPH-D710BST"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "SPH-D710VMUB"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 432
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 434
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 436
    :cond_17
    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    if-ne v3, v6, :cond_18

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 440
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "maxRecipientCount"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto/16 :goto_4

    .line 475
    .end local v0           #limitedMmsCount:I
    .restart local v2       #redirect:Landroid/content/Intent;
    :cond_19
    const v3, 0x7f040059

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setContentView(I)V

    .line 477
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v3, :cond_1a

    .line 478
    const v3, 0x7f090166

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mInteractionLayout:Landroid/view/View;

    .line 481
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 484
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v3, :cond_1c

    .line 485
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndMultipleFragments(Landroid/os/Bundle;)V

    .line 490
    :goto_5
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v3, :cond_1b

    .line 491
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setTabletLayoutAttribute(Z)V

    .line 494
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    goto/16 :goto_3

    .line 487
    :cond_1c
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndSingleFragments(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 782
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 784
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 786
    const v0, 0x7f0903b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 787
    const v0, 0x7f0903a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0d0052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0d0053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 792
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getShowIconWithTextOnActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040005

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 800
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 820
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    const-string v0, "InteractionTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 921
    :cond_0
    sput-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 922
    sput-boolean v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 937
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 938
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 841
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 854
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 844
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    .line 845
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 848
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->doDoneAction()V

    goto :goto_0

    .line 841
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1027
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 1029
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    .line 1032
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 825
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 836
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onQueryCompleted(Landroid/database/Cursor;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1990
    const/4 v0, 0x0

    .line 1992
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1993
    :cond_0
    if-eqz p1, :cond_2

    .line 1994
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1995
    if-nez v0, :cond_3

    .line 1996
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2002
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2006
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2007
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2009
    return-void

    .line 1999
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 988
    const-string v0, "InteractionTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 990
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsGroupConference:Z

    if-eqz v0, :cond_0

    .line 991
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->handleHomeKeyForVideoCall(Z)V

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 995
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_6

    .line 996
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->checkTalkBackEnable()V

    .line 997
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V

    .line 998
    const-string v1, "isLogsTabBlock"

    const-string v2, "logblock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vip-email"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pick-contact-from-tab"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    :cond_1
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1002
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 1018
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    .line 1023
    :goto_1
    return-void

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_4

    .line 1007
    :cond_3
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1008
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto :goto_0

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_5

    .line 1011
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1012
    sput-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto :goto_0

    .line 1015
    :cond_5
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 1016
    sput-boolean v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    goto :goto_0

    .line 1020
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateSingleFragmentVisibility()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1247
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1254
    const-string v0, "extraValue"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1257
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1258
    const-string v0, "displayTab"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1259
    const-string v0, "currentTab"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    const-string v0, "doneButtonClickable"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1261
    const-string v0, "mSelectedCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1262
    const-string v0, "mOnlineSearchMode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mOnlineSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1264
    const-string v0, "FromMMS"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1266
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableSelectAllAsMsgRecipient"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    const-string v0, "FromMMS"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mEnableSelectAllFromMMS:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1270
    :cond_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSelectedTabChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 1036
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelectedTabChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    .line 1038
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentActiveFlag()V

    .line 1039
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setCurrentFragmentSoftInputMode()V

    .line 1040
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateMultipleFragmentVisibility(Z)V

    .line 1043
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z

    .line 1044
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->invalidateOptionsMenu()V

    .line 1045
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 688
    if-eqz p1, :cond_1

    .line 689
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    .line 693
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setTabletLayoutAttribute(Z)V

    .line 695
    :cond_0
    return-void

    .line 691
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsStartMultiWindow:Z

    goto :goto_0
.end method

.method public returnContactIdPickerResult(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1495
    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1499
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    .line 1502
    :cond_0
    return-object v0
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1428
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1429
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1431
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1432
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1434
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 1438
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1439
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1440
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    const/16 v1, 0x3b

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1443
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1448
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    const-string v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1451
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1452
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    if-eqz v3, :cond_0

    .line 1456
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 1457
    goto :goto_0

    .line 1459
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1461
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1463
    const-string v2, "result"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1464
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1467
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1468
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    const-string v2, "phone_data_id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1471
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1472
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1480
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1484
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1485
    const-string v0, "datatype"

    const-string v2, "contact"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "has_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1488
    const-string v0, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    const-string v0, "phone_data_id"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1491
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1492
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1680
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1681
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1684
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1686
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 1663
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 1665
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1666
    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1667
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1668
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :goto_0
    return-void

    .line 1674
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1676
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1506
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1510
    const/4 v1, 0x0

    .line 1511
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v4, :cond_1

    .line 1512
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1513
    const-string v1, ";"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1515
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1516
    const-string v1, ";"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1520
    :cond_1
    const-string v1, ";"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1525
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1526
    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1527
    const-string v1, "datatype"

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1529
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public returnSoureIdPickerResult(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    const/4 v1, 0x0

    .line 1535
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1536
    const-string v3, ";"

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    if-nez v1, :cond_0

    :goto_1
    move-object v1, v0

    .line 1541
    goto :goto_0

    .line 1540
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1545
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    .line 1546
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$SourceIdQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1547
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public sendActionIntent(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1555
    const-string v5, ";"

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1558
    :cond_0
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x21

    if-ne v4, v5, :cond_2

    .line 1559
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1560
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1592
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1593
    return-void

    .line 1562
    :cond_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    .line 1563
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1564
    const-string v0, "videocall"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1565
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1567
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    .line 1568
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    const-string v2, "smsto"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1570
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1571
    const-string v1, "sendto"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1572
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1574
    :cond_4
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_6

    .line 1575
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 1576
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1577
    const-string v0, ""

    aput-object v0, v4, v2

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1576
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1581
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1582
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1585
    :cond_6
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x125

    if-ne v0, v1, :cond_1

    .line 1586
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1588
    const-string v2, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1590
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public sendContactsIntent(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1693
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1694
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1697
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1698
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1700
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1702
    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1749
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1750
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1753
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_1

    .line 1754
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1758
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1773
    :goto_1
    return-void

    .line 1760
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    .line 1761
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1762
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1767
    const v1, 0x7f0d024d

    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 1768
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1769
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 1771
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1707
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1708
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1712
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1715
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_1

    .line 1716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1717
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1720
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1742
    :goto_1
    return-void

    .line 1722
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    .line 1723
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1724
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "dummy"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text/x-vcard"

    aput-object v6, v4, v5

    new-instance v5, Landroid/content/ClipData$Item;

    const-string v6, "dummy"

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1731
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1735
    const v0, 0x7f0d024d

    invoke-static {p0, v1, v0}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 1737
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1738
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 1740
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setTabletLayoutAttribute(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 873
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    .line 877
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setActionBarLayout()V

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 881
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 882
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 907
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 908
    return-void

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 886
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 887
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 888
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 889
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 892
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 905
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f04006e

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 895
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_3

    .line 896
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setActionBarLayout()V

    .line 897
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 902
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 903
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 976
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 979
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 984
    :cond_0
    return-void
.end method

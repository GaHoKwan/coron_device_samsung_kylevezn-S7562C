.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;,
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field private static callPressed:Z

.field private static isVoLTEEnabled:Z

.field private static sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

.field private static sipAddressPressed:Z


# instance fields
.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

.field private fromDialer:Z

.field private isMMSAvailable:Z

.field private isPortrait:Z

.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAlerttoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaLayer:Landroid/view/View;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatOnEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mCustomAlerttone:Ljava/lang/String;

.field private mCustomRingtone:Ljava/lang/String;

.field private mCustomVibrationUri:Ljava/lang/String;

.field private mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeIsSet:Z

.field private mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDualCall:Z

.field private mHasIPCall:Z

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mHasVideoCall:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mIsChangingConfiguration:Z

.field private mIsClosedByUser:Z

.field private mIsDirectoryContact:Z

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mJoinEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoActionPopUp:Landroid/app/AlertDialog;

.field private mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

.field private mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowEmptyLayout:Z

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStaticPhotoView:Landroid/widget/ImageView;

.field private mStaticTwHeaderView:Landroid/widget/LinearLayout;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mTransitionAnimationRequested:Z

.field private mTwEmptyView:Landroid/view/View;

.field private mUseMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

.field private mVAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mVibrationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mlistGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sIsMotionCallEnabled:Z

.field private sIsVibrator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 449
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    .line 459
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 460
    sput-boolean v1, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 287
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 289
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 291
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 295
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

    .line 297
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mUseMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

    .line 301
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 304
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 305
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsClosedByUser:Z

    .line 311
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ZERO:I

    .line 312
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ONE:I

    .line 315
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 408
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 456
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 466
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 898
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    .line 464
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 490
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 287
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 289
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 291
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 295
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

    .line 297
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mUseMotionPickUpToMakeCallDialog:Landroid/app/AlertDialog;

    .line 301
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 304
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 305
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsClosedByUser:Z

    .line 311
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ZERO:I

    .line 312
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->SIM_ONE:I

    .line 315
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 408
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 456
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 466
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 898
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    .line 491
    const-string v0, "IsDialerFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 492
    const-string v0, "Portrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 493
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    sput-boolean p0, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->showPhotoActionPopup(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    :cond_0
    return-void
.end method

.method private addMoreNetworks()V
    .locals 5

    .prologue
    .line 2540
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V

    .line 2544
    .local v1, popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$21;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$21;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 2556
    .local v2, popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$22;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$22;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2564
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->forMoreNetworks(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2565
    return-void
.end method

.method private addNetworks()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 2474
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2530
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v2

    .line 2479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2480
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 2484
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2485
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 2490
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0d019e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2491
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v7, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    if-eqz v0, :cond_3

    .line 2495
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2496
    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2497
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2498
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2501
    if-lez v3, :cond_3

    .line 2502
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 2510
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->fromAccountType(Landroid/content/Context;Lcom/android/contacts/model/AccountType;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2514
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 2515
    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 2516
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 2520
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2479
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2524
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2527
    if-lez v4, :cond_0

    .line 2528
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_0
.end method

.method private addPhoneticName()V
    .locals 4

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    .line 2451
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2464
    :goto_0
    return-void

    .line 2456
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0d019d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2457
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v3, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2461
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2462
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2463
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2792
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return-object v1

    .line 2795
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2796
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 25

    .prologue
    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->isMMSAvailable:Z

    .line 1417
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    .line 1420
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsVibrator:Z

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 1439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v2, :cond_2

    .line 2084
    :cond_1
    :goto_0
    return-void

    .line 1443
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomAlerttone()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v13

    .line 1449
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1457
    const/4 v2, 0x0

    .line 1459
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    .line 1461
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v3, v2

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 1463
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1464
    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1465
    const-string v5, "data_set"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1466
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v21

    .line 1473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1474
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v22

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4c

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v6, "com.coolots.chaton"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1478
    const/4 v3, 0x1

    move v12, v3

    .line 1480
    :goto_2
    if-eqz v4, :cond_4

    .line 1481
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.sec.contact.phone"

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcsForRawContact(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020601

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 1492
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1493
    const-string v2, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    const-string v2, "_id"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1496
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1497
    if-eqz v3, :cond_5

    .line 1499
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1500
    const-string v2, "data1"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1501
    if-eqz v2, :cond_5

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1487
    :cond_6
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1510
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v17, :cond_e

    const-string v2, "com.android.nttdocomo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v18, :cond_e

    const-string v2, "myprofile"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1513
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1520
    :goto_5
    if-nez v4, :cond_8

    const-string v2, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1523
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v9

    .line 1527
    move/from16 v0, v22

    iput-boolean v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    .line 1529
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    .line 1530
    :goto_6
    const-string v8, "is_super_primary"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1531
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    .line 1533
    :goto_7
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1535
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    if-eqz v2, :cond_1b

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 1538
    const-string v2, "normalized_number"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1541
    iget-object v5, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1542
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1543
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1554
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1556
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_13

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "smsto"

    const-string v10, ","

    const-string v11, "P"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ";"

    const-string v11, "W"

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v7, v5, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1559
    :goto_a
    if-eqz v3, :cond_a

    .line 1560
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1564
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v5, :cond_18

    .line 1565
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1567
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1568
    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1569
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1571
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1573
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1579
    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    .line 1598
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    .line 1619
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v2, :cond_c

    .line 1622
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1623
    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1625
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/android/contacts/detail/ContactDetailFragment$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 1632
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1637
    :cond_c
    if-eqz v8, :cond_d

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 1639
    :cond_d
    iput-boolean v8, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1516
    :cond_e
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    goto/16 :goto_5

    .line 1529
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1531
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1545
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "iw"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1550
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto/16 :goto_8

    .line 1554
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1556
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1581
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto/16 :goto_b

    .line 1583
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const/4 v2, 0x1

    :goto_c
    iput-boolean v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto/16 :goto_b

    :cond_17
    const/4 v2, 0x0

    goto :goto_c

    .line 1585
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_19

    .line 1586
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1588
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_b

    .line 1589
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v2, :cond_1a

    .line 1590
    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1591
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1593
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_b

    .line 1595
    :cond_1a
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1596
    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_b

    .line 1642
    :cond_1b
    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    if-eqz v2, :cond_1d

    .line 1645
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableOptionToSelectEmailMMS4EmailAddress"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1647
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1648
    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1649
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1650
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1652
    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$11;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1661
    iput-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1673
    :goto_d
    iput-boolean v8, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/contacts/util/DataStatus;

    .line 1678
    if-eqz v11, :cond_5

    .line 1679
    const-string v2, "vnd.android.cursor.item/im"

    .line 1680
    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1682
    if-eqz v4, :cond_5

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v2

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 1687
    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1663
    :cond_1c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v10, "mailto"

    iget-object v11, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v10, v11, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1671
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto :goto_d

    .line 1690
    :cond_1d
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v2, :cond_1e

    .line 1692
    const/16 v2, 0xa

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1693
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1694
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1696
    :cond_1e
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v2, :cond_20

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    .line 1702
    if-eqz v2, :cond_1f

    .line 1703
    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1705
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1706
    :cond_20
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1709
    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v2, :cond_23

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v2

    cmp-long v2, v2, v19

    if-nez v2, :cond_21

    const/4 v2, 0x1

    .line 1714
    :goto_e
    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    .line 1718
    :goto_f
    if-nez v2, :cond_5

    .line 1719
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1711
    :cond_21
    const/4 v2, 0x0

    goto :goto_e

    .line 1714
    :cond_22
    const/4 v2, 0x0

    goto :goto_f

    .line 1722
    :cond_23
    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v2, :cond_24

    .line 1724
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1725
    const/16 v2, 0x3e8

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1727
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1729
    :cond_24
    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    if-eqz v2, :cond_25

    .line 1731
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1732
    const/4 v2, 0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1734
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1735
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1738
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1739
    :catch_0
    move-exception v2

    .line 1740
    const-string v2, "ContactDetailFragment"

    const-string v3, "Couldn\'t parse website"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1743
    :cond_25
    const-string v5, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v2, :cond_28

    .line 1745
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1746
    const/4 v2, 0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1747
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1749
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1750
    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1760
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1751
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v2, :cond_27

    .line 1752
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "sip"

    iget-object v6, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1755
    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconDescriptionRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto :goto_11

    .line 1757
    :cond_27
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1758
    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_11

    .line 1767
    :cond_28
    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz v2, :cond_2c

    .line 1768
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x1040410

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1777
    :cond_29
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1779
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1780
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 1781
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1790
    :goto_12
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1785
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_12

    .line 1788
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_12

    .line 1793
    :cond_2c
    const-string v5, "vnd.android.cursor.item/relation"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    if-eqz v2, :cond_2e

    .line 1794
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1795
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "query"

    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "fromDetail"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1800
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1801
    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v9, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 1803
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1805
    :cond_2e
    const-string v2, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1807
    const-string v2, "normalized_number"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1809
    const-string v3, "data1"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KR"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1813
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1822
    :cond_2f
    :goto_13
    if-nez v3, :cond_30

    .line 1826
    :cond_30
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1827
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1828
    const v2, 0x7f0d0189

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1829
    const v2, 0x7f020514

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0387

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1814
    :cond_31
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1818
    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_13

    .line 1872
    :cond_32
    const-string v2, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1873
    const-string v2, "data1"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1874
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1877
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1878
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v4, "com.sds.vapp.voipcall"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1879
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v4, "user_account"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1880
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v4, "video_call"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1881
    const v3, 0x7f0d018a

    iput v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1882
    const v3, 0x7f020570

    iput v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1884
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1885
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v4, "com.sds.vapp.voipcall"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v4, "user_account"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1887
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    const-string v3, "video_call"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1888
    const v2, 0x7f0d018b

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1889
    const v2, 0x7f02056e

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0388

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1895
    :cond_33
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1896
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1899
    iget-object v2, v4, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v2, :cond_34

    .line 1900
    iget-object v2, v4, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v7}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1901
    if-nez v2, :cond_35

    const/4 v2, 0x0

    :goto_14
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1904
    :cond_34
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1909
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1901
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 1912
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_37
    move v3, v12

    .line 1919
    goto/16 :goto_1

    .line 1922
    :cond_38
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 1925
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    if-eqz v2, :cond_39

    .line 1926
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeIPCallEntry()V

    .line 1932
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 1933
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    if-eqz v2, :cond_3a

    .line 1934
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeVideoCallEntry()V

    .line 1939
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1951
    :cond_3b
    if-eqz v14, :cond_41

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 1952
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1953
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$12;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 1962
    iput-object v14, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    .line 1963
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0d019e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1964
    const v6, 0x7f020524

    iput v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 1965
    const v6, 0x7f0d019e

    iput v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 1966
    iput-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1968
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_3c
    :goto_15
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/android/contacts/detail/ContactDetailFragment$13;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    .line 2007
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3d

    if-nez v3, :cond_3d

    .line 2009
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtoneName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->makeRingtoneEntry(Ljava/lang/String;)V

    .line 2014
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsVibrator:Z

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3e

    if-nez v3, :cond_3e

    .line 2016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->makeVibrationEntry(Ljava/lang/String;)V

    .line 2021
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->isMMSAvailable:Z

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3f

    if-nez v3, :cond_3f

    .line 2025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getCustomAlerttoneName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAlerttoneEntry(Ljava/lang/String;)V

    .line 2031
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v3, :cond_42

    .line 2072
    :cond_40
    :goto_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2073
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeFreeTextEntry()V

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->homepage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->facebook:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->twitter:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->cyworld:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalWebsiteEntry(Ljava/lang/String;)V

    .line 2080
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalEmailEntry()V

    .line 2081
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeAdditionalEventEntry()V

    goto/16 :goto_0

    .line 1970
    :cond_41
    const-string v2, "ContactDetailFragment"

    const-string v5, "Account icons are unavailable."

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 2034
    :cond_42
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 2035
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2036
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2038
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/sec/android/app/contacts/util/ContactsUtil;->covertToSystemTitle(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    const-string v5, "mimetype"

    iput-object v5, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2040
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0d013d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2042
    const/16 v4, 0xa

    iput v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_43
    const/4 v2, 0x0

    :cond_44
    iput-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_45
    const/4 v2, -0x1

    :goto_17
    iput v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2049
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2050
    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2053
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 2046
    :cond_47
    const v2, 0x7f020054

    goto :goto_17

    .line 2055
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_40

    .line 2056
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2057
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2059
    const-string v4, "mimetype"

    iput-object v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0d013d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2062
    const/16 v4, 0xa

    iput v4, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v2, 0x0

    :cond_49
    iput-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isGooglePlus()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, -0x1

    :goto_18
    iput v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2066
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2067
    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2069
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 2064
    :cond_4b
    const v2, 0x7f020054

    goto :goto_18

    :cond_4c
    move v12, v3

    goto/16 :goto_2
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x5

    const v6, 0x7f0d0189

    const v5, 0x7f020568

    .line 2805
    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v1, "mimetype"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2807
    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/android/contacts/detail/ContactDetailFragment;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2865
    :cond_0
    :goto_0
    return-void

    .line 2811
    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "data1"

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2812
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2816
    if-eqz v1, :cond_3

    move v1, v2

    .line 2818
    :goto_2
    if-ne v1, v2, :cond_7

    .line 2819
    const-string v0, "chat_capability"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2820
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2821
    :goto_3
    iput v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 2822
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 2824
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2825
    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2828
    iput v6, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2831
    const v0, 0x7f0d018b

    iput v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto/16 :goto_0

    .line 2811
    :cond_2
    const-string v0, "data1"

    goto/16 :goto_1

    .line 2816
    :cond_3
    const-string v0, "data5"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    .line 2820
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    .line 2832
    :cond_5
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 2834
    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2837
    iput v6, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2840
    const v0, 0x7f0d018a

    iput v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto/16 :goto_0

    .line 2842
    :cond_6
    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2845
    iput v6, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_0

    .line 2849
    :cond_7
    const-string v0, "data6"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2851
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 2853
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v0

    .line 2856
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2857
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2858
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "imto"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2860
    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2861
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2862
    iput v6, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto/16 :goto_0
.end method

.method private checkWebExAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2704
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.cisco.webex.meetings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2706
    const-string v3, "share"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2708
    const-string v3, "SignInFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2709
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2716
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2712
    goto :goto_0

    .line 2714
    :catch_0
    move-exception v0

    .line 2715
    const-string v0, "ContactDetailFragment"

    const-string v2, "WebEx app is not installed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2716
    goto :goto_0
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 4253
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 4254
    .local v0, clearIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4255
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 1363
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 1365
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, arr$:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1366
    .local v1, fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1367
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 1373
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 1374
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    :goto_1
    return-void

    .line 1365
    .restart local v1       #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1376
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 3
    .parameter

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4260
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4285
    :goto_0
    return-void

    .line 4267
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v2, "clipboardEx"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 4268
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 4269
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 4270
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0
.end method

.method private copyToDialingScreen(I)V
    .locals 5
    .parameter

    .prologue
    .line 4312
    .line 4314
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4315
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4318
    const-string v0, "withSpecialChar"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4319
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4320
    return-void
.end method

.method private createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 4078
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 4080
    :cond_0
    return-void
.end method

.method private createSelectSimDialog(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 2285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2289
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "vnd.sec.contact.sim"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.sec.contact.sim2"

    aput-object v1, v4, v0

    .line 2293
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2295
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 2298
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$18;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f040155

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailFragment$18;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 2345
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$19;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 2377
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$20;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$20;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2385
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d033c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private deleteContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 4306
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createDeleteItemIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 4307
    .local v0, deleteIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4308
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    const/4 v6, 0x0

    .line 2726
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2729
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2730
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v3, v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2732
    .local v3, kind:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2733
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v2

    .line 2734
    .local v2, isNosync:Z
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2735
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v5, v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2748
    .end local v2           #isNosync:Z
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2749
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->getValidTitlePosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2750
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setValidTitlePosition(I)V

    .line 2756
    .end local v3           #kind:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 2758
    if-eqz v1, :cond_1

    .line 2759
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2737
    .end local v1           #i:I
    .restart local v2       #isNosync:Z
    .restart local v3       #kind:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2740
    .end local v2           #isNosync:Z
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2741
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v5, v3}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2743
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2765
    .end local v3           #kind:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2766
    return-void
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 1383
    const-wide/16 v0, -0x1

    .line 1384
    .local v0, defaultGroupId:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 1385
    .local v2, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1387
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 1391
    .end local v0           #defaultGroupId:J
    .end local v2           #group:Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 1388
    .restart local v0       #defaultGroupId:J
    .restart local v2       #group:Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private final getNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1396
    const/4 v2, 0x0

    .line 1397
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1398
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1399
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1400
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v3, :cond_0

    .line 1401
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 1405
    .end local v0           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .parameter
    .parameter
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2774
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, groupMetaData:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 2788
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 2779
    .local v0, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 2781
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2782
    .local v2, title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2783
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2868
    const-string v1, "data5"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2869
    if-nez v1, :cond_0

    .line 2877
    :goto_0
    return v0

    .line 2873
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2877
    const/4 v0, 0x1

    goto :goto_0

    .line 2874
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSharableData(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 4187
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4199
    :cond_0
    const/4 v0, 0x1

    .line 4201
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAdditionalEmailEntry()V
    .locals 7

    .prologue
    const v6, 0x7f0d0060

    .line 2154
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2156
    const-string v1, "vnd.android.cursor.item/email_v2"

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2157
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2158
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2159
    const v1, 0x7f02051d

    iput v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2161
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2163
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableOptionToSelectEmailMMS4EmailAddress"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2165
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2166
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2167
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2168
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2170
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$15;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$15;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2179
    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2192
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    :cond_0
    return-void

    .line 2181
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto"

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2184
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkWebExAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2185
    const v1, 0x7f020571

    iput v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 2186
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 2187
    const v1, 0x7f0d02c4

    iput v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 2189
    :cond_2
    iput v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    goto :goto_0
.end method

.method private makeAdditionalEventEntry()V
    .locals 5

    .prologue
    .line 2105
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2107
    const-string v1, "vnd.android.cursor.item/contact_event"

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2108
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2109
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0d013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2110
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x1040410

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 2112
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2114
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2116
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2117
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2118
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2127
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 2128
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    :cond_0
    return-void

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 2125
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeAdditionalWebsiteEntry(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d013a

    .line 2134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2135
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2137
    const-string v1, "vnd.android.cursor.item/website"

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2138
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 2139
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2140
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2141
    const v1, 0x7f02051e

    iput v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2143
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 2144
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2146
    iput v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2148
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_0
    return-void
.end method

.method private makeAlerttoneEntry(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2622
    if-nez p1, :cond_0

    .line 2662
    :goto_0
    return-void

    .line 2626
    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$24;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$24;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2648
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2650
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2651
    iput-object p1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2652
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2653
    const-string v2, "vnd.android.cursor.item/alerttone"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2654
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2655
    const v0, 0x7f020054

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2656
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2658
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2659
    const/4 v0, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2661
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeFreeTextEntry()V
    .locals 2

    .prologue
    .line 2088
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$14;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2096
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v1, "rcs_free_text"

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2100
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2101
    return-void
.end method

.method private makeIPCallEntry()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f0d03b2

    .line 2252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    const-string v0, "ContactDetailFragment"

    const-string v3, "makeIpCallEntry"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2258
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2261
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 2262
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$17;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$17;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 2274
    :goto_1
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2275
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2276
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2277
    const v0, 0x7f020523

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2278
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2279
    iput v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2280
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    return-void

    .line 2271
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private makeRingtoneEntry(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2581
    if-nez p1, :cond_0

    .line 2613
    :goto_0
    return-void

    .line 2585
    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$23;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$23;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2599
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2601
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2602
    iput-object p1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2603
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2604
    const-string v2, "vnd.android.cursor.item/ringtone"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2605
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2606
    const v0, 0x7f020054

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2607
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2609
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2610
    const/4 v0, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2612
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeVibrationEntry(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2665
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2695
    :goto_0
    return-void

    .line 2668
    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$25;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$25;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 2682
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2684
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomVibrationName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2685
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 2686
    const-string v2, "vnd.android.cursor.item/vibration"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 2687
    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2688
    const v0, 0x7f020054

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2689
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 2691
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2692
    const/4 v0, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z
    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 2694
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeVideoCallEntry()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2201
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2202
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasIPCall:Z

    if-eqz v4, :cond_1

    .line 2204
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2208
    :cond_1
    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2209
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2213
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 2214
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$16;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$16;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 2227
    :goto_1
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 2228
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2229
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 2230
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 2231
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2232
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2233
    const v0, 0x7f02056d

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 2242
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2244
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    return-void

    .line 2224
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 2234
    :cond_4
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2235
    const v0, 0x7f02056b

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_2

    .line 2237
    :cond_5
    const v0, 0x7f02056c

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_2

    .line 2240
    :cond_6
    const v0, 0x7f02056a

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_2
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 4248
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 4249
    .local v0, setIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4250
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2403
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2405
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 2408
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2409
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFreeTextEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2415
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-eqz v0, :cond_3

    .line 2416
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setValidTitlePosition(I)V

    .line 2419
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2420
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtraPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2421
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2422
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mChatOnEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2423
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVAppEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2424
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2425
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2426
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2427
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2428
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2430
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 2432
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2433
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2434
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2435
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2436
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2437
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlerttoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2438
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVibrationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2439
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2440
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 2442
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addLastSeparator()V

    .line 2443
    return-void
.end method

.method private shareContactMethod(I)V
    .locals 6
    .parameter

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4290
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4303
    :goto_0
    return-void

    .line 4296
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4298
    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 4299
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4300
    :catch_0
    move-exception v0

    .line 4301
    const-string v1, "ContactDetailFragment"

    const-string v2, "SMS activity is not found"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .parameter "anchorView"
    .parameter "adapter"
    .parameter "onItemClickListener"

    .prologue
    .line 2885
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2886
    .local v0, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2887
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2888
    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2889
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 2893
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$26;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$26;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2901
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 2902
    return-void
.end method

.method private showPhotoActionPopup(Landroid/view/View;)V
    .locals 3
    .parameter "photoView"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4842
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    .line 4843
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4845
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 9

    .prologue
    const v8, 0x7f09011d

    const v7, 0x7f09011c

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1032
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1049
    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    if-eqz v0, :cond_5

    .line 1050
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_7

    move v0, v6

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/widget/TransitionAnimationView;->startAnimation(Landroid/view/View;Z)V

    .line 1051
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    .line 1054
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_8

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1060
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1061
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_7
    move v0, v4

    .line 1050
    goto :goto_1

    .line 1068
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 1075
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_2

    .line 1078
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setState(Lcom/android/contacts/model/EntityDeltaList;)V

    .line 1080
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setDirectoryContact(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_a

    .line 1086
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1087
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 1093
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v6

    :goto_4
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 1107
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 1112
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v0, :cond_18

    .line 1113
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    .line 1122
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 1125
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_c

    .line 1126
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1127
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 1132
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1133
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1134
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1136
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1139
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1141
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1144
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1145
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1148
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableBPMFSortList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1150
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 1153
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_19

    move v0, v6

    :goto_6
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_1a

    move v0, v6

    :goto_7
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 1157
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v0, :cond_10

    .line 1160
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1165
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_11

    .line 1166
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 1170
    :cond_11
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1172
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 1174
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    if-eqz v0, :cond_12

    .line 1178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1179
    const/4 v1, 0x4

    iput v1, v0, Landroid/util/TypedValue;->type:I

    .line 1180
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    if-eqz v1, :cond_1b

    .line 1181
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0041

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1187
    :goto_8
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/ProportionalLayout;->setRatio(F)V

    .line 1190
    :cond_12
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1191
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 1192
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1194
    if-eqz v0, :cond_13

    .line 1195
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1196
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    :cond_13
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v3, 0x7f09011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1232
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1234
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1235
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1237
    if-eqz v0, :cond_14

    .line 1238
    invoke-virtual {v0, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1240
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V

    .line 1241
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 1242
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    :cond_14
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1259
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 1260
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1261
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1341
    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    .line 1351
    if-eqz v0, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->refreshEntriesFromServer(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1096
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_17
    move v0, v4

    .line 1104
    goto/16 :goto_4

    .line 1117
    :cond_18
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_19
    move v0, v4

    .line 1153
    goto/16 :goto_6

    :cond_1a
    move v0, v4

    .line 1154
    goto/16 :goto_7

    .line 1184
    :cond_1b
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/16 :goto_8

    .line 1263
    :cond_1c
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_9

    .line 1267
    :cond_1d
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 1268
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1270
    if-eqz v0, :cond_1e

    .line 1271
    invoke-virtual {v0, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1272
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    :cond_1e
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v3, 0x7f09011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1308
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1310
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1311
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1313
    if-eqz v0, :cond_1f

    .line 1315
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V

    .line 1316
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    .line 1317
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$8;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1330
    :cond_1f
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1332
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 1334
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_9

    .line 1336
    :cond_20
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_9
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleAlerttonePicked(Landroid/net/Uri;)Z
    .locals 4
    .parameter "pickedUri"

    .prologue
    .line 797
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 802
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetAlerttone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 803
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 804
    const/4 v1, 0x1

    return v1

    .line 800
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleKeyDown(I)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0d03b2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 4324
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v6

    .line 4370
    :goto_0
    return v0

    .line 4327
    :pswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4329
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 4337
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 4338
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v2, :cond_6

    .line 4339
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4340
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 4341
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4342
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4343
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    move v0, v1

    .line 4344
    goto :goto_0

    .line 4346
    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4348
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    :cond_4
    :goto_2
    move v0, v6

    .line 4366
    goto :goto_0

    .line 4351
    :cond_5
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasDualCall:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v1, :cond_4

    .line 4352
    const-string v1, "vnd.android.cursor.item/phone_v2"

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4353
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4355
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 4359
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 4361
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4363
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 4364
    goto/16 :goto_0

    .line 4333
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 4324
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public handleRingtonePicked(Landroid/net/Uri;)Z
    .locals 4
    .parameter "pickedUri"

    .prologue
    .line 783
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    :cond_0
    const/4 v0, 0x0

    .line 788
    .local v0, ringtone:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3, v0}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 789
    .local v1, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 792
    const/4 v2, 0x1

    return v2

    .line 786
    .end local v0           #ringtone:Ljava/lang/String;
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ringtone:Ljava/lang/String;
    goto :goto_0
.end method

.method public handleVibrationPicked(Landroid/net/Uri;)V
    .locals 6
    .parameter "pickedUri"

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, uriString:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 725
    const-string v2, "ContactDetailFragment"

    const-string v3, "Nothing returned"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v2, "setVibration"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 732
    const-string v2, "customVibration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Intent;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    return-void

    .line 727
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 4098
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4099
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4100
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4102
    :cond_0
    return-void
.end method

.method public isDirectoryEntry()Z
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 4073
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 4074
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 4069
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 675
    if-eq p2, v5, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 686
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 701
    :pswitch_1
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 702
    .local v1, pickedUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    goto :goto_0

    .line 688
    .end local v1           #pickedUri:Landroid/net/Uri;
    :pswitch_2
    const-string v4, "FILE_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 690
    .restart local v1       #pickedUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)Z

    move-result v0

    .line 693
    .local v0, isValid:Z
    if-eqz v0, :cond_0

    .line 694
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/contacts/ContactSaveService;->createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 696
    .local v2, serviceIntentMedia:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 706
    .end local v0           #isValid:Z
    .end local v1           #pickedUri:Landroid/net/Uri;
    .end local v2           #serviceIntentMedia:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 707
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleVibrationPicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 714
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_4
    if-ne p2, v5, :cond_0

    .line 715
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 716
    .restart local v1       #pickedUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->handleAlerttonePicked(Landroid/net/Uri;)Z

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 809
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 810
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 811
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 812
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 813
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMotionCallEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    .line 814
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4208
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4218
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 4242
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 4243
    :goto_0
    return v0

    .line 4209
    :catch_0
    move-exception v0

    .line 4210
    const-string v1, "ContactDetailFragment"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 4211
    goto :goto_0

    .line 4222
    :pswitch_0
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    move v0, v2

    .line 4223
    goto :goto_0

    .line 4225
    :pswitch_1
    iget-wide v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    move v0, v2

    .line 4226
    goto :goto_0

    .line 4228
    :pswitch_2
    iget-wide v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    move v0, v2

    .line 4229
    goto :goto_0

    .line 4231
    :pswitch_3
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->shareContactMethod(I)V

    move v0, v2

    .line 4232
    goto :goto_0

    .line 4234
    :pswitch_4
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->deleteContactMethod(J)V

    move v0, v2

    .line 4235
    goto :goto_0

    .line 4237
    :pswitch_5
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToDialingScreen(I)V

    move v0, v2

    .line 4238
    goto :goto_0

    .line 4220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 499
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;IZLcom/android/contacts/model/EntityDeltaList;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    .line 501
    if-eqz p1, :cond_0

    .line 502
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 503
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 505
    const-string v0, "isChangingOrientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 507
    const-string v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    .line 508
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 509
    const-string v0, "isDirectoryContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    .line 510
    const-string v0, "customRingtoneUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    .line 511
    const-string v0, "customVibrationUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    .line 512
    const-string v0, "customAlerttoneUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setState(Lcom/android/contacts/model/EntityDeltaList;)V

    .line 515
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->setDirectoryContact(Z)V

    .line 519
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .line 524
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-nez v0, :cond_2

    .line 525
    new-instance v0, Lcom/sec/android/app/contacts/util/MotionCallManager;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 528
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 531
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z

    .line 535
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v0, :cond_4

    .line 537
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/activities/ContactDetailActivity;

    .line 538
    .local v6, detailsActivity:Lcom/android/contacts/activities/ContactDetailActivity;
    invoke-virtual {v6}, Lcom/android/contacts/activities/ContactDetailActivity;->getSvcUtils()Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    .line 539
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    if-nez v0, :cond_4

    const-string v0, "ContactDetailFragment"

    const-string v1, "directorySvcUtils is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v6           #detailsActivity:Lcom/android/contacts/activities/ContactDetailActivity;
    :cond_4
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0d0319

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4106
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4108
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_1

    .line 4183
    :cond_0
    :goto_0
    return-void

    .line 4112
    :cond_1
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 4113
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4115
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0d019d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4117
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4118
    const v1, 0x7f0d01f4

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v5, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4121
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 4128
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v1

    .line 4129
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->isSharableData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 4130
    const/4 v1, 0x3

    const v4, 0x7f0d024b

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v1, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4135
    :cond_4
    iget-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    if-eqz v1, :cond_5

    .line 4136
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4155
    :cond_5
    :goto_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4156
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 4162
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4175
    :cond_6
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCopyToDialer"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4178
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4179
    const/4 v0, 0x5

    const v1, 0x7f0d0256

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 4142
    :cond_7
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4143
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isContainEmergencyGroup()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isContainEmergencyGroup()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4145
    :cond_9
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 4148
    :cond_a
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4149
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 4157
    :cond_b
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4158
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto/16 :goto_2

    .line 4166
    :cond_c
    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_d

    .line 4167
    const v0, 0x7f0d01f6

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v2, v5, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 4169
    :cond_d
    if-nez v1, :cond_6

    .line 4170
    const/4 v0, 0x2

    const v1, 0x7f0d01f5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    move v1, v2

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 818
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    const v0, 0x7f04003b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 834
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 836
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    .line 839
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f09013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/ProportionalLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContainerView:Lcom/android/contacts/widget/ProportionalLayout;

    .line 848
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 849
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 850
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 854
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 855
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 859
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 860
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    .line 862
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    .line 863
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    .line 864
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 866
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 867
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 882
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setInflater(Landroid/view/LayoutInflater;)V

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 889
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0

    .line 823
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    if-eqz v0, :cond_5

    .line 824
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    if-eqz v0, :cond_4

    .line 825
    const v0, 0x7f04003c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 827
    :cond_4
    const v0, 0x7f04003d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 830
    :cond_5
    const v0, 0x7f040039

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 852
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_1
.end method

.method public onDefaultChosen()V
    .locals 4

    .prologue
    .line 4740
    const/4 v0, 0x0

    .line 4741
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4742
    const-string v2, "setRingtone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4743
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4744
    const-string v2, "customRingtone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4745
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4746
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 663
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_0

    .line 664
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 666
    sput-object v2, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    .line 669
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDateFormatObserver:Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 655
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 656
    return-void
.end method

.method public onGotoMyfilesChosen()V
    .locals 5

    .prologue
    const v4, 0x186a0

    const/4 v3, 0x1

    .line 4770
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4771
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4772
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4773
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4774
    const-string v1, "FOLDERPATH"

    sget-object v2, Lcom/android/contacts/util/Constants;->VALUE_RINGTONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4775
    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*;"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4776
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4777
    const-string v1, "IS_SETAS_MODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4778
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4788
    :cond_0
    :goto_0
    return-void

    .line 4779
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4780
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/app/contacts/model/ContactConstants$ExAppInfo;->MYFILES_PICKDATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4781
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4782
    const-string v1, "FOLDERPATH"

    sget-object v2, Lcom/android/contacts/util/Constants;->VALUE_RINGTONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4783
    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*;"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4784
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4785
    const-string v1, "IS_SETAS_MODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4786
    invoke-virtual {p0, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4797
    .line 4799
    if-nez p3, :cond_0

    .line 4830
    :goto_0
    return-void

    .line 4803
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4827
    :pswitch_0
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing chosen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4805
    :pswitch_1
    invoke-static {p3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4806
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4809
    :pswitch_2
    if-nez p2, :cond_1

    .line 4810
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4812
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4813
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 4814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4816
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4818
    :cond_2
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing chosen in Email dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4823
    :pswitch_3
    invoke-static {p3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4824
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4803
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 4091
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 4095
    :cond_0
    :goto_0
    return-void

    .line 4092
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 4093
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 4094
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    .prologue
    .line 4835
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 625
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 631
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->resetCurrentViewAndEntry()V

    .line 633
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinOnPause()V

    .line 636
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    const-string v0, "ContactDetailFragment"

    const-string v1, "VoLTEStateTracker : stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/android/contacts/VoLTEStateTracker;->stopTracking()V

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 643
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoActionPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 649
    :cond_4
    return-void
.end method

.method public onPhoneRingtoneChosen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4750
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4751
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4752
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4753
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4756
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4757
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 4764
    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4765
    invoke-virtual {p0, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4766
    return-void

    .line 4759
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4760
    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4761
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onPhotoOfTabCarouselSelected(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4850
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4852
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->showPhotoActionPopup(Landroid/view/View;)V

    .line 4854
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 573
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 576
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->sIsMotionCallEnabled:Z

    if-eqz v1, :cond_0

    .line 577
    sget-object v1, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    if-eqz v1, :cond_0

    .line 578
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/contacts/detail/ContactDetailFragment;->sInstance:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->updateDirectCall(ILjava/lang/String;)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 584
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "huge_font"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    .line 588
    :cond_1
    sput-boolean v3, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 589
    sput-boolean v3, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    .line 595
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const-string v1, "ContactDetailFragment"

    const-string v2, "VoLTEStateTracker : startTracking"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/VoLTEStateTracker;->startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v1, :cond_3

    .line 613
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 615
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinOnResume(Landroid/net/Uri;)V

    .line 618
    :cond_4
    return-void
.end method

.method public onRingtoneSelectorCancelled()V
    .locals 0

    .prologue
    .line 4793
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    :cond_0
    const-string v0, "isChangingOrientation"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsChangingConfiguration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 559
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_2

    .line 562
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 564
    :cond_2
    const-string v0, "isDirectoryContact"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsDirectoryContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    const-string v0, "customRingtoneUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "customVibrationUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "customAlerttoneUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 1029
    return-void
.end method

.method public setCallSipPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 4956
    sput-boolean p1, Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z

    .line 4957
    sput-boolean p1, Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z

    .line 4958
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .parameter "lookupUri"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 987
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 989
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 991
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setIsUserProfile(Z)V

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->resetCurrentViewAndEntry()V

    .line 999
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->pinStartEntityQuery(Landroid/net/Uri;)V

    .line 1001
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 1004
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1005
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTwEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    :cond_2
    return-void
.end method

.method public setEmptyPhoto(Z)V
    .locals 0
    .parameter "setEmptyLayout"

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowEmptyLayout:Z

    .line 975
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 912
    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .parameter "showPhoto"

    .prologue
    .line 969
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 970
    return-void
.end method

.method public setTwHeaderView(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "tw_header_container"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;

    .line 984
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 954
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 978
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 979
    return-void
.end method

.method public updateState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 4961
    const-string v0, "IsDialerFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z

    .line 4962
    const-string v0, "Portrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isPortrait:Z

    .line 4963
    return-void
.end method

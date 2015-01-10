.class public Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ContextMenuIds;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static backFromOthers:Z

.field static final buildcarrier:Ljava/lang/String;

.field public static flexibleHeight:I

.field private static isDualSim:Z

.field private static isVoLTEEnabled:Z

.field private static mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# instance fields
.field private DualSIM:Z

.field private final LOGSLIST_PREF_NAME:Ljava/lang/String;

.field private final PREF_KEY_REJECT_POPUP:Ljava/lang/String;

.field private bCDMANetwork:Z

.field private bCheckedBefore:Z

.field private bConfigurationChanged:Z

.field private bGSMNetwork:Z

.field bName:Ljava/lang/String;

.field private canPlaceCallsTo:Z

.field city_id:Ljava/lang/String;

.field fName:Ljava/lang/String;

.field idsStr:Ljava/lang/String;

.field public keyPressed:Z

.field private korVideoCallBtnImg:I

.field lName:Ljava/lang/String;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field mCdnipNumber:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCall:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsChangingConfiguration:Z

.field private mIsPostExcuteDone:Z

.field private mMotionDialog:Z

.field mMotionTiltDialog:Landroid/app/AlertDialog;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberForDialog:Ljava/lang/String;

.field private mOldOrientation:I

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field private mQuanternaryActionListener:Landroid/view/View$OnClickListener;

.field private mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

.field mResources:Landroid/content/res/Resources;

.field private mResumeOnPortrait:Z

.field private mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field mServiceType:I

.field private mSim2CallActionListener:Landroid/view/View$OnClickListener;

.field mSupportFolderType:Z

.field private mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private mUpdateDialogHandler:Landroid/os/Handler;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private strCityInfo:Ljava/lang/String;

.field tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVoLTEEnabled:Z

    .line 227
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 322
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->buildcarrier:Ljava/lang/String;

    .line 390
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "simnum"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "call_out_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 417
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "cityid"

    aput-object v1, v0, v5

    const-string v1, "cnap_name"

    aput-object v1, v0, v6

    const-string v1, "fname"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->LOG_PROJECTION:[Ljava/lang/String;

    .line 460
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 169
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 179
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionDialog:Z

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 210
    const-string v0, "logslist_pref"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->LOGSLIST_PREF_NAME:Ljava/lang/String;

    .line 211
    const-string v0, "reject_popup"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PREF_KEY_REJECT_POPUP:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    .line 214
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    .line 230
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    .line 233
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 234
    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mOldOrientation:I

    .line 235
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->city_id:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCdnipNumber:Ljava/lang/String;

    .line 255
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 269
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    .line 273
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    .line 274
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 284
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 288
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    .line 289
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    .line 317
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 319
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    .line 321
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSupportFolderType:Z

    .line 483
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 515
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 529
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 545
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 555
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 759
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mUpdateDialogHandler:Landroid/os/Handler;

    .line 3136
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->DualSIM:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->DualSIM:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    return-void
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    return p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->saveViewStatusPreference()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object p1
.end method

.method private configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 2361
    const-string v1, "CallDetailActivity"

    const-string v2, "configureActionBar"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 2363
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2365
    if-eqz v6, :cond_13

    .line 2366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2367
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2368
    const/4 v4, 0x1

    .line 2370
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 2373
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_1

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v1, "-5"

    .line 2379
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v3, v5, v10}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2384
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 2386
    const v1, 0x7f0900fd

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2387
    const v2, 0x7f090113

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2388
    const v3, 0x7f090114

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2392
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2393
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2394
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2396
    const v5, 0x7f090111

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2397
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2400
    const-string v12, "feature_cnam"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2401
    new-instance v12, Landroid/app/ActionBar$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v15, 0x13

    invoke-direct {v12, v13, v14, v15}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v11, v12}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2410
    const/16 v12, 0x10

    invoke-virtual {v6, v12}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2411
    new-instance v12, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2430
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2431
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2432
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2434
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 2436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2440
    :cond_2
    if-eqz v7, :cond_3

    .line 2441
    const-string v4, "CallDetailActivity"

    const-string v5, "configureActionBar, display voicemail information"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2444
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2460
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 2481
    :cond_4
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p2

    if-le v0, v5, :cond_5

    .line 2482
    const-string v5, " ("

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    const/16 v5, 0x29

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2487
    :cond_5
    const-string v5, "phone_number_locator"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2488
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2489
    const-string v5, "  |  "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    :cond_6
    const-string v5, "feature_cnam"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2495
    const-string v5, " "

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2496
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 2497
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2500
    :cond_7
    if-eqz v7, :cond_8

    .line 2501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0098

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2513
    :cond_8
    :goto_3
    if-eqz v4, :cond_1a

    .line 2514
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v4, :cond_b

    .line 2515
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 2517
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v7, "114"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2519
    const/4 v4, 0x0

    move v5, v4

    .line 2522
    :cond_9
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v7, "120"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2524
    const/4 v5, 0x1

    .line 2527
    :cond_a
    if-eqz v5, :cond_b

    .line 2528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2529
    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2530
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    .line 2603
    :cond_b
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2604
    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2607
    :cond_c
    const-string v4, "feature_spr"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v4, :cond_d

    .line 2608
    sget-object v5, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialADCCheckNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2609
    if-eqz v4, :cond_d

    .line 2610
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2611
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2612
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2613
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2617
    :cond_d
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    .line 2618
    const/4 v4, 0x1

    const/high16 v5, 0x4170

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2621
    :cond_e
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    .line 2622
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2623
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2625
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2626
    const/high16 v7, -0x3f60

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2627
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2629
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2630
    const/high16 v7, -0x3f60

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2631
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2633
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2634
    const/high16 v7, -0x3f60

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2635
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2637
    const-string v7, "CallDetailActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configureActionBar, dm.density : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", mlp.topMargin : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 2640
    const/4 v4, 0x1

    const/high16 v5, 0x4160

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2641
    const/4 v1, 0x1

    const/high16 v4, 0x4140

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2642
    const/4 v1, 0x1

    const/high16 v2, 0x4120

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2646
    :cond_f
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2648
    const-string v1, ""

    .line 2650
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_27

    .line 2652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2665
    :cond_10
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v2, :cond_30

    .line 2666
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+82263439000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d03bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2668
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2696
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v1, 0x1

    move v8, v1

    .line 2697
    :goto_7
    const v1, 0x7f090044

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2698
    const v2, 0x7f090045

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2699
    const v3, 0x7f090047

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2700
    const v4, 0x7f09004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2701
    const v5, 0x7f090052

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2702
    const v6, 0x7f090053

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 2703
    const v7, 0x7f09004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 2704
    if-eqz v8, :cond_33

    const-string v9, "feature_chn_duos"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2705
    const v8, 0x7f090043

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_32

    .line 2706
    const v3, 0x7f090044

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2707
    const v3, 0x7f090044

    invoke-virtual {v11, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 2708
    const v3, 0x7f090044

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2709
    const v3, 0x7f090045

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2710
    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2711
    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2712
    const v1, 0x7f090044

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2713
    const v1, 0x7f090044

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2714
    const v1, 0x7f090044

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2747
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2748
    const v1, 0x7f09003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 2749
    const v1, 0x7f09003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2753
    :cond_13
    return-void

    .line 2424
    :cond_14
    const/16 v5, 0xc

    const/16 v12, 0xe

    invoke-virtual {v6, v5, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_0

    .line 2451
    :cond_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2453
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2456
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2463
    :cond_16
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2465
    const-string v5, "feature_cnap"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2466
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v5, :cond_4

    .line 2467
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2472
    :cond_17
    const-string v5, "feature_cnam"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2504
    :cond_18
    if-eqz v7, :cond_19

    .line 2505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0098

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2506
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2507
    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2510
    :cond_19
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2537
    :cond_1a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2541
    :cond_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v4, :cond_b

    :cond_1c
    if-nez v7, :cond_b

    .line 2545
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2547
    const-string v5, "ar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "fa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "ur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2551
    :cond_1d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    if-eqz v5, :cond_21

    .line 2552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2553
    const-string v7, "\u202d"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2555
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2556
    const-string v5, " / "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    :goto_9
    const-string v5, "ar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "fa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "ur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "iw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2567
    :cond_1e
    const-string v4, "\u202e"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    :cond_1f
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_24

    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2572
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    .line 2573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    :goto_a
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    .line 2586
    const-string v4, "  |  "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCity:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    :cond_20
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2592
    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 2593
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2594
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2558
    :cond_21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2559
    const-string v5, " / "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2562
    :cond_22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2563
    const-string v5, " / "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2575
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d03f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2578
    :cond_24
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    if-nez v4, :cond_25

    .line 2579
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2581
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2598
    :cond_26
    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2653
    :cond_27
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_28

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_29

    .line 2656
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 2657
    :cond_29
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2a

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 2660
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 2669
    :cond_2b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+82232100404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d03bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2672
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2673
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+82"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2675
    :cond_2c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2678
    :cond_2d
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2679
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+82234167010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2680
    if-eqz v8, :cond_11

    .line 2681
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+82"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2683
    :cond_2e
    if-eqz v8, :cond_11

    .line 2684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2687
    :cond_2f
    if-eqz v8, :cond_11

    .line 2688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2692
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2696
    :cond_31
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_7

    .line 2715
    :cond_32
    const v1, 0x7f090046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 2716
    const v1, 0x7f090047

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2717
    const v1, 0x7f090047

    invoke-virtual {v11, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 2718
    const v1, 0x7f09004e

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2719
    const v1, 0x7f090047

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2720
    const v1, 0x7f090047

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2721
    const v1, 0x7f090047

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2722
    const v1, 0x7f090047

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    goto/16 :goto_8

    .line 2724
    :cond_33
    if-nez v8, :cond_12

    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2725
    const v8, 0x7f090043

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_34

    .line 2726
    const v3, 0x7f090044

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2727
    const v3, 0x7f090044

    invoke-virtual {v11, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 2728
    const v3, 0x7f090045

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2729
    const v1, 0x7f09004e

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2730
    const v1, 0x7f090044

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2731
    const v1, 0x7f090045

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2732
    const v1, 0x7f090045

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2733
    const v1, 0x7f090045

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto/16 :goto_8

    .line 2735
    :cond_34
    const v1, 0x7f090046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 2736
    const v1, 0x7f090047

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2737
    const v1, 0x7f090047

    invoke-virtual {v11, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 2738
    const v1, 0x7f09004e

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2739
    const v1, 0x7f090047

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2740
    const v1, 0x7f090047

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2741
    const v1, 0x7f090047

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2742
    const v1, 0x7f090047

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto/16 :goto_8
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;IZ)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1846
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1848
    const v0, 0x7f09004e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1849
    const v1, 0x7f09004f

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1850
    const v2, 0x7f090055

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1851
    const v3, 0x7f09005b

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1852
    const v4, 0x7f09005f

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1853
    const v4, 0x7f090060

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1855
    const v4, 0x7f09005a

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1856
    const v4, 0x7f09004c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1857
    const v5, 0x7f09005d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1858
    const v5, 0x7f09005c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1859
    const v5, 0x7f09004b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1860
    const v5, 0x7f090059

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    .line 1861
    const v5, 0x7f09005e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1864
    sget-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVoLTEEnabled:Z

    if-eqz v5, :cond_b

    .line 1865
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1866
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1867
    const/4 v5, 0x0

    const v6, 0x7f0202bc

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1882
    :cond_0
    :goto_0
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1883
    const-string v5, "DSDS"

    invoke-static {v5}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/plugin/dsds/PlugInDsdsService;

    .line 1884
    invoke-virtual {v5}, Landroid/plugin/dsds/PlugInDsdsService;->getInsertedSimCount()I

    move-result v5

    .line 1885
    const-string v6, "CallDetailActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureCallButton simCount:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 1888
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    .line 1893
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1895
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1897
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1898
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1900
    const/4 v5, 0x0

    const v6, 0x7f0202c6

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1901
    const-string v5, "feature_remove_vt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1903
    const v5, 0x7f090056

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1904
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1905
    const-string v6, "feature_vzw"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1906
    const/16 v6, 0x384

    if-ne p2, v6, :cond_d

    .line 1907
    if-nez p3, :cond_2

    .line 1909
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1910
    const v6, 0x7f090058

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1911
    const v6, 0x7f090057

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1913
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1914
    const/4 v5, 0x0

    const v6, 0x7f0202d0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1915
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1916
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1921
    :goto_2
    const-string v5, "feature_vzw_message_icon"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1922
    const/4 v5, 0x0

    const v6, 0x7f0202c8

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1927
    :cond_3
    :goto_3
    const-string v5, "feature_vzw"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v5, 0x384

    if-ne p2, v5, :cond_f

    .line 1928
    const v5, 0x7f090055

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1929
    const v5, 0x7f09004e

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1930
    const v5, 0x7f090055

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1950
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1951
    const v5, 0x7f090058

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1952
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1956
    :cond_4
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1957
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1958
    const v5, 0x7f0202cf

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    .line 1964
    :goto_5
    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1967
    :cond_5
    const-string v5, "ip_call"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1968
    const v5, 0x7f090050

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1969
    const v6, 0x7f090052

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1970
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1971
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1972
    invoke-virtual {v6, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1973
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getDuosCallSimIcon(Landroid/content/Context;IZ)I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v7, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1974
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v7, v11, v12}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getDuosCallSimIcon(Landroid/content/Context;IZ)I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v5, v7, v11, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1976
    const v5, 0x7f090054

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1977
    const v7, 0x7f090053

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1978
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1979
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1980
    invoke-virtual {v7, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1982
    const-string v5, "feature_chn_duos_gsm_gsm"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1983
    const v5, 0x7f090052

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1984
    const v0, 0x7f090053

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1985
    const v0, 0x7f090055

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1995
    :goto_6
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1996
    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setCallButtonEnable(Landroid/view/View;)V

    .line 2057
    :cond_6
    :goto_7
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2059
    sget v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    if-nez v1, :cond_7

    .line 2060
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    .line 2116
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    if-eqz v9, :cond_17

    .line 2118
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2119
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2120
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2127
    :goto_8
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2128
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2131
    return-void

    .line 1869
    :cond_8
    const-string v5, "feature_kt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1870
    const/4 v5, 0x0

    const v6, 0x7f0202b9

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1872
    :cond_9
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1873
    const/4 v5, 0x0

    const v6, 0x7f0202ba

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1876
    :cond_a
    const/4 v5, 0x0

    const v6, 0x7f0202bb

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1879
    :cond_b
    const/4 v5, 0x0

    const v6, 0x7f0202b8

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1890
    :cond_c
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isDualSim:Z

    goto/16 :goto_1

    .line 1919
    :cond_d
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 1923
    :cond_e
    const-string v5, "feature_usa_message_icon"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1924
    const/4 v5, 0x0

    const v6, 0x7f0202c7

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v7, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 1932
    :cond_f
    const v5, 0x7f09004f

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1933
    const v5, 0x7f09004e

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_4

    .line 1935
    :cond_10
    const-string v5, "feature_remove_vt_dialpad"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1936
    const v5, 0x7f090056

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1937
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1939
    const v5, 0x7f09004f

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1940
    const v5, 0x7f09004e

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_4

    .line 1942
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1943
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1945
    const v5, 0x7f090055

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1946
    const v5, 0x7f09004e

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1947
    const v5, 0x7f090055

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_4

    .line 1959
    :cond_12
    const-string v5, "feature_kt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1960
    const v5, 0x7f0202cd

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_5

    .line 1962
    :cond_13
    const v5, 0x7f0202ce

    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->korVideoCallBtnImg:I

    goto/16 :goto_5

    .line 1988
    :cond_14
    const v2, 0x7f090052

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1989
    const v0, 0x7f090053

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1990
    const v0, 0x7f090052

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1991
    const v0, 0x7f09004f

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1992
    const v0, 0x7f090053

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_6

    .line 2000
    :cond_15
    const-string v5, "ip_call"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2001
    const v2, 0x7f090050

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2002
    const v2, 0x7f090052

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2012
    const v2, 0x7f090054

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2013
    const v5, 0x7f090053

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2014
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2015
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2016
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2025
    const v2, 0x7f090053

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 2026
    const v0, 0x7f09004e

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 2027
    const v0, 0x7f09004f

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 2028
    const v0, 0x7f090053

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_7

    .line 2046
    :cond_16
    const-string v1, "ip_call"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2047
    const v1, 0x7f090054

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2048
    const v5, 0x7f090053

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2049
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2050
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2051
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2053
    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 2054
    const v0, 0x7f090053

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_7

    .line 2124
    :cond_17
    sget v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2125
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3125
    :goto_0
    return v0

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris()Ljava/lang/String;
    .locals 3

    .prologue
    .line 814
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallLogEntryUris, uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->nameText:Ljava/lang/String;

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 70
    .parameter

    .prologue
    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1465
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v67

    .line 1468
    if-eqz v67, :cond_0

    :try_start_0
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1469
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    :catchall_0
    move-exception v2

    if-eqz v67, :cond_1

    .line 1717
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 1471
    :cond_2
    :try_start_1
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v68, v0

    .line 1473
    const/4 v3, 0x0

    move/from16 v66, v3

    :goto_0
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v66

    if-ge v0, v3, :cond_24

    .line 1475
    const/4 v3, 0x0

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 1476
    const/4 v3, 0x3

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1477
    const/4 v3, 0x1

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1478
    const/4 v3, 0x2

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1479
    const/4 v3, 0x4

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1480
    const/4 v3, 0x5

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1481
    const/4 v3, 0x6

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1482
    const/4 v3, 0x7

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1483
    const/16 v3, 0xd

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1484
    const/16 v3, 0x10

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1485
    const/16 v3, 0x11

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1486
    const/16 v3, 0x12

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1487
    const-string v4, ""

    .line 1488
    const/4 v3, 0x0

    .line 1490
    const/16 v5, 0x14

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 1491
    const/16 v5, 0x15

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 1494
    const-string v5, "feature_cnam"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "feature_cnap"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1497
    :cond_3
    const/16 v5, 0xc

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    .line 1503
    :cond_4
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1504
    const/16 v5, 0xe

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCdnipNumber:Ljava/lang/String;

    .line 1505
    const/16 v5, 0xf

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    .line 1509
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1510
    const/16 v4, 0x13

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    .line 1514
    :goto_1
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1519
    :cond_6
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1520
    if-nez v66, :cond_7

    .line 1522
    const/4 v4, 0x4

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1523
    const-string v5, "feature_cityid"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1524
    const/16 v5, 0x8

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    .line 1528
    :goto_2
    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1529
    const/16 v4, 0x9

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    .line 1530
    const/16 v4, 0xa

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    .line 1531
    const/16 v4, 0xb

    move-object/from16 v0, v67

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    .line 1537
    :cond_7
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1538
    const/16 v3, 0x16

    move-object/from16 v0, v67

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v65, v3

    .line 1542
    :goto_3
    const-string v23, ""

    .line 1544
    const-string v15, ""

    .line 1545
    const/16 v16, 0x0

    .line 1546
    const-string v17, ""

    .line 1547
    const/16 v19, 0x0

    .line 1548
    const/4 v8, 0x0

    .line 1549
    const-string v9, "vnd.sec.contact.phone"

    .line 1552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v18, v8

    .line 1636
    :goto_4
    const-string v3, "feature_cnam"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1637
    if-nez v66, :cond_b

    .line 1638
    if-eqz v15, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1639
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 1640
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 1641
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    .line 1660
    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_28

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "account_type"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1666
    if-eqz v4, :cond_27

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1667
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    move-object v3, v9

    .line 1670
    :goto_6
    if-eqz v4, :cond_26

    .line 1671
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v27, v3

    .line 1676
    :goto_7
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1677
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    aput v29, v9, v4

    move/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    invoke-direct/range {v3 .. v22}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v3, v68, v66

    .line 1680
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1681
    aget-object v3, v68, v66

    move/from16 v0, v62

    iput v0, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 1709
    :cond_c
    :goto_8
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1710
    aget-object v3, v68, v66

    move/from16 v0, v65

    iput v0, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 1712
    :cond_d
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->moveToNext()Z

    .line 1473
    add-int/lit8 v3, v66, 0x1

    move/from16 v66, v3

    goto/16 :goto_0

    .line 1526
    :cond_e
    const/4 v5, 0x6

    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->strCityInfo:Ljava/lang/String;

    goto/16 :goto_2

    .line 1558
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1560
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v3

    .line 1561
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    .line 1565
    invoke-static/range {v45 .. v45}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v5

    .line 1567
    const-string v6, "CallDetailActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getPhoneCallDetailsForUri: mIsSpecialNum"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    if-le v4, v3, :cond_11

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1571
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1572
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1592
    :goto_9
    if-nez v66, :cond_2b

    .line 1593
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1596
    if-eqz v5, :cond_16

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1597
    const/4 v3, 0x1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1598
    const/4 v3, 0x6

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1599
    if-nez v3, :cond_14

    const/16 v19, 0x0

    .line 1600
    :goto_a
    const-string v3, "disable_format_number"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1601
    const/4 v3, 0x4

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1608
    :goto_b
    const/4 v3, 0x2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1609
    const/4 v3, 0x3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1610
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1611
    const-wide/16 v30, 0x0

    cmp-long v3, v6, v30

    if-lez v3, :cond_2a

    .line 1612
    const/4 v3, 0x7

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    :goto_c
    move-object v8, v3

    move-object v3, v4

    .line 1627
    :goto_d
    if-eqz v5, :cond_10

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1630
    :cond_10
    if-nez v3, :cond_29

    invoke-static/range {v45 .. v45}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v18, v8

    move-object/from16 v23, v15

    .line 1631
    goto/16 :goto_4

    .line 1576
    :cond_11
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v45 .. v45}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_9

    .line 1583
    :cond_12
    invoke-static/range {v45 .. v45}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1584
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v45 .. v45}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sip"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_9

    .line 1587
    :cond_13
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v45 .. v45}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto/16 :goto_9

    .line 1599
    :cond_14
    :try_start_6
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto :goto_a

    .line 1603
    :cond_15
    const/4 v3, 0x4

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v3, v6, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_b

    .line 1619
    :cond_16
    const-string v3, "disable_format_number"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v15

    move-object/from16 v15, v45

    .line 1620
    goto :goto_d

    .line 1622
    :cond_17
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    move-object/from16 v69, v3

    move-object v3, v15

    move-object/from16 v15, v69

    goto :goto_d

    .line 1627
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_18

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1628
    :cond_18
    throw v2

    .line 1642
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 1643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    goto/16 :goto_5

    .line 1646
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->lName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 1649
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 1650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bName:Ljava/lang/String;

    goto/16 :goto_5

    .line 1652
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 1653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    goto/16 :goto_5

    .line 1670
    :catchall_2
    move-exception v2

    if-eqz v4, :cond_1d

    .line 1671
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v2

    .line 1683
    :cond_1e
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1684
    new-instance v20, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    const/4 v3, 0x0

    aput v29, v27, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mServiceType:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCdnipNumber:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v43, 0x0

    move/from16 v21, v44

    move-object/from16 v22, v45

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move/from16 v32, v14

    move-object/from16 v33, v15

    move/from16 v34, v16

    move-object/from16 v35, v17

    move-object/from16 v36, v18

    move-object/from16 v37, v19

    invoke-direct/range {v20 .. v43}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    aput-object v20, v68, v66

    goto/16 :goto_8

    .line 1687
    :cond_1f
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v3

    if-lez v3, :cond_20

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1688
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    aput v29, v9, v4

    move/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v20, v27

    invoke-direct/range {v3 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v3, v68, v66

    goto/16 :goto_8

    .line 1691
    :cond_20
    const-string v3, "feature_cnap"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1692
    new-instance v20, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    const/4 v3, 0x0

    aput v29, v27, v3

    const/16 v38, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move/from16 v21, v44

    move-object/from16 v22, v45

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move/from16 v32, v14

    move-object/from16 v33, v15

    move/from16 v34, v16

    move-object/from16 v35, v17

    move-object/from16 v36, v18

    move-object/from16 v37, v19

    invoke-direct/range {v20 .. v43}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    aput-object v20, v68, v66

    goto/16 :goto_8

    .line 1695
    :cond_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1696
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    aput v29, v9, v4

    move/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v6, v23

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v21, v28

    invoke-direct/range {v3 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    aput-object v3, v68, v66

    goto/16 :goto_8

    .line 1699
    :cond_22
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1700
    new-instance v43, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v48, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v51, v0

    const/4 v3, 0x0

    aput v29, v51, v3

    move-object/from16 v46, v23

    move-object/from16 v47, v24

    move-object/from16 v49, v25

    move-object/from16 v50, v26

    move-wide/from16 v52, v10

    move-wide/from16 v54, v12

    move/from16 v56, v14

    move-object/from16 v57, v15

    move/from16 v58, v16

    move-object/from16 v59, v17

    move-object/from16 v60, v18

    move-object/from16 v61, v19

    move-wide/from16 v63, v41

    invoke-direct/range {v43 .. v64}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v43, v68, v66

    goto/16 :goto_8

    .line 1705
    :cond_23
    new-instance v43, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v51, v0

    const/4 v3, 0x0

    aput v29, v51, v3

    move-object/from16 v46, v23

    move-object/from16 v47, v24

    move-object/from16 v49, v25

    move-object/from16 v50, v26

    move-wide/from16 v52, v10

    move-wide/from16 v54, v12

    move/from16 v56, v14

    move-object/from16 v57, v15

    move/from16 v58, v16

    move-object/from16 v59, v17

    move-object/from16 v60, v18

    move-object/from16 v61, v19

    move-wide/from16 v62, v41

    invoke-direct/range {v43 .. v63}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    aput-object v43, v68, v66
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_8

    .line 1716
    :cond_24
    if-eqz v67, :cond_25

    .line 1717
    invoke-interface/range {v67 .. v67}, Landroid/database/Cursor;->close()V

    :cond_25
    return-object v68

    :cond_26
    move-object/from16 v27, v3

    goto/16 :goto_7

    :cond_27
    move-object v3, v9

    goto/16 :goto_6

    :cond_28
    move-object/from16 v27, v9

    goto/16 :goto_7

    :cond_29
    move-object/from16 v18, v8

    move-object/from16 v23, v15

    move-object v15, v3

    goto/16 :goto_4

    :cond_2a
    move-object v3, v8

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v18, v8

    goto/16 :goto_4

    :cond_2c
    move/from16 v65, v3

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v28, v4

    goto/16 :goto_1
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "logs_directcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1728
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    const-string v0, "persist.radio.calldefault.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1730
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 1731
    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1735
    :goto_0
    return-object v0

    .line 1733
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1735
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .locals 7
    .parameter "photoUri"
    .parameter "randomSeed"

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    .line 1725
    return-void
.end method

.method private loadPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3018
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v2, "logslist_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3019
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    .line 3020
    return-void
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 2766
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 2767
    return-void
.end method

.method private saveViewStatusPreference()V
    .locals 5

    .prologue
    .line 3011
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3012
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3013
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3014
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3015
    return-void
.end method

.method private setCallButtonEnable(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090053

    const v4, 0x7f09004e

    const/4 v3, 0x0

    .line 2134
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2135
    const v1, 0x7f090050

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2138
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCDMANetworkReady()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    .line 2139
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isGSMNetworkReady()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    .line 2140
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    .line 2146
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCDMANetwork:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bGSMNetwork:Z

    if-eqz v2, :cond_4

    .line 2147
    :cond_1
    const v2, 0x7f0202b8

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2148
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2149
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2151
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2152
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 2153
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 2159
    :cond_3
    :goto_0
    return-void

    .line 2157
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3023
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3024
    const v1, 0x7f040148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3026
    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3028
    const v2, 0x7f090304

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 3031
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    .line 3032
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;

    .line 3033
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;

    .line 3035
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3040
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0326

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0359

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$20;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02f8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$19;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3058
    return-void
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1426
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 2873
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 2868
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2857
    const-string v0, "com.sec.feature.folder_type"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSupportFolderType:Z

    .line 2858
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2860
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 2862
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 773
    const-string v1, "CallDetailActivity"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 775
    const/4 v0, 0x0

    .line 777
    .local v0, isOrientationChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mOldOrientation:I

    if-eq v1, v2, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mOldOrientation:I

    .line 779
    const/4 v0, 0x1

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 783
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 786
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    .line 789
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 790
    :cond_2
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 793
    :cond_3
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_4

    .line 801
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 2347
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 2348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2357
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2350
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 2348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 599
    const-string v1, "CallDetailActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "CallDetailActivity"

    const-string v2, "forward it for tablet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 608
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setContentView(I)V

    .line 610
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 612
    if-eqz p1, :cond_1

    .line 613
    const-string v1, "isChangingOrientation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 616
    :cond_1
    iput-object p0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    .line 618
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 626
    :goto_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 627
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 629
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 630
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 631
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 634
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 635
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 636
    new-instance v1, Lcom/android/contacts/ProximitySensorManager;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 639
    const-string v1, "feature_directcall_disable"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-nez v1, :cond_2

    .line 641
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 642
    const-string v1, "CallDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate  set mDirectCallingManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  and mIsChangingConfiguration =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->loadPref()V

    .line 656
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    .line 669
    :cond_3
    return-void

    .line 622
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2337
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2339
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2340
    const v0, 0x7f0d01f4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2343
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2810
    const-string v0, "CallDetailActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2813
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2814
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2818
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2819
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2820
    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    .line 2824
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 2829
    const-string v0, "feature_directcall_disable"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v0, :cond_2

    .line 2830
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v0, :cond_2

    .line 2831
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onDestroy  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->pause()V

    .line 2833
    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    .line 2837
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2838
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mRcsPinner:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->pinOnDestroy()V

    .line 2842
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 2843
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 2844
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 2845
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 2846
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 2851
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 824
    packed-switch p1, :pswitch_data_0

    .line 848
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 827
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 829
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d0349

    const v4, 0x7f0d0098

    const/4 v0, 0x1

    .line 2251
    .line 2252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2331
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 2254
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->onHomeSelected()V

    goto :goto_1

    .line 2259
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2263
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2264
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 2265
    const-string v2, "EXTRA_CALL_LOG_IDS"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->idsStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 2270
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2271
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    goto :goto_1

    .line 2267
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 2275
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2276
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 2277
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 2278
    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2279
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2281
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2283
    :cond_4
    const-string v2, "feature_hktw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 2284
    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2285
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2286
    :cond_5
    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2287
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2289
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2293
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2296
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2300
    :sswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z

    if-eqz v1, :cond_9

    .line 2301
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2303
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2307
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2311
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 2313
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->bIsShowingDlg:Z

    goto/16 :goto_0

    .line 2320
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2325
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2252
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09038b -> :sswitch_1
        0x7f09038c -> :sswitch_2
        0x7f09038d -> :sswitch_3
        0x7f09038e -> :sswitch_4
        0x7f09038f -> :sswitch_5
        0x7f090390 -> :sswitch_6
        0x7f090391 -> :sswitch_7
        0x7f090392 -> :sswitch_7
        0x7f090393 -> :sswitch_8
        0x7f090394 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 2771
    const-string v0, "CallDetailActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->disableProximitySensor(Z)V

    .line 2774
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 2775
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2777
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    .line 2778
    const-string v0, "feature_directcall_disable"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 2779
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v0, :cond_0

    .line 2780
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager Unregitser onPause  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->pause()V

    .line 2785
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/util/AsyncTaskExecutor;->cancel(Z)Z

    .line 2792
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsPostExcuteDone:Z

    if-nez v0, :cond_1

    .line 2793
    const-string v0, "CallDetailActivity"

    const-string v1, "Detail view is not arranged yet."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 2800
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f090390

    const v7, 0x7f090393

    const v5, 0x7f090391

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2172
    const v0, 0x7f09038b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2173
    const v0, 0x7f09038c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2174
    const v0, 0x7f09038d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->canPlaceCallsTo:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2176
    const v0, 0x7f09038e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2177
    const v0, 0x7f09038f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2178
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2179
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2180
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2181
    const v0, 0x7f090392

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2182
    const v0, 0x7f090394

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2184
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d03b4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2186
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d03b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2189
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    if-eqz v0, :cond_1

    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2193
    const-string v1, "reject_number="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2194
    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2195
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2196
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2197
    const-string v0, " AND reject_match="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2199
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v4

    .line 2203
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2204
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2205
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2207
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2208
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2215
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2217
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2218
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2246
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 2210
    :cond_2
    const v0, 0x7f090392

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2213
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2220
    :cond_4
    const v0, 0x7f090394

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2223
    :cond_5
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2225
    :cond_6
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2226
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2228
    :cond_7
    const-string v0, "feature_disable_call_rejection"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_9

    .line 2234
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 2235
    const v1, 0x7f09038e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2239
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2237
    :cond_8
    const v1, 0x7f09038f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 2241
    :cond_9
    const-string v0, "CallDetailActivity"

    const-string v1, "onPrepareOptionsMenu - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 681
    const-string v0, "CallDetailActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 684
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    .line 686
    :cond_0
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z

    .line 688
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 689
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setSystemTime()V

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mOldOrientation:I

    .line 694
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bConfigurationChanged:Z

    if-nez v0, :cond_2

    .line 695
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 696
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 699
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResumeOnPortrait:Z

    .line 705
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    .line 708
    :cond_2
    const-string v0, "feature_directcall_disable"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-nez v0, :cond_3

    .line 710
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectCallingManager regitser onResume  =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDirectCallingManager:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->resume()V

    .line 744
    :cond_3
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 745
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 746
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->bIsShowingDlg:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mUpdateDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mUpdateDialogHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 756
    :cond_4
    :goto_0
    return-void

    .line 750
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 751
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->bIsShowingDlg:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 673
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 674
    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState  mIsChangingConfiguration =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v0, "isChangingOrientation"

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mIsChangingConfiguration:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 677
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 2804
    const-string v0, "CallDetailActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2806
    return-void
.end method

.method public setCheckedOnOff(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isChecked"

    .prologue
    .line 3005
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3006
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3007
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3008
    return-void
.end method

.method updateCallDetailData()V
    .locals 1

    .prologue
    .line 3185
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V

    .line 3187
    return-void
.end method

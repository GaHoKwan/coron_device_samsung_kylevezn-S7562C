.class public Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.super Landroid/app/Fragment;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static isAvailChatOnV:Z

.field public static isAvailChatOnVideoCall:Z

.field public static isAvailChatOnVoiceCall:Z

.field public static isBuddyAvailChatOnV:Z

.field public static isBuddyAvailChatOnVideoCall:Z

.field public static isBuddyAvailChatOnVoiceCall:Z

.field private static isVoLTEEnabled:Z

.field private static mCallDetailIsRunning:Z

.field private static mIsContactDialog:Z


# instance fields
.field private final CONTEXTMENU_REMOVEDETAIL:I

.field private DuosCallSim1BtnImg:I

.field private bConfigurationChanged:Z

.field private canPlaceCallsTo:Z

.field private contactImage:Landroid/view/View;

.field private detailCount:I

.field ids:[J

.field private isUsingTwoPanel:Z

.field private korVideoCallBtnImg:I

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallDetail:Landroid/view/View;

.field private mCallDetailLand:Landroid/view/View;

.field private mCallDetailView:Landroid/view/View;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field mCdnipNumber:Ljava/lang/String;

.field private final mChatOnCallActionListener:Landroid/view/View$OnClickListener;

.field private final mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

.field private final mChatOnVTActionListener:Landroid/view/View$OnClickListener;

.field private mChatonId:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field mCnapName:Ljava/lang/String;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberForDialog:Ljava/lang/String;

.field private mNumberTextView:Landroid/widget/TextView;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field private final mQuanternaryActionListener:Landroid/view/View$OnClickListener;

.field private final mQuinticActionListener:Landroid/view/View$OnClickListener;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mSelectedUri:Ljava/lang/String;

.field mServiceType:I

.field private final mSexticActionListener:Landroid/view/View$OnClickListener;

.field private final mSim2CallActionListener:Landroid/view/View$OnClickListener;

.field private final mTertiaryActionListener:Landroid/view/View$OnClickListener;

.field private final mViewContactListener:Landroid/view/View$OnClickListener;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private nameText:Ljava/lang/String;

.field private numberText:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    .line 123
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isVoLTEEnabled:Z

    .line 191
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 192
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    .line 203
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnV:Z

    .line 204
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    .line 205
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    .line 207
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnV:Z

    .line 208
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnVoiceCall:Z

    .line 209
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isBuddyAvailChatOnVideoCall:Z

    .line 270
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "date"

    aput-object v3, v0, v1

    const-string v3, "duration"

    aput-object v3, v0, v5

    const-string v3, "number"

    aput-object v3, v0, v6

    const-string v3, "type"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "countryiso"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "geocoded_location"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "logtype"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "contactid"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "address"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "messageid"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "cnap_name"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "cdnip_number"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "service_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 304
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "display_name"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 110
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    .line 157
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z

    .line 166
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    .line 183
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->nameText:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CONTEXTMENU_REMOVEDETAIL:I

    .line 323
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 338
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 344
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    .line 362
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    .line 369
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuinticActionListener:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSexticActionListener:Landroid/view/View$OnClickListener;

    .line 389
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    .line 403
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnCallActionListener:Landroid/view/View$OnClickListener;

    .line 412
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$11;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnVTActionListener:Landroid/view/View$OnClickListener;

    .line 421
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$12;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 1818
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->canPlaceCallsTo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->adjustListItemLayoutByFontSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->contactImage:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View$OnKeyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Landroid/net/Uri;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->loadContactPhotos(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->saveViewStatusPreference()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->bConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    return-object p1
.end method

.method private adjustListItemLayoutByFontSize()V
    .locals 13

    .prologue
    const/16 v12, 0x258

    const/high16 v11, 0x44a0

    const/high16 v10, 0x4448

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1973
    const-string v3, "CallDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    .line 1977
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1979
    const-string v5, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lcdWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const-string v5, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smallestWidthdp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    packed-switch v1, :pswitch_data_0

    .line 2018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid font size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1988
    :pswitch_0
    const-string v1, "CallDetailFragment"

    const-string v5, "Large"

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    cmpl-float v1, v3, v11

    if-eqz v1, :cond_0

    cmpl-float v1, v3, v10

    if-nez v1, :cond_1

    .line 1990
    :cond_0
    if-ne v4, v12, :cond_1

    .line 1991
    const/16 v1, 0x32

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1992
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, -0xe

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1993
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f11004f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1995
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v9, :cond_1

    .line 1996
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1997
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2016
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 2003
    :pswitch_2
    const-string v1, "CallDetailFragment"

    const-string v5, "Huge"

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    cmpl-float v1, v3, v11

    if-eqz v1, :cond_2

    cmpl-float v1, v3, v10

    if-nez v1, :cond_1

    .line 2005
    :cond_2
    if-ne v4, v12, :cond_1

    .line 2006
    const/16 v1, 0x3c

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2007
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, -0x14

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2008
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f110053

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2010
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v9, :cond_1

    .line 2011
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2012
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private configureCallButton(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f09004f

    const v4, 0x7f0202b8

    const v8, 0x7f090052

    const v7, 0x7f090053

    const/4 v6, 0x0

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1501
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    const v0, 0x7f09004e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1503
    const v1, 0x7f090055

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1504
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1508
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isVoLTEEnabled:Z

    if-eqz v3, :cond_9

    .line 1509
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1510
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1511
    const v3, 0x7f0202bc

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1526
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1528
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1530
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mTertiaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1531
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1532
    const-string v3, "ip_call"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1533
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1534
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    .line 1537
    :goto_1
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1539
    const v3, 0x7f090050

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1540
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1541
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1542
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSim2CallActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1543
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1544
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1545
    const v3, 0x7f0202c9

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1547
    :cond_1
    const v3, 0x7f090054

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1548
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1549
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1550
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1551
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1553
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1554
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1555
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1556
    const v0, 0x7f090055

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1577
    :cond_2
    :goto_2
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1578
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1579
    const v0, 0x7f0202cf

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    .line 1585
    :goto_3
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1590
    const v0, 0x7f090044

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1591
    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1592
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuinticActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSexticActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1595
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1598
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1599
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mViewContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatonId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1608
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVoiceCall:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isAvailChatOnVideoCall:Z

    if-eqz v0, :cond_f

    .line 1609
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1610
    const v0, 0x7f090071

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1611
    const v1, 0x7f090072

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1612
    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1614
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnCallActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1618
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnVTActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1628
    :cond_5
    :goto_4
    return-void

    .line 1513
    :cond_6
    const-string v3, "feature_kt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1514
    const v3, 0x7f0202b9

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1516
    :cond_7
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1517
    const v3, 0x7f0202ba

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1520
    :cond_8
    const v3, 0x7f0202bb

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1523
    :cond_9
    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 1536
    :cond_a
    const v3, 0x7f0202bd

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DuosCallSim1BtnImg:I

    goto/16 :goto_1

    .line 1559
    :cond_b
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1560
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1561
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 1562
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1563
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_2

    .line 1566
    :cond_c
    const-string v2, "ip_call"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1567
    const v2, 0x7f090054

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1568
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1569
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1570
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mQuanternaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1571
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1572
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 1573
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    goto/16 :goto_2

    .line 1580
    :cond_d
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1581
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    goto/16 :goto_3

    .line 1583
    :cond_e
    const v0, 0x7f0202ce

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->korVideoCallBtnImg:I

    goto/16 :goto_3

    .line 1621
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1622
    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1623
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mChatOnMsgActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1624
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private getCallLogEntryUris(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)Ljava/lang/String;
    .locals 2
    .parameter "detailInfoData"

    .prologue
    .line 694
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->nameText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->nameText:Ljava/lang/String;

    .line 695
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->phoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->numberText:Ljava/lang/String;

    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, idsStr:Ljava/lang/String;
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->idsStr:Ljava/lang/String;

    .line 699
    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 55
    .parameter "callUri"

    .prologue
    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1230
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 1232
    .local v36, callCursor:Landroid/database/Cursor;
    if-eqz v36, :cond_0

    :try_start_0
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1233
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find content: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :catchall_0
    move-exception v4

    if-eqz v36, :cond_1

    .line 1391
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 1235
    :cond_2
    :try_start_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v42, v0

    .line 1236
    .local v42, details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const/16 v43, 0x0

    .local v43, i:I
    :goto_0
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_15

    .line 1238
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 1239
    .local v44, id:I
    const/4 v4, 0x3

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1240
    .local v49, number:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1241
    .local v20, date:J
    const/4 v4, 0x2

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1242
    .local v22, duration:J
    const/4 v4, 0x4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1243
    .local v37, callType:I
    const/4 v4, 0x5

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1244
    .local v17, countryIso:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1245
    .local v18, geocode:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1246
    .local v24, logType:I
    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1247
    .local v33, contactId:J
    const/16 v4, 0x9

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1248
    .local v15, address:Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1249
    .local v16, msgId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1255
    :cond_3
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1256
    const/16 v4, 0xb

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    .line 1257
    const/16 v4, 0xc

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    .line 1258
    const/16 v4, 0xd

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mServiceType:I

    .line 1265
    :cond_4
    const-string v25, ""

    .line 1266
    .local v25, nameText:Ljava/lang/CharSequence;
    const/16 v26, 0x0

    .line 1267
    .local v26, numberType:I
    const-string v27, ""

    .line 1268
    .local v27, numberLabel:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 1269
    .local v29, photoUri:Landroid/net/Uri;
    const/16 v28, 0x0

    .line 1271
    .local v28, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1375
    .local v14, numberText:Ljava/lang/CharSequence;
    :goto_1
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1376
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aput v37, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCnapName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mServiceType:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCdnipNumber:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v35, 0x0

    move/from16 v12, v44

    move-object/from16 v13, v49

    invoke-direct/range {v11 .. v35}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;JZ)V

    aput-object v11, v42, v43

    .line 1385
    :goto_2
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    .line 1236
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v14           #numberText:Ljava/lang/CharSequence;
    :cond_5
    const/4 v10, 0x0

    .line 1278
    .local v10, phoneUri:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v47

    .line 1281
    .local v47, mMatchLen:I
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v48

    .line 1282
    .local v48, nLen:I
    const/16 v46, 0x0

    .line 1283
    .local v46, mIsSpecialNum:Z
    invoke-static/range {v49 .. v49}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v46

    .line 1284
    const-string v4, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    move/from16 v0, v48

    move/from16 v1, v47

    if-le v0, v1, :cond_9

    if-nez v46, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1287
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    .line 1288
    .local v52, phoneLookup:Landroid/net/Uri;
    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 1303
    .end local v46           #mIsSpecialNum:Z
    .end local v47           #mMatchLen:I
    .end local v48           #nLen:I
    .end local v52           #phoneLookup:Landroid/net/Uri;
    :goto_3
    invoke-static/range {v49 .. v49}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1304
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1305
    .local v5, contactRef:Landroid/net/Uri;
    const-string v7, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 1308
    .local v7, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .line 1310
    .local v8, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v41

    .line 1318
    .local v41, dataTableCursor:Landroid/database/Cursor;
    move-object/from16 v38, v49

    .line 1320
    .local v38, candidateNumberText:Ljava/lang/String;
    if-eqz v41, :cond_7

    :try_start_2
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1321
    const-string v4, "contact_id"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1322
    .local v39, ctId:J
    const-string v4, "lookup"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1323
    .local v45, lookupKey:Ljava/lang/String;
    move-wide/from16 v0, v39

    move-object/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 1324
    const-string v4, "display_name"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1325
    if-nez v25, :cond_6

    const-string v25, ""

    .line 1326
    :cond_6
    const/16 v26, 0x3

    .line 1327
    const/16 v27, 0x0

    .line 1328
    const-string v4, "data1"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1329
    const-string v4, "photo_uri"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1330
    .local v54, photoUriString:Ljava/lang/String;
    if-nez v54, :cond_b

    const/16 v29, 0x0

    .line 1331
    :goto_4
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    if-eqz v4, :cond_7

    .line 1332
    const-string v4, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhoneCallDetailsForUri, photoUri : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1336
    .end local v39           #ctId:J
    .end local v45           #lookupKey:Ljava/lang/String;
    .end local v54           #photoUriString:Ljava/lang/String;
    :cond_7
    if-eqz v41, :cond_8

    :try_start_3
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 1337
    :cond_8
    move-object/from16 v14, v38

    .line 1338
    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1292
    .end local v5           #contactRef:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    .end local v38           #candidateNumberText:Ljava/lang/String;
    .end local v41           #dataTableCursor:Landroid/database/Cursor;
    .restart local v46       #mIsSpecialNum:Z
    .restart local v47       #mMatchLen:I
    .restart local v48       #nLen:I
    :cond_9
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v49 .. v49}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_3

    .line 1299
    .end local v46           #mIsSpecialNum:Z
    .end local v47           #mMatchLen:I
    .end local v48           #nLen:I
    :cond_a
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v49 .. v49}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    goto/16 :goto_3

    .line 1330
    .restart local v5       #contactRef:Landroid/net/Uri;
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    .restart local v38       #candidateNumberText:Ljava/lang/String;
    .restart local v39       #ctId:J
    .restart local v41       #dataTableCursor:Landroid/database/Cursor;
    .restart local v45       #lookupKey:Ljava/lang/String;
    .restart local v54       #photoUriString:Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v29

    goto :goto_4

    .line 1336
    .end local v39           #ctId:J
    .end local v45           #lookupKey:Ljava/lang/String;
    .end local v54           #photoUriString:Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v41, :cond_c

    :try_start_5
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 1337
    :cond_c
    move-object/from16 v14, v38

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    throw v4

    .line 1340
    .end local v5           #contactRef:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v14           #numberText:Ljava/lang/CharSequence;
    .end local v38           #candidateNumberText:Ljava/lang/String;
    .end local v41           #dataTableCursor:Landroid/database/Cursor;
    :cond_d
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v53

    .line 1341
    .local v53, phonesCursor:Landroid/database/Cursor;
    move-object/from16 v38, v49

    .line 1343
    .restart local v38       #candidateNumberText:Ljava/lang/String;
    if-eqz v53, :cond_12

    :try_start_6
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1344
    const/4 v4, 0x1

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1345
    const/4 v4, 0x6

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1346
    .restart local v54       #photoUriString:Ljava/lang/String;
    if-nez v54, :cond_11

    const/16 v29, 0x0

    .line 1348
    :goto_5
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->DBG:Z

    if-eqz v4, :cond_e

    .line 1349
    const-string v4, "CallDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhoneCallDetailsForUri, photoUri : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_e
    const/4 v4, 0x4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    move-object/from16 v0, v53

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1355
    const/4 v4, 0x2

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1356
    const/4 v4, 0x3

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1357
    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 1358
    .local v50, personId:J
    const-wide/16 v11, 0x0

    cmp-long v4, v50, v11

    if-lez v4, :cond_f

    .line 1359
    const/4 v4, 0x7

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v50

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v28

    .line 1370
    .end local v50           #personId:J
    .end local v54           #photoUriString:Ljava/lang/String;
    :cond_f
    :goto_6
    if-eqz v53, :cond_10

    :try_start_7
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1371
    :cond_10
    move-object/from16 v14, v38

    .line 1372
    .restart local v14       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1346
    .end local v14           #numberText:Ljava/lang/CharSequence;
    .restart local v54       #photoUriString:Ljava/lang/String;
    :cond_11
    :try_start_8
    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    goto :goto_5

    .line 1366
    .end local v54           #photoUriString:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v38

    goto :goto_6

    .line 1370
    :catchall_2
    move-exception v4

    if-eqz v53, :cond_13

    :try_start_9
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_13
    move-object/from16 v14, v38

    .restart local v14       #numberText:Ljava/lang/CharSequence;
    throw v4

    .line 1380
    .end local v10           #phoneUri:Landroid/net/Uri;
    .end local v38           #candidateNumberText:Ljava/lang/String;
    .end local v53           #phonesCursor:Landroid/database/Cursor;
    :cond_14
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aput v37, v19, v4

    move/from16 v12, v44

    move-object/from16 v13, v49

    move-wide/from16 v30, v33

    invoke-direct/range {v11 .. v31}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    aput-object v11, v42, v43
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 1390
    .end local v14           #numberText:Ljava/lang/CharSequence;
    .end local v15           #address:Ljava/lang/String;
    .end local v16           #msgId:Ljava/lang/String;
    .end local v17           #countryIso:Ljava/lang/String;
    .end local v18           #geocode:Ljava/lang/String;
    .end local v20           #date:J
    .end local v22           #duration:J
    .end local v24           #logType:I
    .end local v25           #nameText:Ljava/lang/CharSequence;
    .end local v26           #numberType:I
    .end local v27           #numberLabel:Ljava/lang/CharSequence;
    .end local v28           #contactUri:Landroid/net/Uri;
    .end local v29           #photoUri:Landroid/net/Uri;
    .end local v33           #contactId:J
    .end local v37           #callType:I
    .end local v44           #id:I
    .end local v49           #number:Ljava/lang/String;
    :cond_15
    if-eqz v36, :cond_16

    .line 1391
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_16
    return-object v42
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1405
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadContactPhotos(Landroid/net/Uri;J)V
    .locals 7
    .parameter "photoUri"
    .parameter "randomSeed"

    .prologue
    const/4 v3, 0x1

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    move-object v2, p1

    move v4, v3

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadCallLogDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V

    .line 1401
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 1716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1718
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1719
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 1720
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1721
    return-void
.end method

.method private saveViewStatusPreference()V
    .locals 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "logslist_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1674
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1675
    const-string v1, "reject_popup"

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1677
    return-void
.end method

.method private setFullWindowLayout()V
    .locals 5

    .prologue
    const v4, 0x7f0c0081

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, contactBackground:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 564
    .local v1, lpContactBackground:Landroid/view/ViewGroup$LayoutParams;
    const-string v2, "CallDetailFragment"

    const-string v3, "setFullWindowLayout"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    return-void
.end method

.method private setLogsDetailLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 589
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 590
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 593
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setMultiWindowLayout(II)V

    .line 598
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setView(Landroid/view/View;)V

    .line 607
    :goto_1
    return-void

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setFullWindowLayout()V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 610
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 611
    const v0, 0x7f090063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 612
    const v0, 0x7f090065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberTextView:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f0900fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mHeaderOverlayView:Landroid/view/View;

    .line 614
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    .line 615
    return-void
.end method

.method private showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1681
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1682
    const v1, 0x7f040148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1684
    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1686
    const v2, 0x7f090304

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1689
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContextForDialog:Landroid/content/Context;

    .line 1690
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumberForDialog:Ljava/lang/String;

    .line 1692
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$14;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$14;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1698
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0326

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d035a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0359

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$15;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1711
    return-void
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1226
    return-void
.end method


# virtual methods
.method public WindowStatusChanged(Z)V
    .locals 3
    .parameter "isMaximized"

    .prologue
    .line 545
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    if-eqz v1, :cond_0

    .line 546
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 548
    const-string v1, "CallDetailFragment"

    const-string v2, "WindowStatusChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz p1, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setFullWindowLayout()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 553
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setMultiWindowLayout(II)V

    goto :goto_0
.end method

.method public changeDetailInfo(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V
    .locals 10
    .parameter "detailInfoData"

    .prologue
    const v9, 0x7f09003f

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 618
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 619
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getCallLogEntryUris(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 623
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 625
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 634
    .local v0, detailInfo:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 635
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v6, 0x7f09007f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 636
    .local v4, detailList:Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 639
    .local v1, detailInfoLand:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v6, 0x7f090062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 641
    .local v2, detailInfoLandButton:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v6, 0x7f09003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 643
    .local v3, detailLandList:Landroid/widget/ListView;
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 645
    .end local v0           #detailInfo:Landroid/widget/RelativeLayout;
    .end local v1           #detailInfoLand:Landroid/widget/LinearLayout;
    .end local v2           #detailInfoLandButton:Landroid/widget/LinearLayout;
    .end local v3           #detailLandList:Landroid/widget/ListView;
    .end local v4           #detailList:Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 646
    return-void

    .line 629
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearDetailInfo()V
    .locals 17

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 650
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    .line 652
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09003f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 653
    .local v1, detailInfo:Landroid/widget/RelativeLayout;
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09007f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 655
    .local v14, detailList:Landroid/widget/RelativeLayout;
    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090066

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 657
    .local v2, detailInfoButton:Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090067

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 659
    .local v3, detailInfoButton2:Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09006d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 662
    .local v4, detailInfoButton3:Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f090076

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 664
    .local v5, detailInfoButton4:Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v16, 0x7f09007b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 666
    .local v6, detailInfoButton5:Landroid/widget/RelativeLayout;
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f09003f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 669
    .local v7, detailInfoLand:Landroid/widget/LinearLayout;
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090062

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 671
    .local v8, detailInfoLandButton:Landroid/widget/LinearLayout;
    const/4 v15, 0x4

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f09003e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 673
    .local v13, detailLandList:Landroid/widget/ListView;
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090069

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 675
    .local v9, detailInfoLandButton_2:Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f09006f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 678
    .local v10, detailInfoLandButton_3:Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f090078

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 680
    .local v11, detailInfoLandButton_4:Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    const v16, 0x7f09007d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 682
    .local v12, detailInfoLandButton_5:Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    return-void
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1757
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1753
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 516
    const-string v0, "CallDetailFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 518
    const-string v0, "CallDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 535
    const-string v0, "CallDetailFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setLogsDetailLayout()V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 1794
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1795
    const-string v0, "CallDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= onCreateContextMenu ======= item.getItemId() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1802
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1798
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showDeleteConfirmDlg()V

    .line 1799
    const/4 v0, 0x1

    goto :goto_0

    .line 1796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    .line 441
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 442
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 443
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 447
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 449
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->isUsingTwoPanel:Z

    .line 451
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 459
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x101

    const/4 v4, 0x1

    .line 1766
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1767
    const-string v0, "CallDetailFragment"

    const-string v1, "========= onCreateContextMenu ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1770
    const-string v1, "CallDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========= onCreateContextMenu ===== nPosition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 1772
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 1775
    const-string v0, "ctc_roaming_timezone"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const-string v3, "Asia/Shanghai"

    invoke-static {v0, v1, v2, v5, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1782
    :goto_0
    const-string v0, "CallDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========= onCreateContextMenu ======= selectedId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const v0, 0x7f090084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1784
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    .line 1785
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1786
    const/4 v0, 0x0

    const v1, 0x7f0d0319

    invoke-interface {p1, v4, v4, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1787
    const-string v0, "CallDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= onCreateContextMenu ======= detailCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->detailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 1789
    return-void

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mDeleteCallDetails:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v0, v1, v2, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 523
    const-string v1, "CallDetailFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, fragmentView:Landroid/view/View;
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    .line 527
    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailLand:Landroid/view/View;

    .line 529
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1745
    const-string v0, "CallDetailFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1748
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1631
    .line 1632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1669
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1634
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->onHomeSelected()V

    goto :goto_0

    .line 1639
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1642
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1643
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->uri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 1644
    const-string v2, "EXTRA_CALL_LOG_IDS"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->ids:[J

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1648
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1646
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1651
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1657
    :sswitch_4
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v1, :cond_2

    .line 1658
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1660
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09038b -> :sswitch_1
        0x7f09038c -> :sswitch_2
        0x7f09038d -> :sswitch_3
        0x7f09038e -> :sswitch_4
        0x7f09038f -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1724
    const-string v0, "CallDetailFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 1727
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->disableProximitySensor(Z)V

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->clearPendingRequests()V

    .line 1729
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1737
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 463
    const-string v3, "CallDetailFragment"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 465
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailIsRunning:Z

    .line 466
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->setLogsDetailLayout()V

    .line 497
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 498
    .local v0, create_contact_button:Landroid/widget/Button;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 499
    .local v1, update_existing_button:Landroid/widget/Button;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 501
    .local v2, view_contact_button:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 502
    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 503
    invoke-virtual {v2}, Landroid/widget/Button;->invalidate()V

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mSelectedUri:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->updateData(Ljava/lang/String;)V

    .line 510
    :goto_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z

    .line 511
    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->clearDetailInfo()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1740
    const-string v0, "CallDetailFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1742
    return-void
.end method

.method public setDefaultFocus()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1896
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1897
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1898
    return-void
.end method

.method public setMultiWindowLayout(II)V
    .locals 5
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 576
    .local v2, maxHeight:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetail:Landroid/view/View;

    const v4, 0x7f090041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, contactBackground:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 579
    .local v1, lpContactBackground:Landroid/view/ViewGroup$LayoutParams;
    const-string v3, "CallDetailFragment"

    const-string v4, "setMultiWindowLayout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, p2

    div-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    return-void
.end method

.method public showDeleteConfirmDlg()V
    .locals 3

    .prologue
    .line 1806
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0357

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0359

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$17;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02f8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1817
    return-void
.end method

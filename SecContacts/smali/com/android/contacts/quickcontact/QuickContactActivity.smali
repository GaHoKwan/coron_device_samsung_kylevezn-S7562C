.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DSDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isVoLTEEnabled:Z

.field public static mChatOnVideoCallCapability:Z

.field public static mChatOnVoiceCallCapability:Z


# instance fields
.field public final SHOW_OR_CREATE_EMAIL:I

.field public final SHOW_OR_CREATE_PHONE:I

.field public final SHOW_OR_CREATE_SIP:I

.field final SIM_ONE:I

.field final SIM_ZERO:I

.field private isUsingTwoPanel:Z

.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mContactId:J

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCurrentMode:I

.field private mDataObserver:Landroid/database/ContentObserver;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasFinishedAnimatingIn:Z

.field private mHasStartedAnimatingOut:Z

.field private mIsMultiWindowSupported:Z

.field private mLineAfterTrack:Landroid/view/View;

.field private mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPaddingAfterPhoto:Landroid/view/View;

.field private mPhotoContainer:Landroid/view/View;

.field private final mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

.field private mRcsActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

.field private mRcsViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScheme:Ljava/lang/String;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mServiceLookup:Landroid/net/Uri;

.field private mShowOrCreateMode:Z

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsp:Ljava/lang/String;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    .line 219
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_CHN:Ljava/util/List;

    .line 227
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/cdmacall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/sip_address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    .line 232
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall2-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/ipcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/sip_address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;

    .line 237
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/gsmcall-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/gsmcall2-address"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/vcall-address"

    aput-object v1, v0, v6

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS:Ljava/util/List;

    .line 242
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    .line 253
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->mChatOnVoiceCallCapability:Z

    .line 254
    sput-boolean v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->mChatOnVideoCallCapability:Z

    .line 255
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

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    .line 144
    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    .line 145
    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    .line 158
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 162
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    .line 179
    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    .line 181
    iput v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SHOW_OR_CREATE_PHONE:I

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SHOW_OR_CREATE_EMAIL:I

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SHOW_OR_CREATE_SIP:I

    .line 185
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 194
    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 206
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 265
    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SIM_ZERO:I

    .line 266
    iput v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SIM_ONE:I

    .line 738
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 1936
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 1948
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 2000
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 2031
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getClassNameOfBaseActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onServiceQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindPhotoData(Landroid/database/Cursor;)V

    return-void
.end method

.method private bindData(Landroid/database/Cursor;)V
    .locals 24
    .parameter

    .prologue
    .line 1040
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v19

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1048
    new-instance v20, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v20 .. v20}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v21

    .line 1053
    const v3, 0x7f0900e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1054
    if-nez v3, :cond_3

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v4, 0x7f0900e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v18, v3

    .line 1062
    :goto_0
    if-eqz v18, :cond_0

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    :cond_0
    const/4 v3, 0x0

    move-object v15, v3

    .line 1068
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1070
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 1072
    const/16 v3, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1075
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1077
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1078
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1079
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1080
    const/16 v3, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1081
    :goto_2
    const/16 v3, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 1084
    :goto_3
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1085
    const-string v3, "data14"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1086
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    .line 1087
    :goto_4
    if-eqz v3, :cond_2

    .line 1088
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1089
    sget-object v5, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1092
    new-instance v4, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1113
    :cond_2
    const-string v3, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1114
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1115
    if-eqz v3, :cond_1

    .line 1116
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    :cond_3
    move-object/from16 v18, v3

    .line 1059
    goto/16 :goto_0

    .line 1080
    :cond_4
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_2

    .line 1081
    :cond_5
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_3

    .line 1086
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1121
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 1123
    if-eqz v6, :cond_d

    .line 1127
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v3, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 1130
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    if-eqz v3, :cond_17

    .line 1135
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1136
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1139
    if-eqz v4, :cond_b

    .line 1141
    if-nez v17, :cond_a

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 1142
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/cdmacall-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_b
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1149
    if-eqz v4, :cond_d

    .line 1151
    if-nez v17, :cond_c

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1152
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/gsmcall-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_d
    :goto_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1213
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v6, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1214
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1218
    if-eqz v4, :cond_f

    .line 1220
    if-nez v17, :cond_e

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1221
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/ipcall-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_f
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v6, :cond_11

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1228
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1232
    if-eqz v4, :cond_11

    .line 1234
    if-nez v17, :cond_10

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    .line 1235
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/vcall-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    :cond_11
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "vnd.android.cursor.item/vnd.twitter.profile"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1243
    :cond_12
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 1244
    if-eqz v6, :cond_13

    .line 1245
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "com.sec.android.app.contacts/vnd.social"

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;J)V

    .line 1246
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11, v4}, Lcom/android/contacts/quickcontact/DataAction;->setSocialData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1256
    :cond_13
    const-string v3, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isChatOnVSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1258
    const-string v3, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1259
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    const-string v3, "com.sds.vapp.voipcall"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    const-string v3, "user_account"

    invoke-virtual {v14, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v3, "video_call"

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1263
    new-instance v9, Lcom/android/contacts/quickcontact/DataAction;

    const/4 v13, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1264
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v3

    .line 1265
    if-eqz v3, :cond_15

    .line 1267
    if-nez v17, :cond_14

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15

    .line 1268
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    :cond_15
    const/16 v3, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    .line 1276
    :goto_7
    if-eqz v3, :cond_1

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1277
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 1279
    if-eqz v6, :cond_1

    .line 1280
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/im"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 1128
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1155
    :cond_17
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1162
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1163
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1165
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1166
    if-eqz v4, :cond_1b

    .line 1168
    if-nez v17, :cond_1a

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 1169
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/gsmcall-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_1b
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v5, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1175
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1176
    if-eqz v4, :cond_d

    .line 1178
    if-nez v17, :cond_1c

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1179
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    const-string v5, "vnd.android.cursor.item/gsmcall2-address"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1183
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1184
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1185
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1188
    :cond_1e
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v4, p0

    move-object v5, v11

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 1190
    if-eqz v4, :cond_d

    .line 1192
    if-nez v17, :cond_1f

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1193
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1275
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1288
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1289
    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_8

    .line 1292
    :cond_22
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 1296
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1301
    :goto_9
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1302
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1303
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactPresenceIconUtil;->getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 1306
    const v4, 0x7f0900fd

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 1311
    :cond_23
    if-eqz v18, :cond_24

    .line 1313
    if-eqz v15, :cond_27

    .line 1314
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1329
    :cond_24
    :goto_a
    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1336
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1337
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1338
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1339
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1298
    :cond_26
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 1317
    :cond_27
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 1347
    :cond_28
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1349
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1350
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1356
    :cond_2a
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1357
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1389
    :cond_2c
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v6, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v6, :cond_2e

    aget-object v7, v3, v4

    .line 1390
    sget-object v8, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1391
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1389
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1397
    :cond_2e
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1398
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1399
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1404
    :cond_30
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1412
    :cond_31
    const/4 v3, 0x0

    .line 1413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v3

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 1414
    if-eqz v5, :cond_32

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f04013a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1416
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1419
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 1420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1421
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    .line 1422
    goto :goto_10

    .line 1424
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04013a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1453
    :cond_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1454
    const/4 v4, 0x0

    .line 1455
    const/4 v3, 0x0

    .line 1462
    const/4 v5, 0x0

    move v10, v5

    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_36

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04013a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 1469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1470
    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 1472
    iget-object v3, v9, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1473
    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1474
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 1475
    iget-object v3, v4, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    .line 1477
    const-string v5, "sip:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1478
    const-string v5, "tel:"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1480
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v5, v9, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    iget-object v7, v9, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    iget-object v8, v4, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    iget-object v5, v9, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    goto :goto_12

    .line 1462
    :cond_35
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v4, v12

    move v3, v11

    goto/16 :goto_11

    .line 1487
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v3, 0x1

    .line 1488
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_39

    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v5, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v3, :cond_3a

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPaddingAfterPhoto:Landroid/view/View;

    if-eqz v4, :cond_37

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPaddingAfterPhoto:Landroid/view/View;

    if-eqz v3, :cond_3b

    const/16 v4, 0x8

    :goto_16
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v3, :cond_3c

    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1499
    return-void

    .line 1487
    :cond_38
    const/4 v3, 0x0

    goto :goto_13

    .line 1488
    :cond_39
    const/16 v4, 0x8

    goto :goto_14

    .line 1489
    :cond_3a
    const/16 v4, 0x8

    goto :goto_15

    .line 1491
    :cond_3b
    const/4 v4, 0x0

    goto :goto_16

    .line 1493
    :cond_3c
    const/16 v4, 0x8

    goto :goto_17

    .line 1494
    :cond_3d
    const/16 v3, 0x8

    goto :goto_18
.end method

.method private bindPhotoData(Landroid/database/Cursor;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f0900e6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 956
    new-instance v6, Lcom/android/contacts/util/DataStatus;

    invoke-direct {v6}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 960
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 961
    if-nez v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v5, v0

    .line 968
    :goto_0
    if-eqz v5, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    move-object v2, v1

    .line 973
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 975
    invoke-virtual {v6, p1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 977
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 984
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    const-string v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 986
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 987
    :goto_2
    if-eqz v0, :cond_2

    .line 988
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 989
    sget-object v0, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 992
    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$9;

    invoke-direct {v7, p0, v0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v7, v8, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1015
    :cond_2
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1016
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1

    .line 1018
    array-length v2, v0

    invoke-static {v0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v5, v0

    .line 965
    goto :goto_0

    :cond_4
    move v0, v4

    .line 986
    goto :goto_2

    .line 1023
    :cond_5
    if-eqz v5, :cond_6

    .line 1025
    if-eqz v2, :cond_7

    .line 1026
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1033
    :cond_6
    :goto_3
    return-void

    .line 1029
    :cond_7
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    invoke-static {v3, v4, v0, v1}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z
    .locals 2
    .parameter "action"
    .parameter "resolveCache"

    .prologue
    .line 1865
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 1867
    const/4 v0, 0x1

    .line 1869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 3
    .parameter "position"

    .prologue
    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/CheckableImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :goto_0
    return-object v1

    .line 1923
    :catch_0
    move-exception v0

    .line 1925
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getClassNameOfBaseActivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2097
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2098
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2100
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceLookupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter "lookupUri"

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 688
    .local v1, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 690
    .local v0, noOfParts:I
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 692
    .local v2, uri:Landroid/net/Uri;
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 693
    return-object v2
.end method

.method private handleOutsideTouch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 699
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    if-nez v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    if-nez v2, :cond_0

    .line 702
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    .line 703
    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    move v0, v1

    .line 704
    goto :goto_0
.end method

.method private hide(Z)V
    .locals 3
    .parameter "withAnimation"

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 710
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 715
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 717
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    .line 720
    :cond_1
    if-eqz p1, :cond_2

    .line 721
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    .line 731
    :goto_0
    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    .line 729
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0205e7

    const/4 v3, 0x0

    .line 1877
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040143

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 1881
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1882
    invoke-virtual {v0, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 1884
    if-eqz v1, :cond_1

    .line 1885
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/Action;

    .line 1888
    invoke-virtual {p2, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1889
    invoke-virtual {p2, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1890
    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 1891
    invoke-virtual {v0, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1892
    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1894
    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    sget-boolean v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    if-eqz v1, :cond_0

    .line 1898
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1899
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1900
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1913
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1915
    :cond_1
    return-object v0

    .line 1902
    :cond_2
    const-string v1, "feature_kt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1903
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1905
    :cond_3
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1909
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 945
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v4

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 947
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 948
    const/4 v4, 0x1

    goto :goto_0

    .line 946
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private onServiceQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->getFeatureDescriptions()Ljava/util/Collection;

    move-result-object v11

    .line 801
    if-nez p3, :cond_0

    .line 888
    :goto_0
    return-void

    .line 805
    :cond_0
    const-string v2, "feature_tag"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 806
    const-string v2, "icon_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 807
    const-string v2, "package_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 808
    const-string v2, "is_enabled"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 809
    const-string v2, "int_category"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 810
    const-string v2, "int_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 811
    const-string v2, "displayname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 812
    const-string v2, "sip_uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 813
    const-string v2, "service_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->reset()V

    .line 823
    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 825
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 826
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 828
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 829
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 831
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 833
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 834
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 837
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 838
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "tel"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 839
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.samsung.rcs.framework.presence.action.anonymousfetch"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    const-string v10, "com.samsung.rcs.framework.presence"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v10, "com.samsung.rcs.framework.presence.action"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 844
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 847
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 849
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 850
    new-instance v7, Landroid/content/Intent;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 851
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 853
    invoke-virtual {v7, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 868
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 870
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    iget-object v5, v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 872
    iget-boolean v3, v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    if-eqz v3, :cond_5

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040143

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 876
    invoke-virtual {v3, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    iget v7, v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 880
    invoke-virtual {v3, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 887
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private rcsShow()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getServiceLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    .line 617
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 618
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mServiceLookup:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 933
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 934
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 935
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    if-nez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    :cond_0
    return-void

    .line 936
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 893
    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 894
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 899
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 900
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 906
    :cond_0
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    :cond_1
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 924
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 926
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    :cond_0
    return-void

    .line 927
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLayoutForMultiWindow()V
    .locals 0

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->adjustLayout()V

    .line 529
    return-void
.end method

.method private show()V
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 550
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 552
    .local v2, lookupUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 557
    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 559
    .local v10, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 563
    .end local v10           #rawContactId:J
    :cond_1
    const-string v0, "missing lookupUri"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 565
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactId:J

    .line 568
    invoke-virtual {v9}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 569
    .local v12, targetScreen:Landroid/graphics/Rect;
    if-nez v12, :cond_2

    .line 570
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 571
    .local v8, defaultDisplay:Landroid/view/Display;
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #targetScreen:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v12, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 574
    .end local v8           #defaultDisplay:Landroid/view/Display;
    .restart local v12       #targetScreen:Landroid/graphics/Rect;
    :cond_2
    const-string v0, "missing targetScreen"

    invoke-static {v12, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0, v12}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 577
    const-string v0, "exclude_mimes"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 580
    const v0, 0x7f0902e4

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 581
    const v0, 0x7f0900fd

    const v4, 0x104000e

    invoke-direct {p0, v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 582
    const v0, 0x7f0900eb

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 583
    const v0, 0x7f0902e5

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 584
    const v0, 0x7f0902e6

    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 590
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->rcsShow()V

    .line 594
    :cond_3
    const-string v0, "data"

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 595
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 599
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "vnd.android.cursor.item/photo"

    aput-object v14, v6, v13

    const-string v13, "vnd.android.cursor.item/photo"

    aput-object v13, v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private showForShowOrCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 627
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 628
    .local v3, targetScreen:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 629
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 630
    .local v1, defaultDisplay:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #targetScreen:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 633
    .end local v1           #defaultDisplay:Landroid/view/Display;
    .restart local v3       #targetScreen:Landroid/graphics/Rect;
    :cond_0
    const-string v5, "missing targetScreen"

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v5, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 636
    const-string v5, "exclude_mimes"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 639
    const v5, 0x7f0902e4

    invoke-virtual {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 643
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f0900fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 645
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 647
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f0902e7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 648
    .local v0, createButton:Landroid/widget/Button;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v6, 0x7f0902e8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 664
    .local v4, updateButton:Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 665
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataForShowOrCreate()V

    .line 682
    return-void
.end method


# virtual methods
.method public adjustLayout()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1504
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1505
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    if-eqz v0, :cond_4

    move v1, v2

    .line 1506
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1507
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1508
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v4, v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1509
    if-nez v0, :cond_2

    move-object v0, v3

    .line 1519
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 1521
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1522
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    .line 1523
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v0, :cond_1

    .line 1524
    :cond_0
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1525
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    :cond_1
    return-void

    .line 1512
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_3

    .line 1513
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1506
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method bindDataForShowOrCreate()V
    .locals 9

    .prologue
    .line 1531
    invoke-static {p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v7

    .line 1534
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1536
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    .line 1540
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1541
    if-nez v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    .line 1547
    :goto_0
    if-eqz v6, :cond_0

    .line 1548
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1551
    :cond_0
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 1656
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1657
    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 1545
    goto :goto_0

    .line 1553
    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 1554
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 1556
    :goto_3
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v0, :cond_7

    .line 1584
    :cond_4
    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1585
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1587
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/cdmacall-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1589
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1591
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1593
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/gsmcall-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1595
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1623
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1625
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1627
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/ipcall-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1629
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1632
    :cond_5
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1635
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/vcall-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1637
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 1554
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1597
    :cond_7
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1602
    :cond_9
    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ResolveCache;->clear()V

    .line 1603
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1605
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/gsmcall-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1607
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 1609
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1611
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/gsmcall2-address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1613
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_4

    .line 1615
    :cond_a
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1617
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1619
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_4

    .line 1641
    :pswitch_1
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1643
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/email_v2"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1645
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 1648
    :pswitch_2
    const-string v0, "vnd.sec.contact.phone"

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1650
    new-instance v0, Lcom/android/contacts/quickcontact/DataAction;

    const-string v2, "vnd.android.cursor.item/sip_address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V

    .line 1652
    invoke-direct {p0, v0, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 1660
    :cond_b
    if-eqz v6, :cond_c

    .line 1662
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1667
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1669
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1670
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DUAL_CHN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1671
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1672
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1678
    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDuringACall(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1681
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1683
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS_CHN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1684
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1685
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1690
    :cond_10
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_DSDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1691
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1692
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1699
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1701
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES_CHN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1702
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1703
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1708
    :cond_14
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1709
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1710
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1711
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1717
    :cond_16
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_18

    aget-object v4, v0, v1

    .line 1718
    sget-object v5, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1719
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1717
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1725
    :cond_18
    const/4 v0, 0x0

    .line 1726
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1727
    if-eqz v2, :cond_19

    .line 1728
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f04013a

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1729
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1732
    :cond_19
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v7, v0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 1733
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1734
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1735
    goto :goto_b

    .line 1737
    :cond_1a
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013a

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1738
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1740
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 1741
    :goto_c
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1742
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPaddingAfterPhoto:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 1744
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPaddingAfterPhoto:Landroid/view/View;

    if-eqz v0, :cond_1f

    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1746
    :cond_1b
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1747
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1751
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 1763
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 1764
    return-void

    .line 1740
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 1741
    :cond_1d
    const/16 v1, 0x8

    goto :goto_d

    .line 1742
    :cond_1e
    const/16 v1, 0x8

    goto :goto_e

    .line 1744
    :cond_1f
    const/4 v1, 0x0

    goto :goto_f

    .line 1746
    :cond_20
    const/16 v1, 0x8

    goto :goto_10

    .line 1747
    :cond_21
    const/16 v0, 0x8

    goto :goto_11

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 1931
    check-cast p1, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 1932
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 1933
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    .line 736
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/high16 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsMultiWindowSupported:Z

    .line 275
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 276
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 279
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->isUsingTwoPanel:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_invalid_uri"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 282
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 284
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v2, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 287
    .local v1, originalExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scheme"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ssp"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    .line 293
    const-string v2, "mailto"

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    .line 295
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "email"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "query"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 310
    :cond_2
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    .line 314
    .end local v1           #originalExtras:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v2, :cond_8

    .line 315
    const v2, 0x7f0d005d

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 418
    :cond_4
    :goto_1
    return-void

    .line 297
    .restart local v1       #originalExtras:Landroid/os/Bundle;
    :cond_5
    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 298
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "phone"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "query"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto :goto_0

    .line 301
    :cond_6
    const-string v2, "sip"

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 302
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "sip"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v3, "query"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto :goto_0

    .line 306
    :cond_7
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    goto :goto_0

    .line 322
    .end local v1           #originalExtras:Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 325
    const v2, 0x7f040138

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    .line 327
    const v2, 0x7f0902d3

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 328
    const v2, 0x7f0902eb

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 329
    const v2, 0x7f0902ea

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 330
    const v2, 0x7f0900ff

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 331
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 332
    const v2, 0x7f0902d6

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 333
    const v2, 0x7f0902ec

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 334
    const v2, 0x7f0902d4

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPaddingAfterPhoto:Landroid/view/View;

    .line 335
    const v2, 0x7f0902d5

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 337
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    .line 360
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v2, :cond_b

    .line 361
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 365
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->disableBounceBack(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 368
    new-instance v2, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 371
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 372
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    .line 373
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;

    .line 374
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    .line 377
    :cond_9
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 379
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v2, :cond_c

    .line 380
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->show()V

    .line 383
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 384
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v3, "data"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 385
    .local v0, dataUri:Landroid/net/Uri;
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    .line 404
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    .end local v0           #dataUri:Landroid/net/Uri;
    :cond_a
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    new-instance v2, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v2}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 415
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    goto/16 :goto_1

    .line 363
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 408
    :cond_c
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 496
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 423
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 425
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    const-string v0, "QuickContact"

    const-string v1, "VoLTEStateTracker : stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/android/contacts/VoLTEStateTracker;->stopTracking()V

    .line 430
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 437
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "QuickContact"

    const-string v1, "VoLTEStateTracker : startTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 453
    sget-boolean v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateImage(Z)V

    .line 456
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 505
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 535
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    .line 538
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 0
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setLayoutForMultiWindow()V

    .line 510
    return-void
.end method

.method public updateImage(Z)V
    .locals 5
    .parameter "isVolteEnabled"

    .prologue
    const v4, 0x7f0205e7

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 461
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v1

    .line 462
    .local v1, v:Lcom/android/contacts/quickcontact/CheckableImageView;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    sget-boolean v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->isVoLTEEnabled:Z

    if-eqz v2, :cond_5

    .line 464
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    .end local v1           #v:Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    if-eqz v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->updateVolteImage(Z)V

    .line 487
    :cond_1
    return-void

    .line 468
    .restart local v1       #v:Lcom/android/contacts/quickcontact/CheckableImageView;
    :cond_2
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 471
    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020388

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 475
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 478
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 460
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

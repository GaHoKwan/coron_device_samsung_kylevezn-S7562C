.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final buildcarrier:Ljava/lang/String;

.field private static checkScroll:Z

.field private static focusRequested:Z

.field private static mPrevView:Landroid/view/View;

.field public static mResumeFromDetail:Z

.field private static prev_pos:I

.field private static refreshDetail:Z

.field private static selectedPos:I


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

.field private isSplitStatus:Z

.field private final mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsVoLTEEnabled:Z

.field private final mKeyActionListener:Landroid/view/View$OnKeyListener;

.field private mLoading:Z

.field mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->buildcarrier:Ljava/lang/String;

    .line 119
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    .line 178
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    .line 265
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->focusRequested:Z

    .line 268
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    .line 269
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 270
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 271
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    .line 273
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "callLogFragment"
    .parameter "callFetcher"
    .parameter "currentCountryIso"
    .parameter "voicemailNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 615
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 158
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->NOR_INT:I

    .line 159
    const/16 v2, 0x37

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->SEP_INT:I

    .line 174
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    .line 175
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 177
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 262
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 276
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 277
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 280
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    .line 351
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    .line 411
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 507
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 559
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 599
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 617
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 618
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    .line 620
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 622
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 623
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 624
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 626
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 627
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 629
    .local v0, callTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 630
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, p5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 631
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 633
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 636
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 649
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->prev_pos:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method private adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v11, 0x44a0

    const/high16 v10, 0x4448

    const/high16 v9, 0x4391

    const v8, 0x7f0900c7

    const/4 v7, 0x0

    .line 2113
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2115
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2116
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2117
    const v1, 0x7f0900d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2119
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mlp.topMargin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name_mlp.topMargin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getTextSize() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2122
    packed-switch v3, :pswitch_data_0

    .line 2169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid font size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :pswitch_0
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1

    .line 2129
    const/16 v2, 0xb

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2130
    const/16 v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2131
    const/16 v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2133
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004d

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2134
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2203
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 2136
    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_0

    .line 2137
    const-string v0, "CallLogAdapter"

    const-string v2, "Large"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2139
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004e

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2140
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2144
    :pswitch_2
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_3

    .line 2145
    const/16 v2, 0xb

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2146
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2147
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2149
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2150
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110055

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2154
    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2152
    :cond_2
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110051

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 2161
    :cond_3
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_0

    .line 2162
    const-string v0, "CallLogAdapter"

    const-string v2, "huge"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    const/16 v0, -0xc

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2164
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2165
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2172
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 2174
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2176
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lcdWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smallestWidthdp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    packed-switch v3, :pswitch_data_1

    .line 2205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid font size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2185
    :pswitch_3
    const-string v3, "CallLogAdapter"

    const-string v4, "Large"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    cmpl-float v3, v0, v11

    if-eqz v3, :cond_5

    cmpl-float v0, v0, v10

    if-nez v0, :cond_0

    .line 2187
    :cond_5
    const/16 v0, 0x258

    if-ne v2, v0, :cond_0

    .line 2188
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2189
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004e

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2190
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2195
    :pswitch_4
    const-string v3, "CallLogAdapter"

    const-string v4, "Huge"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    cmpl-float v3, v0, v11

    if-eqz v3, :cond_6

    cmpl-float v0, v0, v10

    if-nez v0, :cond_0

    .line 2197
    :cond_6
    const/16 v0, 0x258

    if-ne v2, v0, :cond_0

    .line 2198
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2199
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2200
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 37
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 1257
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 1263
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_1

    .line 1266
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    aget-object v3, v3, v4

    .line 1269
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1273
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    if-eqz v3, :cond_14

    .line 1275
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1276
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1285
    :cond_1
    :goto_0
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    const/16 v3, 0x19

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1290
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1291
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1292
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1293
    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 1294
    const/4 v3, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1295
    const/16 v3, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1296
    const/16 v3, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1297
    const/16 v3, 0x18

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1299
    const/16 v3, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1300
    const/16 v3, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1301
    const/16 v3, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1303
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1304
    const/16 v3, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1305
    const/16 v3, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1306
    const/16 v3, 0x1b

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 1308
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v9

    .line 1311
    const/16 v3, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1312
    const/16 v3, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1313
    const/16 v3, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1314
    const/16 v3, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1315
    const/16 v3, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1316
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1326
    const-string v5, "feature_cityid"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1327
    if-eqz v3, :cond_3e

    .line 1328
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1338
    :goto_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v3, p0

    move/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v11

    .line 1343
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 1344
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->focusRequested:Z

    .line 1346
    :cond_2
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1348
    invoke-virtual {v3}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_18

    .line 1353
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_16

    .line 1354
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1355
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1356
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->focusRequested:Z

    .line 1375
    :cond_3
    :goto_3
    const v3, 0x7f0900cf

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1379
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "-3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v5, "P"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1392
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1394
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    sparse-switch v17, :sswitch_data_0

    .line 1449
    :cond_5
    :goto_4
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1450
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "feature_apt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1451
    :cond_6
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1452
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_1d

    .line 1453
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1479
    :cond_7
    :goto_5
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1480
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    invoke-static {v5, v0}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1481
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1482
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1485
    :cond_8
    const-string v3, "feature_remind_me_later_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1486
    const/4 v3, 0x1

    move/from16 v0, p3

    if-le v0, v3, :cond_24

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getRemindTimeArray()[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindTimeArray:[I

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    aget v3, v3, v5

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    .line 1493
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    if-eqz v3, :cond_26

    .line 1495
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const v5, 0x7f0205c9

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1496
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1502
    :cond_9
    :goto_8
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v5, v8, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, v5}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v6

    .line 1505
    if-nez v6, :cond_27

    const/4 v3, 0x0

    .line 1506
    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 1510
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1538
    :cond_a
    :goto_a
    iget-object v5, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1539
    iget-object v0, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1540
    iget v0, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v19, v0

    .line 1541
    iget-object v0, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1542
    iget-wide v0, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v35, v0

    .line 1543
    iget-object v9, v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1544
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v12

    .line 1545
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1547
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_b

    .line 1548
    const-string v3, "CallLogAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detail.name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_b
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1550
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1551
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v7, -0x1

    const-string v18, ""

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v25}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    move-object v14, v6

    .line 1595
    :goto_b
    const-string v3, "feature_cnam"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1596
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v13, v27

    move/from16 v16, p3

    move-object/from16 v17, v34

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v20, v33

    move-object/from16 v21, v4

    invoke-virtual/range {v11 .. v21}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :goto_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1607
    const v3, 0x7f0900c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_c

    .line 1678
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1682
    :cond_c
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1683
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 1687
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1688
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v8, :cond_d

    .line 1689
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    :cond_d
    if-eqz v8, :cond_e

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1692
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1695
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v8, :cond_f

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1698
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v4, 0x7f0d0098

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1699
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1708
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    if-eqz v3, :cond_12

    .line 1709
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    if-eqz v3, :cond_11

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1711
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    if-gt v4, v5, :cond_10

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    if-ge v3, v4, :cond_11

    .line 1712
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    sput v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 1715
    :cond_11
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    .line 1719
    :cond_12
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    if-ne v3, v4, :cond_3c

    .line 1720
    const v3, 0x7f0900d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1722
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1723
    const v3, 0x7f0900d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1725
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1727
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    if-eqz v3, :cond_3b

    .line 1728
    const v3, 0x7f0900db

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1729
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    const v3, 0x7f0900dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1731
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1739
    :goto_e
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;

    .line 1751
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    if-eqz v3, :cond_3d

    .line 1752
    const v3, 0x7f0900d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1753
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    const v3, 0x7f0900dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1755
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    if-nez v3, :cond_13

    .line 1764
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v10, p0

    move/from16 v14, p3

    move-object v15, v8

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->getDetailUri(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    invoke-static/range {v9 .. v15}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1768
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForList(Landroid/view/View;)V

    .line 1778
    :goto_11
    return-void

    .line 1279
    :cond_14
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1280
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1770
    :catch_0
    move-exception v3

    .line 1771
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1773
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 1331
    :cond_15
    :try_start_1
    const-string v5, "feature_ged_location"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1332
    if-eqz v4, :cond_3e

    .line 1333
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_1

    .line 1357
    :cond_16
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->dataRefreshed:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_17

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->focusRequested:Z

    if-nez v3, :cond_17

    .line 1358
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->dataRefreshed:Z

    goto/16 :goto_3

    .line 1360
    :cond_17
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    .line 1365
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1366
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_3

    .line 1369
    :cond_18
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1370
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_3

    .line 1415
    :sswitch_0
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v3, :cond_19

    .line 1416
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move/from16 v0, v18

    invoke-static {v8, v0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1418
    :cond_19
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1422
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1423
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v3, :cond_1a

    .line 1424
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    move/from16 v0, v18

    invoke-static {v8, v0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProviderLGT(Ljava/lang/String;I)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1426
    :cond_1a
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1430
    :sswitch_2
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1431
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8, v12}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnVoicemailVZWIntentProvider(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1433
    :cond_1b
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1444
    :cond_1c
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_5

    .line 1445
    const-string v3, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secondaryActionView is invisible, number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1454
    :cond_1d
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_1f

    .line 1455
    const-string v3, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 1456
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1458
    :cond_1e
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const-string v5, "gsm.sim.icon2"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1461
    :cond_1f
    const-string v3, "ril.ICC_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_20

    const-string v3, "ril.ICC2_TYPE"

    const-string v5, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_20

    .line 1463
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1465
    :cond_20
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const-string v5, "gsm.sim.icon.dual"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSimCardIcon(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1468
    :cond_21
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_22

    .line 1469
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const v5, 0x7f020617

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1470
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1473
    :cond_22
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const v5, 0x7f020617

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1474
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1488
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1490
    :cond_24
    const/16 v3, 0x1f

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRemindMeLater:Z

    goto/16 :goto_7

    :cond_25
    const/4 v3, 0x0

    goto :goto_12

    .line 1498
    :cond_26
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1505
    :cond_27
    invoke-interface {v6}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    goto/16 :goto_9

    .line 1511
    :cond_28
    if-nez v6, :cond_29

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-virtual {v3, v5, v6}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1517
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v9, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    move-object v3, v9

    goto/16 :goto_a

    .line 1520
    :cond_29
    invoke-interface {v6}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1523
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v9, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 1532
    :cond_2a
    :goto_13
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v3, v5, :cond_a

    move-object v3, v9

    .line 1534
    goto/16 :goto_a

    .line 1524
    :cond_2b
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1529
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v9, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_13

    .line 1555
    :cond_2c
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v7, -0x1

    const/16 v22, 0x0

    move-object/from16 v21, v5

    invoke-direct/range {v6 .. v25}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    move-object v14, v6

    goto/16 :goto_b

    .line 1558
    :cond_2d
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v3, :cond_2f

    .line 1559
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1560
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    move/from16 v21, v0

    move/from16 v18, v30

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    invoke-direct/range {v7 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V

    move-object v14, v7

    goto/16 :goto_b

    .line 1564
    :cond_2e
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mIsVoLTEEnabled:Z

    move/from16 v26, v0

    move-object/from16 v21, v5

    move/from16 v23, v30

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    invoke-direct/range {v7 .. v26}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object v14, v7

    goto/16 :goto_b

    .line 1567
    :cond_2f
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1568
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1569
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v7, -0x1

    const-string v18, ""

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v26

    invoke-direct/range {v6 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    move-object v14, v6

    goto/16 :goto_b

    .line 1572
    :cond_30
    new-instance v6, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v7, -0x1

    const/16 v22, 0x0

    move-object/from16 v21, v5

    move/from16 v23, v26

    invoke-direct/range {v6 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    move-object v14, v6

    goto/16 :goto_b

    .line 1577
    :cond_31
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v5, :cond_32

    .line 1578
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v22, 0x0

    move-object/from16 v18, v8

    move-object/from16 v21, v5

    invoke-direct/range {v7 .. v22}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    move-object v14, v7

    goto/16 :goto_b

    .line 1580
    :cond_32
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1581
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct/range {v7 .. v17}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V

    move-object v14, v7

    goto/16 :goto_b

    .line 1585
    :cond_33
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v22, 0x0

    move-object/from16 v21, v5

    invoke-direct/range {v7 .. v22}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    move-object v14, v7

    goto/16 :goto_b

    .line 1597
    :cond_34
    const-string v3, "feature_cnap"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1598
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, v27

    move/from16 v16, p3

    move-object/from16 v17, v34

    invoke-virtual/range {v11 .. v21}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1600
    :cond_35
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    move-object/from16 v13, v27

    move/from16 v16, p3

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    goto/16 :goto_c

    .line 1609
    :cond_36
    if-nez v5, :cond_39

    .line 1610
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1611
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->randomThumbnail(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1613
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1614
    const-string v3, "com.sec.feature.folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1615
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1616
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1617
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;

    move-object/from16 v7, p0

    move-object/from16 v11, v34

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    .line 1662
    :cond_38
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 1665
    :cond_39
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1666
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    const-string v3, "com.sec.feature.folder_type"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1668
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1669
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1672
    :cond_3a
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v9, p0

    move-object/from16 v10, v27

    move-wide/from16 v11, v35

    move-object v13, v5

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_d

    .line 1733
    :cond_3b
    const v3, 0x7f0900db

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1734
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1735
    const v3, 0x7f0900dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1736
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 1741
    :cond_3c
    const v3, 0x7f0900d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1743
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1744
    const v3, 0x7f0900d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1746
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1747
    const v3, 0x7f0900db

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1748
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 1757
    :cond_3d
    const v3, 0x7f0900d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1758
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1759
    const v3, 0x7f0900dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1760
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10

    :cond_3e
    move-object v11, v3

    goto/16 :goto_1

    :cond_3f
    move-object v4, v3

    goto/16 :goto_2

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2
    .parameter "callLogInfo"
    .parameter "info"

    .prologue
    .line 1794
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1214
    const-string v1, "CallLogAdapter"

    const-string v2, "========= findAndCacheViews ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    .line 1217
    .local v0, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1230
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1231
    return-void

    .line 1228
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1956
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1957
    const-string p1, ""

    .line 1969
    :cond_0
    :goto_0
    return-object p1

    .line 1960
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1963
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1964
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 1966
    :cond_2
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .parameter "cursor"
    .parameter "count"

    .prologue
    .line 1903
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1904
    .local v2, position:I
    new-array v0, p2, [I

    .line 1905
    .local v0, callTypes:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1906
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1907
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1905
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1909
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1910
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 1877
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1878
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1879
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 1880
    const-string v0, "CallLogAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactInfoFromCallLog. name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 1882
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 1883
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 1884
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1885
    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1886
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 1887
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 1888
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 1890
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1891
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1892
    return-object v1
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 10
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"

    .prologue
    const/4 v4, 0x0

    .line 982
    sget v7, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eqz v7, :cond_1

    sget v7, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 983
    const-string v7, "CallLogAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ContactsDB_Status is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    :goto_0
    return v4

    .line 990
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 992
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 993
    .local v3, sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v7, :cond_2

    .line 994
    const-string v7, "CallLogAdapter"

    const-string v8, "queryContactInfo, queryContactInfoForSipAddress"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_2
    if-eqz v3, :cond_3

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v3, v7, :cond_4

    .line 997
    :cond_3
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 998
    .local v6, username:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 999
    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 1002
    .end local v6           #username:Ljava/lang/String;
    :cond_4
    move-object v1, v3

    .line 1008
    .end local v3           #sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .local v1, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_1
    if-eqz v1, :cond_0

    .line 1012
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v1, v7, :cond_7

    .line 1014
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v5}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1015
    .local v5, updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iput-object p1, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1016
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1024
    :goto_2
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .local v2, numberCountryIso:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1026
    .local v0, existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v0, v7, :cond_5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x1

    .line 1030
    .local v4, updated:Z
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2, v5}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_0

    .line 1004
    .end local v0           #existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v1           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v2           #numberCountryIso:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    .end local v4           #updated:Z
    .end local v5           #updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1

    .line 1018
    :cond_7
    move-object v5, v1

    .restart local v5       #updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 18
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 897
    const/16 v17, 0x0

    .line 900
    .local v17, phonesCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v14

    .line 903
    .local v14, mMatchLen:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 905
    .local v15, nLen:I
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_0

    .line 906
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryContactInfoForPhoneNumber] mMatchLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   nLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    const/4 v13, 0x0

    .line 910
    .local v13, mIsSpecialNum:Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v13

    .line 911
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_1

    .line 912
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber: mIsSpecialNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_1
    if-le v15, v14, :cond_4

    if-nez v13, :cond_4

    .line 916
    const-string v3, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 917
    .local v16, phoneLookup:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 940
    .end local v13           #mIsSpecialNum:Z
    .end local v14           #mMatchLen:I
    .end local v15           #nLen:I
    .end local v16           #phoneLookup:Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_7

    .line 941
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 942
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v11}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 943
    .local v11, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 944
    .local v9, contactId:J
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 945
    const/4 v3, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 946
    .local v12, lookupKey:Ljava/lang/String;
    invoke-static {v9, v10, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 947
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 948
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 949
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 950
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 951
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 952
    const/4 v3, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 953
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_2

    .line 954
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    .end local v9           #contactId:J
    .end local v12           #lookupKey:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 964
    :goto_2
    if-eqz v11, :cond_3

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v11, v3, :cond_3

    .line 965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 967
    :cond_3
    return-object v11

    .line 924
    .end local v11           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v13       #mIsSpecialNum:Z
    .restart local v14       #mMatchLen:I
    .restart local v15       #nLen:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 933
    .end local v13           #mIsSpecialNum:Z
    .end local v14           #mMatchLen:I
    .end local v15           #nLen:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 956
    :cond_6
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v11       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1

    .line 961
    .end local v11           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_7
    const/4 v11, 0x0

    .restart local v11       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13
    .parameter "sipAddress"

    .prologue
    const/4 v2, 0x0

    .line 814
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 825
    .local v1, contactRef:Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 828
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 830
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 838
    .local v8, dataTableCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 839
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 850
    .local v9, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 852
    .local v6, contactId:J
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 854
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 856
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 857
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 860
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 861
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 865
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 866
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 867
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 869
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 870
    const-string v0, "CallLogAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForSipAddress name : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 879
    :goto_1
    return-object v9

    .line 872
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 877
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_2
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "views"
    .parameter "photoId"
    .parameter "contactUri"
    .parameter "randomSeed"

    .prologue
    .line 1914
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x1

    move-wide v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    .line 1918
    return-void
.end method

.method private setSimCardIcon(I)I
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f020629

    .line 2073
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2074
    packed-switch p1, :pswitch_data_0

    .line 2109
    :goto_0
    :pswitch_0
    return v0

    .line 2079
    :pswitch_1
    const v0, 0x7f02062a

    .line 2080
    goto :goto_0

    .line 2082
    :pswitch_2
    const-string v0, "hennessy3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    const v0, 0x7f020632

    goto :goto_0

    .line 2085
    :cond_0
    const v0, 0x7f02063a

    .line 2086
    goto :goto_0

    .line 2088
    :pswitch_3
    const v0, 0x7f020646

    .line 2089
    goto :goto_0

    .line 2091
    :pswitch_4
    const v0, 0x7f020631

    .line 2092
    goto :goto_0

    .line 2094
    :pswitch_5
    const v0, 0x7f02064b

    .line 2095
    goto :goto_0

    .line 2097
    :pswitch_6
    const v0, 0x7f020615

    .line 2098
    goto :goto_0

    .line 2100
    :pswitch_7
    const v0, 0x7f020617

    .line 2101
    goto :goto_0

    .line 2103
    :pswitch_8
    const v0, 0x7f020625

    .line 2104
    goto :goto_0

    .line 2074
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 722
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 723
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1802
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1805
    if-eqz p4, :cond_7

    .line 1806
    iget-object v0, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1807
    const-string v0, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1811
    :goto_0
    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v4, v5, :cond_0

    .line 1812
    const-string v0, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1816
    :cond_0
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1817
    const-string v0, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1820
    :cond_1
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1821
    const-string v0, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1830
    :cond_2
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1831
    const-string v0, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1834
    :cond_3
    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v6, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1835
    const-string v0, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v1

    .line 1838
    :cond_4
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1839
    const-string v0, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1842
    :cond_5
    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    iget v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    if-eq v4, v5, :cond_6

    .line 1843
    const-string v0, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1860
    :cond_6
    :goto_1
    if-nez v0, :cond_8

    .line 1873
    :goto_2
    return-void

    .line 1848
    :cond_7
    const-string v0, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v0, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1850
    const-string v0, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v0, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v0, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v0, "normalized_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v0, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1855
    const-string v0, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string v0, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1857
    goto :goto_1

    .line 1864
    :cond_8
    if-nez p2, :cond_9

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso IS NULL"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1869
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    aput-object p2, v6, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1939
    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 1941
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1096
    const-string v0, "CallLogAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 1098
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1171
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1173
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1209
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1211
    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1134
    const-string v0, "CallLogAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 1136
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 1929
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"
    .parameter "immediate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 786
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    .line 787
    .local v0, request:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 792
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 794
    :cond_1
    return-void

    .line 792
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1983
    .line 1985
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1987
    if-eqz v0, :cond_2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v0, v1, :cond_2

    .line 1988
    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 2041
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    move-object p1, v0

    .line 2046
    :cond_1
    return-object p1

    .line 1994
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1996
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v1

    .line 1997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1999
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v2, :cond_3

    .line 2000
    const-string v2, "CallLogAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBetterNumberFromContacts] mMatchLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   nLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v2

    .line 2005
    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v3, :cond_4

    .line 2006
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBetterNumberFromContacts: mIsSpecialNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_4
    if-le v0, v1, :cond_5

    if-nez v2, :cond_5

    .line 2010
    const-string v0, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2011
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 2031
    :goto_2
    if-eqz v1, :cond_8

    .line 2032
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2033
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2035
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2037
    :catch_0
    move-exception v1

    move-object v6, v0

    :goto_4
    move-object v0, v6

    goto/16 :goto_0

    .line 2018
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2026
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 2037
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v0, v6

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getEnableTouchScreenHeight()D
    .locals 6

    .prologue
    .line 580
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 581
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 582
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getSelectedPos()I
    .locals 1

    .prologue
    .line 2060
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    return v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 2
    .parameter "number"
    .parameter "countryIso"
    .parameter "contactInfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1933
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    .local v0, numberCountryIso:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1935
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 730
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 731
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1141
    const-string v2, "CallLogAdapter"

    const-string v3, "========= newChildView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1146
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 1147
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    const v2, 0x7f04001f

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1164
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1165
    return-object v1

    .line 1151
    :cond_0
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    const v2, 0x7f04001d

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1154
    :cond_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    const v2, 0x7f04001c

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1156
    :cond_2
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_3

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1157
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1159
    :cond_3
    const v2, 0x7f04001b

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1178
    const-string v2, "CallLogAdapter"

    const-string v3, "========= newGroupView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1183
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 1184
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1185
    const v2, 0x7f04001f

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1201
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1202
    return-object v1

    .line 1188
    :cond_0
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1189
    const v2, 0x7f04001d

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1191
    :cond_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    const v2, 0x7f04001c

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1193
    :cond_2
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_3

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1194
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1196
    :cond_3
    const v2, 0x7f04001b

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1103
    const-string v2, "CallLogAdapter"

    const-string v3, "========= newStandAloneView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1108
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 1109
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    const v2, 0x7f04001f

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1127
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 1128
    return-object v1

    .line 1113
    :cond_0
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    const v2, 0x7f04001d

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1116
    :cond_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    const v2, 0x7f04001c

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1118
    :cond_2
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_3

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1119
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1121
    :cond_3
    const v2, 0x7f04001b

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 661
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 662
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->checkScroll:Z

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->resetAfterDelete()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;->fetchLogs()V

    .line 668
    const-string v0, "CallLogAdapter"

    const-string v1, "onContentChanged is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 596
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetDetailUpdate()V
    .locals 2

    .prologue
    .line 2054
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    .line 2055
    const-string v0, "CallLogAdapter"

    const-string v1, "resetDetailUpdate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z

    .line 2057
    return-void
.end method

.method public resetSelectedPos()V
    .locals 1

    .prologue
    .line 2050
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 2051
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mLoading:Z

    .line 673
    return-void
.end method

.method protected setScrollState(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setScrollState(I)V

    .line 2212
    return-void
.end method

.method public setSelectedPos(I)V
    .locals 0
    .parameter "newPos"

    .prologue
    .line 2064
    sput p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I

    .line 2065
    return-void
.end method

.method public setSplitBarEnabled(Z)V
    .locals 0
    .parameter "isSplitBarEnabled"

    .prologue
    .line 2068
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z

    .line 2069
    return-void
.end method

.method public declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 690
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    :cond_0
    monitor-exit p0

    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "city_id"

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 735
    const/4 v4, 0x1

    .line 736
    .local v4, orientation:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 737
    .local v2, configuration:Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 738
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 741
    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 744
    .local v3, len_city:I
    const/16 v0, 0x11

    .line 746
    .local v0, MAX_LEN:I
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 747
    const/16 v0, 0xf

    .line 753
    :cond_1
    :goto_0
    if-lt v3, v0, :cond_2

    .line 755
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 757
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, city_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 759
    .local v5, state_abbr:Ljava/lang/String;
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 770
    .end local v0           #MAX_LEN:I
    .end local v1           #city_name:Ljava/lang/String;
    .end local v3           #len_city:I
    .end local v5           #state_abbr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 749
    .restart local v0       #MAX_LEN:I
    .restart local v3       #len_city:I
    :cond_3
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 750
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 762
    .restart local v1       #city_name:Ljava/lang/String;
    .restart local v5       #state_abbr:Ljava/lang/String;
    :cond_4
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 765
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xc

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

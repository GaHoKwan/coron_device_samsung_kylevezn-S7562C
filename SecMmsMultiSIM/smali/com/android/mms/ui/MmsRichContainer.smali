.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# static fields
.field public static final MENU_REMOVE_MEDIA:I = 0x16

.field public static final MENU_REPLACE_MEDIA:I = 0x15

.field public static final MENU_VIEW_MEDIA:I = 0x14

.field public static final MSG_DPAD_DOWN:I = 0x33

.field public static final MSG_DPAD_LEFT:I = 0x35

.field public static final MSG_DPAD_RIGHT:I = 0x34

.field public static final MSG_DPAD_UP:I = 0x32

.field public static final MSG_FOCUS_CHANGED:I = 0x28

.field public static final MSG_REMOVE_CURRENT_SLIDE:I = 0x5

.field public static final MSG_REMOVE_MEDIA:I = 0x3

.field public static final MSG_REMOVE_PREVIOUS_SLIDE:I = 0x4

.field public static final MSG_REPLACE_MEDIA:I = 0x2

.field public static final MSG_TYPE_AUDIO:I = 0xc

.field public static final MSG_TYPE_IMAGE:I = 0xa

.field public static final MSG_TYPE_LOCATION:I = 0xe

.field public static final MSG_TYPE_TEXT:I = 0xd

.field public static final MSG_TYPE_VIDEO:I = 0xb

.field public static final MSG_VIEW_MEDIA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MmsRichContainer"

.field public static final UPDATE_CHANGE_MMS_TO_SMS:I = 0x20

.field public static final UPDATE_DEFAULT:I = 0x1e

.field public static final UPDATE_DEFAULT_WITHOUT_ANIMATION:I = 0x21

.field public static final UPDATE_REMOVE_CURRENT_SLIDE:I = 0x23

.field public static final UPDATE_REMOVE_IMAGE_VIDEO:I = 0x1f

.field public static final UPDATE_REMOVE_PREVIOUS_SLIDE:I = 0x22


# instance fields
.field private isNeedToBlockTheKey:Z

.field private mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mTextColor:I

.field private mTextSize:F

.field mTextTop:Ljava/lang/Boolean;

.field private mTopEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 100
    iput-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 104
    iput-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 107
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 224
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 1333
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 1347
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1389
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1418
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1438
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTopEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1449
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 100
    iput-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 104
    iput-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 107
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 224
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 1333
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 1347
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1389
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1418
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1438
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTopEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1449
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/MmsRichContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 467
    const v1, 0x7f0e019e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 468
    .local v0, audioView:Landroid/widget/LinearLayout;
    return-object v0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 459
    const v1, 0x7f0e0192

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 487
    const v1, 0x7f0e01a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 488
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    const/4 v0, 0x0

    .line 472
    if-nez p1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-object v0

    .line 476
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const v1, 0x7f0e0196

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 480
    .local v0, locationView:Landroid/widget/RelativeLayout;
    goto :goto_0
.end method

.method private getSignatureText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1464
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1465
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_signature_text"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, signature:Ljava/lang/String;
    return-object v1
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7
    .parameter "index"
    .parameter "addWatcher"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1567
    const/4 v1, 0x0

    .line 1572
    .local v1, mView:Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1574
    const v4, 0x7f0e0191

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1575
    .local v2, topEditText:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTopEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1577
    const v4, 0x7f0e019d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1579
    .local v0, bottomEditText:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1580
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1583
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1584
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1589
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1590
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    move-object v3, v2

    .line 1599
    .local v3, visibleEditText:Landroid/widget/EditText;
    :goto_1
    if-eqz p2, :cond_1

    .line 1600
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1604
    :cond_1
    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1607
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1609
    return-object v3

    .line 1585
    .end local v3           #visibleEditText:Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1586
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 1594
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    move-object v3, v0

    .restart local v3       #visibleEditText:Landroid/widget/EditText;
    goto :goto_1
.end method

.method private hasOnlySignatureText(Ljava/lang/String;)Z
    .locals 4
    .parameter "text"

    .prologue
    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1476
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, signatureText:Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1482
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1484
    const/4 v2, 0x1

    .line 1488
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSignatureEnabled()Z
    .locals 2

    .prologue
    .line 1470
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1471
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 10
    .parameter "page"
    .parameter "checkFirstText"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1510
    const/4 v1, 0x0

    .line 1513
    .local v1, edit:Landroid/widget/EditText;
    const v9, 0x7f0e0192

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 1515
    .local v3, mediaVisibility:I
    if-nez v3, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return v7

    .line 1519
    :cond_1
    const v9, 0x7f0e019e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1521
    .local v0, audioVisibility:I
    if-eqz v0, :cond_0

    .line 1524
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1525
    const v9, 0x7f0e0196

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1526
    .local v2, locationVisibility:I
    if-eqz v2, :cond_0

    .line 1530
    .end local v2           #locationVisibility:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1533
    if-eqz p2, :cond_3

    .line 1534
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v6

    .line 1535
    .local v6, textLength:I
    if-lez v6, :cond_3

    .line 1536
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1538
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1539
    .local v5, text:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    .line 1540
    .local v4, signature:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasOnlySignatureText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 1541
    goto :goto_0

    .end local v4           #signature:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLength:I
    :cond_3
    move v7, v8

    .line 1550
    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 1286
    const/4 v7, 0x0

    .line 1287
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1290
    .local v6, pageNumber:I
    move v2, v6

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 1291
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1290
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1294
    :cond_0
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1296
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 1297
    .local v4, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1298
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    .line 1299
    .local v5, pageDivider:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 1301
    .local v1, editText:Landroid/widget/EditText;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1302
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1304
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1307
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1308
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1312
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 1313
    .local v3, locationViewPort:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 1314
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    .end local v3           #locationViewPort:Landroid/widget/RelativeLayout;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 1319
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 1323
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    const/high16 v8, 0x3f80

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1328
    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1330
    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 6
    .parameter "slide"
    .parameter "index"

    .prologue
    const/16 v5, 0x8

    .line 1247
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1248
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 1249
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v3, :cond_0

    .line 1279
    .end local v3           #mediaViewPort:Landroid/widget/RelativeLayout;
    :goto_0
    return-void

    .line 1252
    .restart local v3       #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1254
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    .end local v3           #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1258
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1259
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1263
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1264
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 1265
    .local v2, locationViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 1266
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    .end local v2           #locationViewPort:Landroid/widget/RelativeLayout;
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1274
    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1275
    .local v1, editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 1278
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setAddAnimation()V
    .locals 5

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1618
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1619
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1620
    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createAddEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1621
    .local v0, addAnimation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1624
    .end local v0           #addAnimation:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 5
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1628
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1629
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1630
    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createDeleteEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1632
    .local v0, deleteAnimation:Landroid/view/animation/AnimationSet;
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$8;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1645
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1648
    .end local v0           #deleteAnimation:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 2
    .parameter "childAt"
    .parameter "weight"

    .prologue
    .line 1220
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1221
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1223
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1224
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f03005c

    invoke-virtual {v0, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    .line 154
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v5

    .line 155
    .local v5, sim_1_active:Z
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v6

    .line 157
    .local v6, sim_2_active:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v8

    if-le v8, v9, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 158
    const v8, 0x7f03005d

    invoke-virtual {v0, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    .line 163
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 164
    .local v2, mEditField:Landroid/widget/EditText;
    const/4 v8, 0x3

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v7

    .line 165
    .local v7, size:F
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v7}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextSize(Landroid/view/View;F)V

    .line 167
    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v9, 0xd

    invoke-direct {v8, p0, v9, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 170
    const/high16 v8, 0x200

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 171
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v8, :cond_1

    .line 177
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 179
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    const v9, 0x7f0e0193

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    .local v3, mMediaView:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    const v9, 0x7f0e019e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 183
    .local v1, mAudioInfo:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 186
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 189
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 213
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 215
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1147
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 1148
    .local v2, mEditField:Landroid/widget/EditText;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1150
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 1152
    .local v5, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 1153
    .local v0, focusedSlideIndex:I
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1154
    .local v4, slideCount:I
    const/4 v3, 0x0

    .line 1156
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 1157
    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1158
    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1163
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1164
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1156
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1173
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1174
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1175
    move v6, v1

    .line 1176
    .local v6, t:I
    if-lt v1, v10, :cond_2

    add-int/lit8 v6, v1, -0x1

    .line 1177
    :cond_2
    invoke-direct {p0, v6, v9}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v7

    .line 1186
    .end local v6           #t:I
    .local v7, visibleEditText:Landroid/widget/EditText;
    :goto_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 1187
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1188
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_1

    .line 1180
    .end local v7           #visibleEditText:Landroid/widget/EditText;
    :cond_3
    invoke-direct {p0, v1, v9}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v7

    .restart local v7       #visibleEditText:Landroid/widget/EditText;
    goto :goto_2

    .line 1184
    .end local v7           #visibleEditText:Landroid/widget/EditText;
    :cond_4
    invoke-direct {p0, v1, v9}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v7

    .restart local v7       #visibleEditText:Landroid/widget/EditText;
    goto :goto_2

    .line 1193
    .end local v7           #visibleEditText:Landroid/widget/EditText;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1194
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v8

    if-ne v8, v10, :cond_6

    .line 1195
    add-int/lit8 v8, v4, -0x2

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v11}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1202
    :cond_6
    :goto_3
    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1204
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1205
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 1215
    .end local v0           #focusedSlideIndex:I
    .end local v1           #i:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #slideCount:I
    .end local v5           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v8, :cond_8

    .line 1216
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1217
    :cond_8
    return-void

    .line 1199
    .restart local v0       #focusedSlideIndex:I
    .restart local v1       #i:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #slideCount:I
    .restart local v5       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_9
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v11}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_3

    .line 1208
    :cond_a
    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v8, :cond_b

    .line 1209
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1211
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_4
.end method

.method public changeTextColor(I)V
    .locals 8
    .parameter "textColor"

    .prologue
    .line 1655
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1656
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1663
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1664
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1666
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0e0191

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1667
    .local v5, topEditText:Landroid/widget/EditText;
    const v7, 0x7f0e019d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1668
    .local v1, bottomEditText:Landroid/widget/EditText;
    const v7, 0x7f0e019e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1669
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    .line 1670
    const v7, 0x7f0e01a0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1674
    .local v3, fileName:Landroid/widget/TextView;
    :goto_1
    if-eqz v5, :cond_0

    .line 1675
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1677
    :cond_0
    if-eqz v1, :cond_1

    .line 1678
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1680
    :cond_1
    if-eqz v3, :cond_2

    .line 1681
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1663
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1672
    .end local v3           #fileName:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #fileName:Landroid/widget/TextView;
    goto :goto_1

    .line 1683
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    .end local v1           #bottomEditText:Landroid/widget/EditText;
    .end local v3           #fileName:Landroid/widget/TextView;
    .end local v5           #topEditText:Landroid/widget/EditText;
    .end local v6           #view:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public changeTextSize(F)V
    .locals 3
    .parameter "textSize"

    .prologue
    .line 1686
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextSize:F

    .line 1688
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1691
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1692
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextSize(Landroid/view/View;F)V

    .line 1691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1694
    :cond_0
    return-void
.end method

.method public clearFocusEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 329
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 3
    .parameter "mView"

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const-string v1, "Mms/MmsRichContainer"

    const-string v2, "mView is null. just return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    const v1, 0x7f0e0191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 445
    .local v0, mEdit:Landroid/widget/EditText;
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 441
    .end local v0           #mEdit:Landroid/widget/EditText;
    :cond_1
    const v1, 0x7f0e019d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #mEdit:Landroid/widget/EditText;
    goto :goto_1
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 422
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, mFocusedChild:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 429
    .local v0, mEdit:Landroid/widget/EditText;
    return-object v0

    .line 424
    .end local v0           #mEdit:Landroid/widget/EditText;
    .end local v1           #mFocusedChild:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .restart local v1       #mFocusedChild:Landroid/view/View;
    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 493
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 494
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    .line 496
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 497
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    .end local v1           #i:I
    :goto_1
    return v1

    .line 496
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMMSLayout()Z
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 247
    .local v0, mString:Landroid/text/Editable;
    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    .prologue
    .line 1242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1243
    .local v0, totalPage:I
    return v0
.end method

.method public hasContents(Z)Z
    .locals 6
    .parameter "checkFirstText"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1494
    .local v0, cnt:I
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, signature:Ljava/lang/String;
    if-le v0, v3, :cond_2

    .line 1497
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 1499
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1502
    goto :goto_0

    .line 1506
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 136
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteEditBG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 141
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    .line 142
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 123
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, newIndex:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    add-int/lit8 v0, p1, -0x1

    .line 197
    if-gez v0, :cond_0

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 218
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 222
    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4
    .parameter "audioFileName"
    .parameter "index"

    .prologue
    const/16 v3, 0xc

    .line 928
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 929
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    const v2, 0x7f0e01a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 930
    .local v1, fileName:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 936
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 938
    return-void
.end method

.method public setClipExMgr(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0
    .parameter "cipExMgr"

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 1716
    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 210
    return-void
.end method

.method public setEditTextSize(Landroid/view/View;F)V
    .locals 4
    .parameter "view"
    .parameter "size"

    .prologue
    const/4 v3, 0x1

    .line 1699
    if-nez p1, :cond_0

    .line 1700
    const-string v2, "Mms/MmsRichContainer"

    const-string v3, "view is null. just return"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :goto_0
    return-void

    .line 1703
    :cond_0
    const v2, 0x7f0e0191

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1704
    .local v1, topEdit:Landroid/widget/EditText;
    invoke-virtual {v1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1706
    const v2, 0x7f0e019d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1707
    .local v0, bottomEdit:Landroid/widget/EditText;
    invoke-virtual {v0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setFocusEditText()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 357
    return-void
.end method

.method public setFocusEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 314
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public setFocusEditText(IZ)V
    .locals 7
    .parameter "index"
    .parameter "setLastPos"

    .prologue
    const/4 v6, 0x0

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 259
    .local v0, editText:Landroid/widget/EditText;
    if-nez v0, :cond_2

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    if-eqz v3, :cond_3

    .line 263
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 270
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 271
    if-eqz p2, :cond_8

    .line 273
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 274
    .local v1, editTextLength:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->isSignatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSignatureAdded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 278
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 279
    .local v2, signatureTextLength:I
    if-lez v2, :cond_6

    .line 281
    sub-int v3, v1, v2

    if-gtz v3, :cond_5

    .line 283
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 266
    .end local v1           #editTextLength:I
    .end local v2           #signatureTextLength:I
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_1

    .line 285
    .restart local v1       #editTextLength:I
    .restart local v2       #signatureTextLength:I
    :cond_5
    sub-int v3, v1, v2

    if-lez v3, :cond_1

    .line 287
    sub-int v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 290
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 295
    .end local v2           #signatureTextLength:I
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 298
    .end local v1           #editTextLength:I
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    .line 206
    return-void
.end method

.method public setHint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 369
    .local v0, fontSize:I
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, mFocusedChild:Landroid/view/View;
    if-nez v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 376
    .local v1, mEdit:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 378
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 383
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_1
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 392
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 398
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0
.end method

.method public setHintRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 360
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    .line 361
    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "img"
    .parameter "index"

    .prologue
    const/16 v8, 0xa

    .line 860
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 862
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v3, :cond_0

    .line 889
    :goto_0
    return-void

    .line 865
    :cond_0
    const v5, 0x7f0e0193

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 866
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 867
    const v5, 0x7f0e0194

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 868
    .local v4, playButton:Landroid/widget/ImageView;
    const v5, 0x7f0e0195

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, dummyView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 872
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020272

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 879
    :cond_1
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 880
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 881
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 882
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    :cond_2
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 886
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 888
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 875
    :catch_0
    move-exception v1

    .line 876
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "Mms/MmsRichContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "mView"

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 405
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 406
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 408
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 409
    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 410
    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 415
    :cond_0
    return-void

    .line 405
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "phone"
    .parameter "index"

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 947
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 948
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 949
    .local v0, locationInfo:Landroid/widget/RelativeLayout;
    const v6, 0x7f0e0197

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 950
    .local v1, mImage:Landroid/widget/ImageView;
    const v6, 0x7f0e0198

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 951
    .local v3, mLocationName:Landroid/widget/TextView;
    const v6, 0x7f0e0199

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 952
    .local v2, mLocationAddress:Landroid/widget/TextView;
    const v6, 0x7f0e019a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 953
    .local v5, mPhoneView:Landroid/view/View;
    const v6, 0x7f0e019c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 954
    .local v4, mPhone:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 956
    const v6, 0x7f0200f6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 961
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 962
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    :goto_0
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 970
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 972
    .end local v0           #locationInfo:Landroid/widget/RelativeLayout;
    .end local v1           #mImage:Landroid/widget/ImageView;
    .end local v2           #mLocationAddress:Landroid/widget/TextView;
    .end local v3           #mLocationName:Landroid/widget/TextView;
    .end local v4           #mPhone:Landroid/widget/TextView;
    .end local v5           #mPhoneView:Landroid/view/View;
    :cond_0
    return-void

    .line 966
    .restart local v0       #locationInfo:Landroid/widget/RelativeLayout;
    .restart local v1       #mImage:Landroid/widget/ImageView;
    .restart local v2       #mLocationAddress:Landroid/widget/TextView;
    .restart local v3       #mLocationName:Landroid/widget/TextView;
    .restart local v4       #mPhone:Landroid/widget/TextView;
    .restart local v5       #mPhoneView:Landroid/view/View;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2
    .parameter "textTop"

    .prologue
    .line 1558
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 1560
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 1614
    return-void
.end method

.method public setPageDivider(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 1228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1229
    .local v2, total:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1230
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    const v3, 0x7f0e01a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1231
    .local v1, pageInfo:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1234
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    .line 1235
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    :goto_0
    return-void

    .line 1237
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPasteEvent(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;)V
    .locals 0
    .parameter "pasteEvent"

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    .line 1712
    return-void
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .parameter "editorActionListener"

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1555
    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .parameter "editText"
    .parameter "text"
    .parameter "index"

    .prologue
    .line 941
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 944
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 1651
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1652
    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 11
    .parameter "videoUri"
    .parameter "index"

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    .line 892
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 894
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v3, :cond_0

    .line 924
    :goto_0
    return-void

    .line 897
    :cond_0
    const v6, 0x7f0e0193

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 898
    .local v5, videoView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 899
    const v6, 0x7f0e0194

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 900
    .local v4, playButton:Landroid/widget/ImageView;
    const v6, 0x7f0e0195

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 902
    .local v1, dummyView:Landroid/view/View;
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 905
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 906
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020273

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 913
    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 914
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 915
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 916
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02022b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    :cond_2
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 921
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 923
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 909
    :catch_0
    move-exception v2

    .line 910
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 19
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 976
    const-string v2, "Mms/MmsRichContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(),type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    if-eqz p1, :cond_4

    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v16

    .line 983
    .local v16, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v13

    .line 984
    .local v13, mTempIndex:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 985
    .local v15, slideCount:I
    const/4 v14, 0x0

    .line 987
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v2, v15, :cond_0

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    .line 991
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v15, :cond_1

    .line 992
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 994
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v15, :cond_2

    .line 996
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 998
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v11, v2, :cond_5

    .line 999
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 1054
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1055
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1056
    add-int/lit8 v2, v15, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1064
    :goto_4
    packed-switch p2, :pswitch_data_0

    .line 1091
    :goto_5
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1092
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 1102
    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1103
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1104
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 1106
    :cond_3
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    .line 1144
    .end local v11           #i:I
    .end local v13           #mTempIndex:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #slideCount:I
    .end local v16           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_4
    :goto_7
    return-void

    .line 1002
    .restart local v11       #i:I
    .restart local v13       #mTempIndex:I
    .restart local v14       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v15       #slideCount:I
    .restart local v16       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 1006
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1007
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1008
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1009
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v11, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MmsRichContainer;->setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1018
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 994
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1024
    :cond_7
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1025
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    .line 1027
    :cond_8
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1028
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    .line 1030
    :cond_9
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1031
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    .line 1034
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v12

    .line 1036
    .local v12, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1037
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v18

    .line 1038
    .local v18, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    .line 1039
    .local v17, string:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1040
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v11}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1048
    .end local v17           #string:Ljava/lang/String;
    .end local v18           #text:Lcom/android/mms/model/TextModel;
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    .line 1050
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    goto :goto_8

    .line 1042
    .restart local v17       #string:Ljava/lang/String;
    .restart local v18       #text:Lcom/android/mms/model/TextModel;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    .line 1045
    .end local v17           #string:Ljava/lang/String;
    .end local v18           #text:Lcom/android/mms/model/TextModel;
    :cond_c
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    .line 1058
    .end local v12           #mTempEdit:Landroid/widget/EditText;
    :cond_d
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1061
    :cond_e
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1067
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1071
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1072
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1074
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1079
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 1080
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    goto/16 :goto_5

    .line 1084
    :pswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto/16 :goto_5

    .line 1095
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v2, :cond_11

    .line 1096
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1098
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_6

    .line 1109
    .end local v11           #i:I
    .end local v13           #mTempIndex:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #slideCount:I
    .end local v16           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_12
    const/16 v2, 0x23

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    .line 1111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 1112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1113
    .local v10, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    .line 1114
    .local v8, firstEditText:Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1116
    .local v9, firstText:Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1119
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    .line 1122
    .end local v8           #firstEditText:Landroid/widget/EditText;
    .end local v9           #firstText:Ljava/lang/String;
    .end local v10           #firstView:Landroid/view/View;
    :cond_13
    const/16 v2, 0x20

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 1123
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    .line 1126
    :cond_14
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-eq v0, v2, :cond_15

    const/16 v2, 0x21

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1129
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 1130
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1131
    .restart local v10       #firstView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    .line 1132
    .restart local v8       #firstEditText:Landroid/widget/EditText;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1133
    .local v18, text:Ljava/lang/CharSequence;
    if-eqz v18, :cond_16

    .line 1134
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1135
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    :cond_16
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_7

    .line 1137
    :cond_17
    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_a

    .line 1064
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

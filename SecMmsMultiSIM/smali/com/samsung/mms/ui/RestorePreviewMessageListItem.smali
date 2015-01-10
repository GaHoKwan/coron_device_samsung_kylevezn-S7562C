.class public Lcom/samsung/mms/ui/RestorePreviewMessageListItem;
.super Landroid/widget/LinearLayout;
.source "RestorePreviewMessageListItem.java"


# static fields
.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2f

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_LIST_ACTION_VIEW:I = 0x4

.field public static final MSG_LIST_ADD_TO_BOOKMARK:I = 0x5

.field public static final MSG_LIST_ADD_TO_CONTACT:I = 0x9

.field public static final MSG_LIST_CALL:I = 0xb

.field public static final MSG_LIST_COPY_MESSAGE_TEXT:I = 0x8

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field public static final MSG_LIST_OPEN_BROWSER:I = 0x3

.field public static final MSG_LIST_SEND_MESSAGE:I = 0x7

.field public static final MSG_LIST_URL_ADD_TO_CONTACT:I = 0x6

.field public static final MSG_LIST_VIEW_CONTACT:I = 0xa

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/RestorePreviewMessageListItem"

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;

.field public static final mInboxBGStyle:[I

.field private static final mReceivedBubbleStyle:[I

.field private static final mReservedBubbleStyle:[I

.field public static final mReservedboxBGStyle:[I

.field private static final mSentBubbleStyle:[I

.field public static final mSentFailBGStyle:[I

.field private static final mSentFailBubbleStyle:[I

.field public static final mSentboxBGStyle:[I


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioInfoView:Landroid/widget/TextView;

.field private mBottomBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mIsSearchMsgItem:Z

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mLinkedContextMenu:Landroid/app/AlertDialog;

.field private mLocationTextView:Landroid/widget/TextView;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field protected mMmsAttachmentInfoView:Landroid/widget/TextView;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOldFontSize:F

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;

.field private mScheduledIcon:Landroid/widget/Button;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTopBodyTextView:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReservedboxBGStyle:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    .line 116
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReceivedBubbleStyle:[I

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentBubbleStyle:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mReservedBubbleStyle:[I

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBubbleStyle:[I

    .line 864
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->LONGPRESS_TIMEOUT:I

    .line 865
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->TAP_TIMEOUT:I

    return-void

    .line 89
    :array_0
    .array-data 0x4
        0x12t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_2
    .array-data 0x4
        0x8t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 116
    :array_3
    .array-data 0x4
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
    .end array-data

    .line 125
    :array_4
    .array-data 0x4
        0x98t 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
    .end array-data

    .line 134
    :array_5
    .array-data 0x4
        0xa8t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 143
    :array_6
    .array-data 0x4
        0x88t 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
    .end array-data

    .line 152
    :array_7
    .array-data 0x4
        0x88t 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 240
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 212
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    .line 213
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    .line 217
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 219
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 220
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 226
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    .line 231
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 233
    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowThreadId:J

    .line 234
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 235
    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowSize:J

    .line 236
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 237
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowLocked:Z

    .line 850
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 857
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 869
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 212
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    .line 213
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsSearchMsgItem:Z

    .line 217
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 219
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 220
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 226
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    .line 231
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowType:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 233
    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowThreadId:J

    .line 234
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 235
    iput-wide v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowSize:J

    .line 236
    iput-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 237
    iput-boolean v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSendNowLocked:Z

    .line 850
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 857
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$3;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 869
    new-instance v0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$4;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;)V
    .locals 12
    .parameter "msgItem"
    .parameter "context"

    .prologue
    const/4 v8, 0x6

    const/4 v11, 0x5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v10, 0x8

    .line 538
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-eq v1, v11, :cond_0

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_4

    :cond_0
    move v3, v4

    .line 540
    .local v3, isOutgoing:Z
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v8, :cond_5

    move v6, v4

    .line 541
    .local v6, isQueued:Z
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_6

    move v7, v4

    .line 542
    .local v7, isFailed:Z
    :goto_2
    const-string v5, "sms"

    .line 544
    .local v5, messageType:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->formatMessage(Lcom/samsung/mms/data/SavedSmsMessage;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-direct {p0, v7}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setBodyTextViewColor(Z)V

    .line 554
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 560
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getLocked()I

    move-result v1

    if-eqz v1, :cond_7

    .line 561
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v2

    if-ne v2, v11, :cond_8

    move v2, v4

    :goto_4
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v8

    if-ne v8, v4, :cond_9

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V

    .line 573
    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->hideMmsViewIfNeeded()V

    .line 574
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->drawLeftStatusIndicator(Lcom/samsung/mms/data/SavedSmsMessage;)V

    .line 577
    return-void

    .end local v3           #isOutgoing:Z
    .end local v5           #messageType:Ljava/lang/String;
    .end local v6           #isQueued:Z
    .end local v7           #isFailed:Z
    :cond_4
    move v3, v0

    .line 538
    goto :goto_0

    .restart local v3       #isOutgoing:Z
    :cond_5
    move v6, v0

    .line 540
    goto :goto_1

    .restart local v6       #isQueued:Z
    :cond_6
    move v7, v0

    .line 541
    goto :goto_2

    .line 563
    .restart local v5       #messageType:Ljava/lang/String;
    .restart local v7       #isFailed:Z
    :cond_7
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v2, v0

    .line 569
    goto :goto_4

    :cond_9
    move v4, v0

    goto :goto_5
.end method

.method private drawLeftStatusIndicator(Lcom/samsung/mms/data/SavedSmsMessage;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 728
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 730
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v0

    .line 731
    .local v0, boxId:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 732
    .local v3, scale:F
    const/high16 v4, 0x423c

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 733
    .local v1, bubbleMinHeight:I
    if-ne v0, v5, :cond_0

    .line 735
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 736
    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 738
    iput-boolean v5, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    .line 746
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->setMessageBubbleStyle(Lcom/samsung/mms/data/SavedSmsMessage;I)V

    .line 747
    return-void

    .line 741
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 742
    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 744
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    goto :goto_0
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    .line 895
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 898
    .local v3, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 901
    .local v4, formatedDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 902
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 903
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 904
    .local v1, dayOfWeek:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, dayOfWeekStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 908
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private formatMessage(Lcom/samsung/mms/data/SavedSmsMessage;)Ljava/lang/CharSequence;
    .locals 15
    .parameter "msg"

    .prologue
    .line 618
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 619
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, body:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v3

    .line 621
    .local v3, date:J
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v11

    .line 623
    .local v11, type:I
    const/4 v12, 0x0

    new-array v8, v12, [I

    .line 624
    .local v8, smileyStart:[I
    const/4 v12, 0x0

    new-array v7, v12, [I

    .line 625
    .local v7, smileyEnd:[I
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    .line 627
    .local v6, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 628
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa0

    if-le v12, v13, :cond_1

    .line 630
    const/4 v12, 0x0

    const/16 v13, 0xa0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 634
    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v8

    .line 635
    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v7

    .line 636
    const-string v12, "\n"

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 637
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v14, 0x7f0a018a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 639
    .local v9, startMore:I
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int v5, v9, v12

    .line 641
    .local v5, endMore:I
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 643
    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 644
    .local v2, color:I
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v13, 0x21

    invoke-virtual {v1, v12, v9, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 649
    new-instance v12, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v12, v13}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v13, 0x21

    invoke-virtual {v1, v12, v9, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 660
    .end local v2           #color:I
    .end local v5           #endMore:I
    .end local v9           #startMore:I
    .end local v10           #strMore:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v1

    .line 654
    :cond_1
    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 656
    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v8

    .line 657
    invoke-virtual {v6}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v7

    goto :goto_0
.end method

.method private getSmsPageCount(Ljava/lang/String;I)I
    .locals 4
    .parameter "text"
    .parameter "encodingType"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 683
    const/4 v0, 0x0

    .line 685
    .local v0, params:[I
    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    .line 687
    :cond_0
    invoke-static {p1, v3, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 696
    :goto_0
    if-nez v0, :cond_4

    .line 702
    :cond_1
    :goto_1
    return v1

    .line 689
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v2

    if-nez v2, :cond_3

    .line 690
    invoke-static {p1, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_4
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 702
    aget v1, v0, v3

    goto :goto_1
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 580
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 589
    return-void

    .line 588
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 610
    :cond_0
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 612
    const v0, 0x7f0e0184

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 615
    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 594
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsView:Landroid/view/View;

    .line 597
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 598
    const v0, 0x7f0e0189

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLocationTextView:Landroid/widget/TextView;

    .line 599
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    .line 600
    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    .line 603
    :cond_0
    return-void
.end method

.method private isMultiSelectMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 789
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 792
    :cond_0
    return v0
.end method

.method private reCreateTextBottomView()V
    .locals 7

    .prologue
    .line 513
    const-string v5, "Mms/RestorePreviewMessageListItem"

    const-string v6, "reCreateTextBottomView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const v5, 0x7f0e016d

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 515
    .local v0, BottomBodyText:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 520
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 521
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 522
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 525
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030054

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #BottomBodyText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 526
    .restart local v0       #BottomBodyText:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 530
    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 4
    .parameter "isFailed"

    .prologue
    const v3, 0x7f080015

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 797
    .local v0, textColor:I
    if-eqz p1, :cond_0

    .line 798
    const v0, -0xd7d7d8

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 803
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 805
    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 6
    .parameter "timestamp"
    .parameter "isFailed"
    .parameter "isOutgoing"
    .parameter "isInbox"
    .parameter "messageType"
    .parameter "isQueued"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 809
    const/16 v1, 0x8

    .line 811
    .local v1, progressBarVisible:I
    if-eqz p2, :cond_1

    .line 812
    const-string v2, "Mms/RestorePreviewMessageListItem"

    const-string v3, "Inside setDateViewTextAndColor failed case"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f0a0184

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 814
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 847
    :cond_0
    return-void

    .line 815
    :cond_1
    if-eqz p3, :cond_6

    .line 816
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 817
    const/4 v0, 0x1

    .line 818
    .local v0, isAvail:Z
    if-eqz p5, :cond_2

    const-string v2, "mms"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 819
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isMmsAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 822
    :cond_2
    if-nez v0, :cond_3

    .line 823
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 826
    :cond_3
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 827
    const/4 v1, 0x0

    goto :goto_0

    .line 831
    .end local v0           #isAvail:Z
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p6, :cond_5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isMsgAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 832
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 833
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 834
    const/16 v1, 0x8

    goto :goto_0

    .line 836
    :cond_5
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 837
    const/4 v1, 0x0

    goto :goto_0

    .line 841
    :cond_6
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessageBubbleStyle(Lcom/samsung/mms/data/SavedSmsMessage;I)V
    .locals 4
    .parameter "msgItem"
    .parameter "boxId"

    .prologue
    .line 751
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    .line 752
    .local v1, styleReceiveIndex:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    .line 753
    .local v2, styleSendIndex:I
    const/4 v0, 0x0

    .line 754
    .local v0, resourceId:I
    packed-switch p2, :pswitch_data_0

    .line 767
    :pswitch_0
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v3, v1

    .line 771
    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 772
    return-void

    .line 756
    :pswitch_1
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mInboxBGStyle:[I

    aget v0, v3, v1

    .line 757
    goto :goto_0

    .line 760
    :pswitch_2
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentboxBGStyle:[I

    aget v0, v3, v2

    .line 761
    goto :goto_0

    .line 764
    :pswitch_3
    sget-object v3, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSentFailBGStyle:[I

    aget v0, v3, v2

    .line 765
    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "url"
    .parameter "text"

    .prologue
    const v8, 0x7f0a0263

    const v7, 0x7f0a0068

    const v6, 0x7f0a0067

    const/4 v5, 0x1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, menu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "mailto:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0264

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 295
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4
    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 299
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f030064

    const v6, 0x7f0e01b2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v4, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;-><init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    .line 401
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 301
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_6
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_7
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 308
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 310
    :cond_9
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 315
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0261

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v3, "rtsp://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0262

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private smsGetPage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "encodingType"

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 668
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 674
    if-nez v0, :cond_1

    .line 679
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 676
    .restart local p1
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 679
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;Z)V
    .locals 10
    .parameter "msgItem"
    .parameter "context"
    .parameter "dateSeperatorList"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, fontSize:F
    const/4 v3, 0x2

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    .line 413
    iget v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->reCreateTextBottomView()V

    .line 416
    :cond_0
    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    .line 418
    if-eqz p3, :cond_5

    .line 419
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v6

    invoke-direct {p0, p2, v6, v7}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 427
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 428
    const v3, 0x7f0e015e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 429
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v6, 0x7f0e0154

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 433
    .local v2, visibleView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 444
    .local v1, invisibleView:Landroid/view/View;
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const v3, 0x7f0e0155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    .line 447
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 448
    const v3, 0x7f0e014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 449
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    const v3, 0x7f0e014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 460
    :cond_2
    :goto_2
    const v3, 0x7f0e0166

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 461
    const v3, 0x7f0e0167

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 463
    if-eqz v1, :cond_3

    .line 464
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_3
    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 468
    iget-object v6, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 470
    invoke-virtual {p1}, Lcom/samsung/mms/data/SavedSmsMessage;->getType()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_b

    .line 471
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :goto_4
    invoke-direct {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 478
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 479
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 480
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    :cond_4
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 489
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 490
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    sget-object v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->bindCommonMessage(Lcom/samsung/mms/data/SavedSmsMessage;Landroid/content/Context;)V

    .line 494
    return-void

    .line 422
    .end local v1           #invisibleView:Landroid/view/View;
    .end local v2           #visibleView:Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 435
    :cond_6
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v3, :cond_7

    .line 436
    const v3, 0x7f0e016a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 437
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v6, 0x53

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 440
    :cond_7
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 441
    .restart local v2       #visibleView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .restart local v1       #invisibleView:Landroid/view/View;
    goto/16 :goto_1

    .line 453
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 454
    const v3, 0x7f0e0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 456
    :cond_9
    const v3, 0x7f0e0150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mLockView:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_a
    move v3, v5

    .line 468
    goto/16 :goto_3

    .line 473
    :cond_b
    iget-object v3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected findDateAndIconsView()V
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f0e0155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateView:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperator:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0e0159

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    .line 256
    return-void
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isAlignLeft()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 502
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 503
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloding:Z

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 260
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 262
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItem:Landroid/view/View;

    .line 264
    const v0, 0x7f0e015d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 265
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 266
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mFailedIcon:Landroid/widget/Button;

    .line 267
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mScheduledIcon:Landroid/widget/Button;

    .line 268
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAddressTextView:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 277
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    .line 278
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mOldFontSize:F

    .line 281
    invoke-virtual {p0}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->findDateAndIconsView()V

    .line 282
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    .prologue
    .line 706
    const-string v0, "Mms/RestorePreviewMessageListItem"

    const-string v1, "onMessageListItemClick called !!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 775
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    :cond_1
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 712
    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter "pListview"

    .prologue
    .line 248
    sput-object p1, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    .line 249
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;

    .line 498
    return-void
.end method

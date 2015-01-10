.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$SendNowListener;
    }
.end annotation


# static fields
.field public static final BG_INBOX:[I = null

.field private static final BG_INBOX_FOCUS:[I = null

.field public static final BG_SENT:[I = null

.field public static final BG_SENTFAILED:[I = null

.field private static final BG_SENTFAILED_FOCUS:[I = null

.field private static final BG_SENT_FOCUS:[I = null

.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2b

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_LIST_CLICK_LINK:I = 0x3

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListItem"

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;

.field public static mBubbleClicked:Z

.field public static final mSentFailBGDefault:[I


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioInfoView:Landroid/widget/TextView;

.field private mBottomBodyTextView:Landroid/widget/TextView;

.field protected mBoxTypeTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingContainer:Landroid/widget/LinearLayout;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mLeftDateAndIcons:Landroid/widget/LinearLayout;

.field private mLocationTextView:Landroid/widget/TextView;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field protected mMmsAttachmentInfoView:Landroid/widget/TextView;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOldFontSize:F

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPriorityIndicator:Landroid/widget/ImageView;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRightDateAndIcons:Landroid/widget/LinearLayout;

.field protected mSIMView:Landroid/widget/ImageView;

.field private mScheduledIcon:Landroid/widget/Button;

.field private final mScheduledIconClickListener:Landroid/view/View$OnClickListener;

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

.field private mSendSimSlot:I

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mTopBodyTextView:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;

.field private messageOptions:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    .line 136
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    .line 163
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    .line 172
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    .line 181
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS:[I

    .line 2250
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    .line 2251
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    .line 2630
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->mSentFailBGDefault:[I

    return-void

    .line 136
    nop

    :array_0
    .array-data 0x4
        0x8t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x98t 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
    .end array-data

    .line 154
    :array_2
    .array-data 0x4
        0x12t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    .line 163
    :array_3
    .array-data 0x4
        0xa8t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 172
    :array_4
    .array-data 0x4
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
    .end array-data

    .line 181
    :array_5
    .array-data 0x4
        0x88t 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
    .end array-data

    .line 2630
    :array_6
    .array-data 0x4
        0x87t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 277
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 281
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 283
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 284
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 295
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mOldFontSize:F

    .line 300
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    .line 301
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 302
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    .line 303
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 304
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    .line 305
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 306
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    .line 307
    iput v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    .line 2233
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2243
    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2255
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 2267
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2398
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2415
    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    .line 312
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 314
    :cond_0
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

    .line 317
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 277
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 281
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 283
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 284
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 295
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mOldFontSize:F

    .line 300
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    .line 301
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 302
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    .line 303
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 304
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    .line 305
    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 306
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    .line 307
    iput v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    .line 2233
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2243
    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2255
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 2267
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2398
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2415
    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    .line 318
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->runLinkifyApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/MessageListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/mms/ui/MessageListItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->messageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 934
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 935
    const/4 v15, 0x0

    .line 936
    .local v15, formattedMessage:Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 938
    .local v14, formattedBottomMessage:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 953
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_7

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 962
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v15

    .line 963
    if-nez v15, :cond_2

    .line 966
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 968
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 991
    :cond_2
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 997
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :goto_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 1013
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v3, :cond_e

    .line 1014
    const/4 v12, 0x0

    .line 1016
    .local v12, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1017
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v12

    .line 1021
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 1022
    :cond_3
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1025
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1037
    .end local v12           #address:Ljava/lang/String;
    :cond_5
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    :goto_7
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v3, :cond_11

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    .line 1050
    .local v13, attachCount:I
    const/4 v3, 0x1

    if-le v13, v3, :cond_10

    .line 1051
    const v3, 0x7f0a025c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1052
    .local v16, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    .end local v13           #attachCount:I
    .end local v16           #message:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v3, :cond_12

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1067
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    if-eqz v3, :cond_13

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    :cond_6
    :goto_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMSG()Z

    move-result v9

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZJ)V

    .line 1076
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1077
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 1098
    return-void

    .line 958
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 972
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v15

    .line 973
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getCachedBottomFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v14

    .line 974
    if-nez v15, :cond_9

    .line 977
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 979
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 982
    :cond_9
    if-nez v14, :cond_2

    .line 984
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 986
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MessageItem;->setCachedBottomFormattedMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 994
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1000
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1006
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1019
    .restart local v12       #address:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 1031
    .end local v12           #address:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1040
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1054
    .restart local v13       #attachCount:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mFirstAttachName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1058
    .end local v13           #attachCount:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1064
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1070
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1080
    :cond_14
    const-class v3, Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    invoke-static {v3, v4, v0, v5}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v17

    .line 1083
    .local v17, presenter:Lcom/android/mms/ui/Presenter;
    if-eqz v17, :cond_15

    .line 1084
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/Presenter;->present(Z)V

    .line 1087
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 1090
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->displayText(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_b
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 680
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 681
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v2, v2, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x200e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, msgSizeText:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v10

    .line 691
    .local v10, formattedMessage:Ljava/lang/CharSequence;
    if-nez v10, :cond_0

    .line 693
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 695
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    .end local v10           #formattedMessage:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZJ)V

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 716
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v1, :cond_6

    .line 721
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    if-eqz v1, :cond_7

    .line 727
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v14

    .line 735
    .local v14, state:I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v13

    .line 736
    .local v13, multiSimNum:I
    const-string v1, "persist.sys.dataprefer.simid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 738
    .local v11, mDataSimSlot:I
    const/16 v1, 0x81

    if-ne v14, v1, :cond_3

    const/4 v1, 0x1

    if-le v13, v1, :cond_3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    if-eq v1, v11, :cond_3

    .line 742
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;Z)I

    move-result v14

    .line 746
    :cond_3
    packed-switch v14, :pswitch_data_0

    .line 757
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 758
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v1, :cond_8

    .line 762
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 763
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 775
    :goto_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 776
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 777
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 778
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 779
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 780
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 781
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 928
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 930
    return-void

    .line 702
    .end local v11           #mDataSimSlot:I
    .end local v13           #multiSimNum:I
    .end local v14           #state:I
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 709
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 723
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 729
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 748
    .restart local v11       #mDataSimSlot:I
    .restart local v13       #multiSimNum:I
    .restart local v14       #state:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 749
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 765
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 788
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v2, 0x7f0201ff

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 789
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 792
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 793
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$1;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 746
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private displayText(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1492
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1497
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLocationTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    :goto_0
    return-void

    .line 1494
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLocationTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1492
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 1737
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1739
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 1740
    .local v0, boxId:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 1741
    .local v3, scale:F
    const/high16 v4, 0x422c

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 1742
    .local v1, bubbleMinHeight:I
    if-ne v0, v5, :cond_0

    .line 1744
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1745
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1747
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 1756
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgID()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1757
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    .line 1761
    :goto_1
    return-void

    .line 1750
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1751
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1752
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1753
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    goto :goto_0

    .line 1759
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_1
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1372
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1464
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1468
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1469
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1473
    :goto_1
    return-void

    .line 1381
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1383
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1400
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1403
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1406
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1432
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v5, :cond_4

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1454
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1410
    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1412
    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1413
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_2

    .line 1437
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v5, :cond_6

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 1441
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1442
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v1, :cond_7

    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1445
    :cond_7
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 1448
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1450
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1471
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    .line 2560
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 2563
    .local v3, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2566
    .local v4, formatedDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2567
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2568
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2569
    .local v1, dayOfWeek:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    .line 2571
    .local v2, dayOfWeekStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2573
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

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 2050
    const/4 v0, 0x0

    .line 2051
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 2052
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 2053
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 2054
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 2055
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2056
    const/4 v0, 0x1

    .line 2057
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2058
    const/4 v1, 0x0

    goto :goto_0

    .line 2063
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 2064
    :goto_1
    return v5

    .line 2063
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 3
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const/16 v0, 0x80

    .line 2577
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2578
    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2579
    const/16 v0, 0x82

    .line 2586
    :cond_0
    :goto_0
    return v0

    .line 2583
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2584
    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    goto :goto_0
.end method

.method private getSmsPageCount(Ljava/lang/String;I)I
    .locals 5
    .parameter "text"
    .parameter "encodingType"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1338
    const/4 v1, 0x0

    .line 1339
    .local v1, result:Z
    const/4 v0, 0x0

    .line 1341
    .local v0, params:[I
    if-eq p2, v2, :cond_0

    if-nez p2, :cond_2

    .line 1343
    :cond_0
    invoke-static {p1, v4, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 1362
    :goto_0
    if-nez v0, :cond_4

    .line 1368
    :cond_1
    :goto_1
    return v2

    .line 1345
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1346
    invoke-static {p1, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    goto :goto_0

    .line 1348
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    .line 1364
    :cond_4
    array-length v3, v0

    if-eqz v3, :cond_1

    .line 1368
    aget v2, v0, v4

    goto :goto_1
.end method

.method private hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/16 v1, 0x8

    .line 1101
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1111
    return-void

    .line 1109
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSipExplict()V
    .locals 3

    .prologue
    .line 2075
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 2076
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2080
    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1203
    :cond_0
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 1205
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 1208
    return-void
.end method

.method private inflateMmsView()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1179
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 1182
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 1183
    const v0, 0x7f0e0189

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLocationTextView:Landroid/widget/TextView;

    .line 1188
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVideoPlayButton:Landroid/widget/ImageView;

    .line 1193
    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    .line 1196
    :cond_0
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2685
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 2686
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2688
    :cond_0
    return v0
.end method

.method public static isFailedMessage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1823
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 1825
    .local v0, isFailedMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 1826
    .local v1, isFailedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_2
    move v0, v3

    .line 1823
    goto :goto_0

    .restart local v0       #isFailedMms:Z
    :cond_3
    move v1, v3

    .line 1825
    goto :goto_1
.end method

.method private isMultiSelectMode()Z
    .locals 5

    .prologue
    const v4, 0x7f0e00cc

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2147
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-ne v3, v1, :cond_0

    .line 2161
    :goto_0
    return v1

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 2159
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2161
    goto :goto_0
.end method

.method private reCreateTextBottomView()V
    .locals 7

    .prologue
    .line 658
    const-string v5, "Mms/MessageListItem"

    const-string v6, "reCreateTextBottomView"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const v5, 0x7f0e016d

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 660
    .local v0, BottomBodyText:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 665
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 666
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 667
    .local v1, index:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 670
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030054

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #BottomBodyText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 671
    .restart local v0       #BottomBodyText:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 675
    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private runLinkifyApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "url"
    .parameter "text"

    .prologue
    .line 368
    const-string v13, "Extended"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "None"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 375
    const/4 v13, 0x0

    const/16 v14, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 376
    .local v11, type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 378
    .local v12, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "default_activity_app_list"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, default_value:Ljava/lang/String;
    const/4 v13, 0x0

    const/16 v14, 0x3b

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, default_phone:Ljava/lang/String;
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 384
    const/4 v13, 0x0

    const/16 v14, 0x3b

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, default_email:Ljava/lang/String;
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 387
    const/4 v13, 0x0

    const/16 v14, 0x3b

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, default_web:Ljava/lang/String;
    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 390
    const/4 v13, 0x0

    const/16 v14, 0x3b

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, default_map:Ljava/lang/String;
    const/4 v10, 0x0

    .line 394
    .local v10, package_name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 396
    .local v1, class_name:Ljava/lang/String;
    const-string v13, "tel"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 397
    const/4 v13, 0x0

    const/16 v14, 0x2f

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 398
    const/16 v13, 0x2f

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 413
    :cond_2
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v9, v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v9, intent:Landroid/content/Intent;
    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    const-string v13, "com.android.browser.application_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, e:Landroid/content/ActivityNotFoundException;
    const-string v13, "Mms/MessageListItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " doesn\'t exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v7           #e:Landroid/content/ActivityNotFoundException;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_3
    const-string v13, "mailto"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 400
    const/4 v13, 0x0

    const/16 v14, 0x2f

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 401
    const/16 v13, 0x2f

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 402
    :cond_4
    const-string v13, "http"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 403
    const/4 v13, 0x0

    const/16 v14, 0x2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 404
    const/16 v13, 0x2f

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 405
    :cond_5
    const-string v13, "geo"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 406
    const/4 v13, 0x0

    const/16 v14, 0x2f

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 407
    const/16 v13, 0x2f

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 421
    .restart local v9       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v8

    .line 422
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v13, "Mms/MessageListItem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SecurityException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setBodyTextViewColor(Z)V
    .locals 4
    .parameter "isFailed"

    .prologue
    const v3, 0x7f080015

    .line 2165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2166
    .local v0, textColor:I
    if-eqz p1, :cond_0

    .line 2167
    const v0, -0xd7d7d8

    .line 2169
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2170
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2172
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2173
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2174
    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZJ)V
    .locals 5
    .parameter "timestamp"
    .parameter "isFailed"
    .parameter "isOutgoing"
    .parameter "isInbox"
    .parameter "messageType"
    .parameter "isQueued"
    .parameter "isReserved"

    .prologue
    .line 2179
    const/4 v1, 0x0

    .line 2180
    .local v1, mIsReserved:Z
    const-wide/16 v3, 0x1

    cmp-long v3, p7, v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 2181
    :goto_0
    const/16 v2, 0x8

    .line 2183
    .local v2, progressBarVisible:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    if-eqz p2, :cond_2

    .line 2186
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0a0184

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2187
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2228
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 2229
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2230
    :cond_0
    return-void

    .line 2180
    .end local v2           #progressBarVisible:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2188
    .restart local v2       #progressBarVisible:I
    :cond_2
    if-eqz v1, :cond_3

    .line 2189
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    const v4, 0x7f0a0506

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2190
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2192
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2193
    :cond_3
    if-eqz p3, :cond_8

    .line 2194
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2195
    const/4 v0, 0x1

    .line 2196
    .local v0, isAvail:Z
    if-eqz p5, :cond_4

    const-string v3, "mms"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2197
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isMmsAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 2200
    :cond_4
    if-nez v0, :cond_5

    .line 2202
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0a0312

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2204
    const/16 v2, 0x8

    goto :goto_1

    .line 2209
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2210
    const/4 v2, 0x0

    goto :goto_1

    .line 2214
    .end local v0           #isAvail:Z
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p6, :cond_7

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isMsgAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2215
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v4, 0x7f0a00c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2216
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2217
    const/16 v2, 0x8

    goto :goto_1

    .line 2219
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2220
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2224
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2225
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setFailedMessageBackgroundDefault()V
    .locals 3

    .prologue
    .line 2639
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v1

    .line 2640
    .local v1, styleSendIndex:I
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->mSentFailBGDefault:[I

    aget v0, v2, v1

    .line 2642
    .local v0, resourceId:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2643
    return-void
.end method

.method private setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 4
    .parameter "msgItem"
    .parameter "boxId"

    .prologue
    .line 1770
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    .line 1771
    .local v1, styleReceiveIndex:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    .line 1772
    .local v2, styleSendIndex:I
    const/4 v0, 0x0

    .line 1774
    .local v0, resourceId:I
    packed-switch p2, :pswitch_data_0

    .line 1793
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1794
    return-void

    .line 1776
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    aget v0, v3, v1

    .line 1777
    goto :goto_0

    .line 1779
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v3, v2

    .line 1780
    goto :goto_0

    .line 1784
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1785
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v3, v2

    goto :goto_0

    .line 1787
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v3, v2

    .line 1788
    goto :goto_0

    .line 1774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 4
    .parameter "msgItem"
    .parameter "boxId"

    .prologue
    .line 1797
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    .line 1798
    .local v1, styleReceiveIndex:I
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    .line 1799
    .local v2, styleSendIndex:I
    const/4 v0, 0x0

    .line 1800
    .local v0, resourceId:I
    packed-switch p2, :pswitch_data_0

    .line 1819
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1820
    return-void

    .line 1802
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS:[I

    aget v0, v3, v1

    .line 1803
    goto :goto_0

    .line 1805
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    aget v0, v3, v2

    .line 1806
    goto :goto_0

    .line 1810
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1811
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS:[I

    aget v0, v3, v2

    goto :goto_0

    .line 1813
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    aget v0, v3, v2

    .line 1814
    goto :goto_0

    .line 1800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private smsGetPage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "encodingType"

    .prologue
    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 1321
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1328
    if-nez v0, :cond_1

    .line 1333
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1330
    .restart local p1
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1333
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    goto :goto_0
.end method

.method private startViewer()V
    .locals 14

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1938
    const/4 v6, 0x0

    .line 1939
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1940
    .local v3, messageItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 1941
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 1943
    .local v11, threadId:J
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    .line 1944
    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start viewer, msgid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1947
    iget-boolean v0, v3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    .line 1948
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1949
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1950
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1958
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2037
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_1

    .line 2040
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 2043
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2047
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1961
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1962
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    .line 1963
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1964
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1965
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1966
    const-string v0, "isWapPush"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1974
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1979
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_0

    .line 1980
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1981
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1989
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1990
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1998
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2001
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-ne v0, v13, :cond_5

    .line 2002
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v7

    .line 2003
    .local v7, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v7, :cond_0

    .line 2005
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2006
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "extra_startup_flag"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2007
    const-string v0, "extra_map_url"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    const-string v0, "extra_selected_place"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2009
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2012
    .end local v7           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_9

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v13, :cond_9

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_9

    .line 2018
    :cond_8
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2019
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_b

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v13, :cond_b

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 2023
    :cond_a
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2025
    :cond_b
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2028
    .restart local v6       #intent:Landroid/content/Intent;
    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2030
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2031
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2032
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .locals 0
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2548
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    return-void
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 430
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 431
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, fontSize:F
    const/4 v5, 0x2

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v2

    .line 436
    invoke-static {p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v1

    .line 437
    .local v1, bgStyleIndex:I
    const/4 v0, 0x0

    .line 438
    .local v0, bUsingCustom:Z
    sget v5, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v1, v5, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 442
    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MessageListItem;->mOldFontSize:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->reCreateTextBottomView()V

    .line 446
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/MessageListItem;->mOldFontSize:F

    .line 448
    iget-boolean v5, p1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v5, :cond_9

    .line 449
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-direct {p0, p2, v6, v7}, Lcom/android/mms/ui/MessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 456
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v5, :cond_2

    .line 457
    const v5, 0x7f0e015e

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 458
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    const v6, 0x7f0e0154

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 461
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .line 462
    .local v4, visibleView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 473
    .local v3, invisibleView:Landroid/view/View;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const v5, 0x7f0e0155

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 476
    const v5, 0x7f0e0153

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    .line 478
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 479
    const v5, 0x7f0e014f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 482
    const v5, 0x7f0e0156

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    .line 484
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 485
    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    if-gez v5, :cond_c

    .line 486
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    const v5, 0x7f0e014d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 497
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 498
    const v5, 0x7f0e014e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    .line 525
    :cond_5
    :goto_3
    const v5, 0x7f0e0166

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 526
    const v5, 0x7f0e0167

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 528
    if-eqz v3, :cond_6

    .line 529
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 533
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 536
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 539
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    :goto_5
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_14

    .line 547
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    .line 553
    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    if-gez v5, :cond_13

    .line 554
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    :cond_7
    :goto_6
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    :goto_7
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 568
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 569
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 570
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    :cond_8
    :goto_8
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 601
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v6, 0x1

    sget-object v7, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 605
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    sget-object v7, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 614
    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v5, :pswitch_data_0

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 628
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem;->setCheckBoxPosition(Lcom/android/mms/ui/MessageItem;)V

    .line 629
    return-void

    .line 452
    .end local v3           #invisibleView:Landroid/view/View;
    .end local v4           #visibleView:Landroid/view/View;
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 464
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    if-nez v5, :cond_b

    .line 465
    const v5, 0x7f0e016a

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 466
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 469
    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mRightDateAndIcons:Landroid/widget/LinearLayout;

    .line 470
    .restart local v4       #visibleView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mLeftDateAndIcons:Landroid/widget/LinearLayout;

    .restart local v3       #invisibleView:Landroid/view/View;
    goto/16 :goto_1

    .line 488
    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 501
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 502
    const v5, 0x7f0e0152

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 506
    :cond_e
    const v5, 0x7f0e0157

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    .line 508
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    if-eqz v5, :cond_f

    .line 509
    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    if-gez v5, :cond_10

    .line 510
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    :cond_f
    :goto_a
    const v5, 0x7f0e0150

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 519
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 520
    const v5, 0x7f0e0151

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    goto/16 :goto_3

    .line 512
    :cond_10
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 533
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 542
    :cond_12
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 556
    :cond_13
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSIMView:Landroid/widget/ImageView;

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 563
    :cond_14
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 577
    :cond_15
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 578
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 579
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 586
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 587
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 590
    iget-boolean v5, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v5, :cond_8

    .line 591
    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 592
    :cond_16
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 593
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    goto/16 :goto_8

    .line 616
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 617
    sget-object v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    const/4 v6, 0x1

    aget v2, v5, v6

    .line 622
    :goto_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_9

    .line 619
    :cond_17
    sget-object v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    const/4 v6, 0x1

    aget v2, v5, v6

    goto :goto_b

    .line 614
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method protected findDateAndIconsView()V
    .locals 1

    .prologue
    .line 330
    const v0, 0x7f0e0155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0e0159

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    .line 334
    const v0, 0x7f0e0153

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBoxTypeTextView:Landroid/widget/TextView;

    .line 335
    return-void
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "boxId"
    .parameter "isIncomingGroup"
    .parameter "groupMessage"

    .prologue
    const/4 v0, 0x0

    .line 1220
    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "boxId"
    .parameter "callbackNumber"

    .prologue
    const/4 v0, 0x0

    .line 1216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/CharSequence;
    .locals 19
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "boxId"
    .parameter "callbackNumber"
    .parameter "isIncomingGroup"
    .parameter "groupMessage"

    .prologue
    .line 1227
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 1228
    .local v3, smileyStart:[I
    const/4 v1, 0x0

    new-array v4, v1, [I

    .line 1231
    .local v4, smileyEnd:[I
    const-string v11, "groups"

    .line 1233
    .local v11, group:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1235
    .local v5, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContactInfoInBubble()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v8, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 1237
    .local v8, contactInfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1241
    .end local v8           #contactInfo:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v13

    .line 1242
    .local v13, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    .line 1244
    .local v12, hasSubject:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1245
    invoke-static/range {p4 .. p4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1249
    .local v9, displayAddress:Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1250
    const-string v1, ":"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1251
    if-eqz v12, :cond_1

    .line 1252
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1258
    .end local v9           #displayAddress:Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a001f

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1261
    .local v16, subjectString:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1264
    .end local v16           #subjectString:Ljava/lang/String;
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1268
    if-eqz v12, :cond_3

    .line 1269
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1273
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v2

    if-le v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1275
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1279
    invoke-virtual {v13}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v3

    .line 1280
    invoke-virtual {v13}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v4

    .line 1282
    const-string v1, "\n"

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0a018a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1284
    .local v15, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 1285
    .local v14, startMore:I
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v10, v14, v1

    .line 1287
    .local v10, endMore:I
    invoke-virtual {v5, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1289
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 1290
    .local v7, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v5, v1, v14, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1292
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v2, 0x21

    invoke-virtual {v5, v1, v14, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1304
    .end local v7           #color:I
    .end local v10           #endMore:I
    .end local v14           #startMore:I
    .end local v15           #strMore:Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1305
    const-string v1, "\nCB#: "

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1306
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1311
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "Mms/MessageListItem"

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1313
    return-object v5

    .line 1242
    .end local v12           #hasSubject:Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1295
    .restart local v12       #hasSubject:Z
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1297
    invoke-virtual {v13}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v3

    .line 1298
    invoke-virtual {v13}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v4

    goto :goto_1
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public hasFailedIconFocused()Z
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2676
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    const/4 v0, 0x1

    .line 2680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initAttachmentListView()V
    .locals 0

    .prologue
    .line 2552
    return-void
.end method

.method public isAlignLeft()Z
    .locals 1

    .prologue
    .line 2538
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public moveFocusToBubble()Z
    .locals 1

    .prologue
    .line 2667
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2668
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForFailed()V

    .line 2669
    const/4 v0, 0x1

    .line 2671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 339
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 341
    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    .line 343
    const v0, 0x7f0e015d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 344
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 345
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    .line 346
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    .line 347
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTopBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBottomBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 362
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsAttachmentInfoView:Landroid/widget/TextView;

    .line 363
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->mOldFontSize:F

    .line 364
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->findDateAndIconsView()V

    .line 365
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f0e00cc

    .line 1506
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-ne v1, v3, :cond_1

    .line 1510
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    .line 1521
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1548
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    sget-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    if-nez v0, :cond_0

    .line 1551
    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    .line 1552
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    .line 1556
    :cond_4
    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2140
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1897
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 1923
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1902
    return-void
.end method

.method public pauseVideo(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 2557
    return-void
.end method

.method public performFailedIconClick()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2591
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->messageOptions:Lcom/android/mms/ui/MessageOptions;

    .line 2592
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2593
    const/4 v11, 0x2

    .line 2594
    .local v11, what:I
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2595
    const/4 v11, 0x1

    .line 2598
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v10

    .line 2599
    .local v10, multiSimNum:I
    const-string v0, "persist.sys.dataprefer.simid"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2600
    .local v7, mDataSimSlot:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v8

    .line 2602
    .local v8, mSystemImsi:Ljava/lang/String;
    const/4 v0, 0x1

    if-le v10, v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2604
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    iput-boolean v12, v0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 2606
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006a

    new-instance v2, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2628
    .end local v7           #mDataSimSlot:I
    .end local v8           #mSystemImsi:Ljava/lang/String;
    .end local v10           #multiSimNum:I
    .end local v11           #what:I
    :cond_1
    :goto_0
    return-void

    .line 2623
    .restart local v7       #mDataSimSlot:I
    .restart local v8       #mSystemImsi:Ljava/lang/String;
    .restart local v10       #multiSimNum:I
    .restart local v11       #what:I
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 2624
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2625
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1878
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1886
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    :cond_1
    return-void
.end method

.method public restoreMsgBackgroundForFailed()V
    .locals 4

    .prologue
    .line 2656
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2657
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v1

    .line 2658
    .local v1, styleSendIndex:I
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    .line 2659
    .local v0, resourceId:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2661
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v3, 0x7f0200ef

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2662
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2664
    .end local v0           #resourceId:I
    .end local v1           #styleSendIndex:I
    :cond_0
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1907
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1912
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1129
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 1
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1663
    return-void
.end method

.method public setCheckBoxPosition(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 1668
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1669
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1721
    return-void
.end method

.method public setFocusOnFailedIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2646
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2647
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    .line 2648
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2649
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1136
    if-nez p2, :cond_0

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020272

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1141
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    return-void

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 1831
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1835
    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter "pListview"

    .prologue
    .line 326
    sput-object p1, Lcom/android/mms/ui/MessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    .line 327
    return-void
.end method

.method public setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 1149
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    const-string v1, "NGM"

    const-string v2, "setLocation Called for Message List Item"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1153
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1154
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1156
    const-string v0, ""

    .line 1157
    .local v0, locationInfo:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    .end local v0           #locationInfo:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 1918
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 643
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 2071
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 1839
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1843
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    .line 1846
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1848
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1849
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1850
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020273

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1853
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1854
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 1860
    :catch_0
    move-exception v1

    .line 1861
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1867
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1892
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 1928
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1871
    return-void
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 1933
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 1875
    return-void
.end method

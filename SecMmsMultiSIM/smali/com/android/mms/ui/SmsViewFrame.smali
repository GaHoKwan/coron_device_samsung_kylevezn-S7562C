.class public Lcom/android/mms/ui/SmsViewFrame;
.super Landroid/widget/FrameLayout;
.source "SmsViewFrame.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/mms/ui/MessageViewerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;,
        Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_MMS_READ:Ljava/lang/String; = "com.android.MMS.intent.action.MMS_READ_NOTIFY"

.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_SMS_DATE:I = 0x4

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field private static final EXTRA_MSG_ID:Ljava/lang/String; = "message_id"

.field public static final MENU_COPY_TEXT:I = 0xd4

.field public static final MENU_FORWARD_MESSAGE:I = 0xd5

.field public static final MENU_OFFSET:I = 0xc8

.field public static final MENU_PREFERENCES:I = 0xd3

.field public static final MENU_SEARCH:I = 0xd0

.field public static final MENU_SPAM_MESSAGE:I = 0xd6

.field public static final MENU_TIMEDSEND:I = 0xd1

.field public static final MENU_VIEW_CONV:I = 0xd2

.field private static final NONE_TYPE:I = 0x0

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final SIM_NUM1:I = 0x1

.field private static final SIM_NUM2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SmsViewFrame"

.field private static deleteDialog:Landroid/app/AlertDialog;

.field static mBackgroundQueryHandler:Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;


# instance fields
.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private MY_DATA_CHECK_CODE:I

.field private bLongPress:Z

.field private bMultiTouch:Z

.field private endX:I

.field public isNotiMsg:Z

.field private isWapPush:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field mDownloadButton:Landroid/widget/Button;

.field private mIntent:Landroid/content/Intent;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

.field private mTextSizeController:Lcom/android/mms/ui/TextSizeController;

.field private mTopView:Landroid/widget/FrameLayout;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private messageBodyInfo:Ljava/lang/String;

.field public msgId:J

.field private receivedTimeInfo:Ljava/lang/String;

.field private senderInfo:Ljava/lang/String;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 155
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 160
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    .line 184
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 185
    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    .line 189
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    .line 219
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    .line 238
    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewFrame$1;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 694
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 1043
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 1662
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xeea385

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1665
    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewFrame$8;-><init>(Lcom/android/mms/ui/SmsViewFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 160
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    .line 184
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 185
    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    .line 189
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    .line 219
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    .line 238
    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewFrame$1;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 694
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/mms/ui/SmsViewFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 1043
    iput-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 1662
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xeea385

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1665
    new-instance v0, Lcom/android/mms/ui/SmsViewFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewFrame$8;-><init>(Lcom/android/mms/ui/SmsViewFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 230
    return-void
.end method

.method private LaunchTTS()V
    .locals 7

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_0

    .line 950
    const-string v1, "VOL"

    const-string v2, "vol up, mTts NULL"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 952
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 966
    .end local v0           #checkIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 958
    const-string v1, "VOL"

    const-string v2, "vol up, mTts stop"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 963
    const-string v1, "VOL"

    const-string v2, "vol up, mTts speak"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewFrame;)Lcom/android/mms/ui/MessageStatusIconsArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsViewFrame;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method private static confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;Z)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "locked"

    .prologue
    const/4 v6, 0x0

    .line 1178
    const v4, 0x7f030029

    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1179
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1180
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1182
    .local v0, bodyMessage:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    if-eqz p2, :cond_0

    .line 1184
    const v4, 0x7f0a009d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1188
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1196
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    .line 1197
    sget-object v4, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1199
    return-void

    .line 1186
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v4, 0x7f0a009c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private drawMainTextView()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0xf

    .line 698
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0015

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-static {v8, v9, v10, v12}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, date:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 703
    .local v1, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 705
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v2

    .line 706
    .local v2, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 710
    invoke-static {v1, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 714
    .end local v2           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 721
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 722
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 724
    const-string v4, "CB#: "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 725
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 726
    invoke-static {v1, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 730
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 731
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 734
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 736
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 737
    .local v3, startOffset:I
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 739
    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 745
    .end local v3           #startOffset:I
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 748
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v11}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 751
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 752
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 755
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 756
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 772
    return-void
.end method

.method private drawNotiMsgTextView()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v2, 0x0

    .line 779
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 781
    .local v8, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 783
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 785
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v6, v2, v3}, Lcom/android/mms/ui/SmsViewFrame;->getNotificationText(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, messageDetails:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v0, :cond_4

    .line 795
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_3

    .line 796
    const/16 v0, -0x10

    invoke-static {v8, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 823
    .end local v7           #messageDetails:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 826
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 828
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 829
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 833
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    const-string v0, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 850
    return-void

    .line 799
    .restart local v7       #messageDetails:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x7

    :try_start_1
    invoke-static {v8, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 805
    .end local v7           #messageDetails:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 801
    .restart local v7       #messageDetails:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x7

    :try_start_2
    invoke-static {v8, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private drawTitle()V
    .locals 5

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v4, "mms"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v4, "sms"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1414
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1415
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1418
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1446
    if-eqz v3, :cond_0

    .line 1447
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1450
    :cond_0
    :goto_0
    return-object v2

    .line 1421
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1423
    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    .line 1426
    new-instance v9, Lcom/android/mms/ui/SmsViewFrame$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v9, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewFrame$5;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    .line 1432
    .local v9, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1433
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_5

    .line 1438
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1440
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1446
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v9           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 1447
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v0

    .line 1450
    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v3, :cond_4

    .line 1447
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1446
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 1442
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :cond_5
    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCachedMessageItemMmsNoti(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1455
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1456
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1459
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1485
    if-eqz v3, :cond_0

    .line 1486
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_0
    :goto_0
    return-object v2

    .line 1462
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1466
    new-instance v9, Lcom/android/mms/ui/SmsViewFrame$6;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v9, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewFrame$6;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    .line 1472
    .local v9, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1473
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_4

    .line 1478
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1480
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1485
    :goto_1
    if-eqz v3, :cond_2

    .line 1486
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 1489
    goto :goto_0

    .line 1485
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v9           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v3, :cond_3

    .line 1486
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1485
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 1482
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1495
    const-string v1, "SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCachedMessageItemWpm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1498
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1499
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    const/4 v8, 0x0

    .line 1502
    .local v8, invalidData:Z
    if-nez v3, :cond_1

    .line 1548
    if-eqz v3, :cond_0

    .line 1549
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1552
    :cond_0
    :goto_0
    return-object v2

    .line 1505
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1511
    :cond_2
    if-nez v3, :cond_4

    .line 1516
    :cond_3
    :goto_1
    if-ne v8, v7, :cond_6

    .line 1517
    const-string v1, "SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no msg id  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    if-eqz v3, :cond_0

    .line 1549
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1512
    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v5, p2

    if-eqz v1, :cond_3

    .line 1513
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    .line 1514
    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    .line 1524
    :cond_6
    new-instance v10, Lcom/android/mms/ui/SmsViewFrame$7;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewFrame$7;-><init>(Lcom/android/mms/ui/SmsViewFrame;IFZ)V

    .line 1530
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1531
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_a

    .line 1536
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1538
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1543
    :goto_2
    if-eqz v0, :cond_7

    .line 1544
    :try_start_4
    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1548
    :cond_7
    if-eqz v3, :cond_8

    .line 1549
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v2, v0

    .line 1552
    goto :goto_0

    .line 1548
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_9

    .line 1549
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 1548
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1540
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_a
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getNotificationText(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "from"
    .parameter "msgItem"

    .prologue
    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 865
    .local v6, res:Landroid/content/res/Resources;
    const-wide/16 v3, 0x0

    .line 867
    .local v3, id:J
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 869
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 873
    .local v7, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    check-cast v5, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .local v5, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v8, 0x7f0a00b1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v8

    const-wide/16 v10, 0x3ff

    add-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const/16 v8, 0x200e

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    const v8, 0x7f0a0017

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    const v8, 0x7f0a0016

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    const/4 v13, 0x1

    invoke-static {p0, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v5           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_0
    return-object v8

    .line 874
    :catch_0
    move-exception v2

    .line 875
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v8, "Mms/SmsViewFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load the message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getOffsetX()F
    .locals 7

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, mOffsetX:F
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getStatusBarHeight()I

    move-result v2

    .line 441
    .local v2, mStatusBarHeight:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBarHeight()I

    move-result v0

    .line 442
    .local v0, actionBarHeight:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 443
    .local v3, mViewTitleHeaderHeight:I
    add-int v4, v2, v0

    add-int/2addr v4, v3

    int-to-float v1, v4

    .line 444
    const-string v4, "Mms/SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOffsetX() mStatusBarHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),actionBarHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),mViewTitleHeaderHeight("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),mOffsetX("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return v1
.end method

.method private initResourceRefs()V
    .locals 1

    .prologue
    .line 678
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageStatusIconsArea;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 681
    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    .line 682
    const v0, 0x7f0e0220

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 693
    return-void
.end method

.method private initialize()V
    .locals 10

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    .line 631
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 632
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v8, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    .line 633
    const-string v0, "thread_id"

    invoke-virtual {v8, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->threadId:J

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    .line 638
    const-string v0, "isWapPush"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    .line 640
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v0, v2, :cond_1

    .line 642
    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 643
    .local v9, messageUri:Landroid/net/Uri;
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "wpm"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 645
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "sms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 672
    :cond_0
    :goto_1
    return-void

    .line 649
    .end local v9           #messageUri:Landroid/net/Uri;
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v0, v2, :cond_2

    .line 650
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 651
    .restart local v9       #messageUri:Landroid/net/Uri;
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "mms"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItemMmsNoti(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 653
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_0

    .line 659
    .end local v9           #messageUri:Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 660
    .restart local v9       #messageUri:Landroid/net/Uri;
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v2, "sms"

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/android/mms/ui/SmsViewFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 662
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    const-string v6, "sms"

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_0

    .line 669
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_1
.end method

.method private makeOutgoingCall(Ljava/lang/String;)V
    .locals 4
    .parameter "num"

    .prologue
    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 944
    .local v0, intentTocall:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 945
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 946
    return-void
.end method

.method private markAsRead()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1349
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v2, v5, :cond_2

    .line 1351
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1354
    .local v0, msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1355
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1356
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1357
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$2;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1372
    .end local v0           #msgUri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v2, v5, :cond_3

    .line 1373
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1378
    .restart local v0       #msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1379
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$3;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1394
    .end local v0           #msgUri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_3
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1397
    .restart local v0       #msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1398
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SmsViewFrame$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SmsViewFrame$4;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SmsViewFrame"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSmsViewerBackground()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 1209
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 454
    .local v4, xPos:I
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    .line 455
    .local v2, mSplitMode:I
    const-string v5, "Mms/SmsViewFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent() mSplitMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 458
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->getXpositon()I

    move-result v3

    .line 459
    .local v3, offset:I
    sub-int v5, v4, v3

    if-lez v5, :cond_0

    .line 460
    int-to-float v5, v3

    sub-float v5, v10, v5

    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->getOffsetX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 464
    .end local v3           #offset:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 467
    .local v0, action:I
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 468
    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    if-eqz v5, :cond_2

    .line 469
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 526
    :goto_1
    return v5

    .line 462
    .end local v0           #action:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v10, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 475
    .restart local v0       #action:I
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 502
    const-string v5, "Mms/SmsViewFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent() default:action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    and-int/lit16 v5, v0, 0xff

    const/4 v8, 0x5

    if-ne v5, v8, :cond_3

    .line 504
    iput-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    move v5, v7

    .line 526
    goto :goto_1

    .line 477
    :pswitch_0
    const-string v5, "Mms/SmsViewFrame"

    const-string v7, "dispatchTouchEvent() ACTION_MOVE"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v5, v6

    .line 485
    goto :goto_1

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 490
    .end local v1           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    const-string v5, "Mms/SmsViewFrame"

    const-string v8, "dispatchTouchEvent() ACTION_UP"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/mms/ui/SmsViewFrame;->endX:I

    .line 493
    iput-boolean v7, p0, Lcom/android/mms/ui/SmsViewFrame;->bMultiTouch:Z

    .line 496
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    .line 497
    goto :goto_1

    .line 519
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    .line 520
    goto :goto_1

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifiyBindingNotiViewer()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1572
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 1573
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1575
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1578
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1582
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1583
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1589
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->notifyFolderViewerClose()V

    .line 1590
    sget-object v0, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    sget-object v0, Lcom/android/mms/ui/SmsViewFrame;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    :cond_1
    if-eqz v6, :cond_2

    .line 1595
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1598
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 1586
    .restart local v1       #messageUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1594
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1595
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 531
    iget v2, p0, Lcom/android/mms/ui/SmsViewFrame;->MY_DATA_CHECK_CODE:I

    if-ne p1, v2, :cond_1

    .line 532
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_2
    if-eqz v0, :cond_0

    .line 555
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 556
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V
    .locals 5
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "isNotification"

    .prologue
    const/4 v4, 0x1

    .line 253
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SmsViewFrame;->setIntent(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 258
    .local v0, topInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03008a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTopView:Landroid/widget/FrameLayout;

    .line 259
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->setSmsViewerBackground()V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0185

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    .line 264
    if-ne p3, v4, :cond_0

    .line 265
    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initialize()V

    .line 267
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initResourceRefs()V

    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 276
    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawNotiMsgTextView()V

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawTitle()V

    .line 283
    new-instance v1, Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1}, Lcom/android/mms/ui/TextSizeController;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    .line 284
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;)V

    .line 285
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 288
    new-instance v1, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/mms/ui/SmsViewFrame;->mBackgroundQueryHandler:Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;

    .line 290
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActionBar:Landroid/app/ActionBar;

    .line 292
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->markAsRead()V

    .line 293
    return-void

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 411
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1203
    const/4 v0, 0x0

    return v0
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->senderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->receivedTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mDate:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->messageBodyInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 573
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 925
    const-string v0, "VOL"

    const-string v1, "vol up, SUPER!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 900
    :pswitch_0
    const-string v1, "VOL"

    const-string v2, "vol up,"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    .line 904
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->LaunchTTS()V

    .line 905
    const-string v1, "VOL"

    const-string v2, "vol up, LaunchTTS()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 911
    const-string v1, "VOL"

    const-string v2, "vol up, startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 920
    const-string v1, "VOL"

    const-string v2, "vol down, startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 970
    const/16 v3, 0x18

    if-ne p1, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 973
    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    if-eqz v3, :cond_1

    .line 974
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    .line 1040
    :cond_0
    :goto_0
    return v1

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    .line 999
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewFrame;->bLongPress:Z

    .line 1003
    :cond_2
    const/16 v3, 0x19

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1019
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    .line 1022
    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 1023
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->markAsRead()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    .line 1032
    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 1033
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1034
    .local v0, callNum:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1035
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewFrame;->makeOutgoingCall(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #callNum:Ljava/lang/String;
    :cond_5
    move v1, v2

    .line 1040
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsViewFrame;->setIntent(Landroid/content/Intent;)V

    .line 417
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->initialize()V

    .line 419
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V

    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1088
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_0

    .line 1089
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    .line 1090
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mAddContactIntent:Landroid/content/Intent;

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1171
    :goto_0
    :pswitch_0
    return v5

    .line 1094
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 1096
    const/4 v1, 0x0

    .line 1099
    .local v1, islocked:Z
    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v6, v5, :cond_2

    .line 1100
    const-wide/16 v3, 0x0

    .line 1111
    .local v3, msglock:J
    :goto_1
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 1112
    const/4 v1, 0x1

    .line 1113
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v6, v1}, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Z)V

    .line 1114
    .local v2, l:Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v2, v1}, Lcom/android/mms/ui/SmsViewFrame;->confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;Z)V

    goto :goto_0

    .line 1106
    .end local v2           #l:Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;
    .end local v3           #msglock:J
    :cond_2
    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-eqz v6, :cond_3

    .line 1107
    const-string v6, "mms"

    iget-wide v7, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    iget-object v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;Z)J

    move-result-wide v3

    .restart local v3       #msglock:J
    goto :goto_1

    .line 1109
    .end local v3           #msglock:J
    :cond_3
    const-string v6, "sms"

    iget-wide v7, p0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    iget-object v9, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;Z)J

    move-result-wide v3

    .restart local v3       #msglock:J
    goto :goto_1

    .line 1118
    .end local v1           #islocked:Z
    .end local v3           #msglock:J
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_5

    .line 1127
    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;

    const v9, 0x7f0a001e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1129
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v8, 0xc8

    if-le v7, v8, :cond_6

    .line 1130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v5, v6

    .line 1171
    goto :goto_0

    .line 1132
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 1136
    :pswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :pswitch_3
    iget-object v7, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 1148
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "conversationList"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1152
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1156
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1158
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto/16 :goto_0

    .line 1130
    nop

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 388
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1051
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1057
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-nez v0, :cond_0

    .line 1058
    const/16 v0, 0xd4

    const v1, 0x7f0a0022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1064
    const/16 v0, 0xd0

    const v1, 0x104000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1076
    const/16 v0, 0xd2

    const v1, 0x7f0a0311

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1078
    const/16 v0, 0xd3

    const v1, 0x7f0a0006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1081
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isWapPush:Z

    if-ne v0, v3, :cond_5

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/wap-push-messages/#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 313
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 329
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    if-ne v0, v3, :cond_a

    .line 330
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 335
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    :goto_2
    if-eqz v6, :cond_2

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 340
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 350
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_8

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 345
    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawNotiMsgTextView()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 358
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_a
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 359
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_b

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 365
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    :goto_3
    if-eqz v6, :cond_2

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 369
    :cond_c
    :try_start_6
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewFrame;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 378
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_d

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 374
    :cond_e
    :try_start_7
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewFrame;->drawMainTextView()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 403
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 424
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 425
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 427
    .local v2, y:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 428
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewFrame;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 233
    const-string v0, "Mms/SmsViewFrame"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    .line 236
    return-void
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 1046
    return-void
.end method

.method public splitListChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1558
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1559
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1562
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    :cond_1
    if-eqz v6, :cond_2

    .line 1567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1569
    :cond_2
    return-void

    .line 1566
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public updateMessageLockIcon(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 1343
    return-void
.end method

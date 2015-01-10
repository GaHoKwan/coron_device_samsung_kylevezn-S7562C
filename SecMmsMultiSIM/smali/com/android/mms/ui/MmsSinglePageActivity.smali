.class public Lcom/android/mms/ui/MmsSinglePageActivity;
.super Landroid/app/Activity;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;
.implements Lcom/android/mms/ui/MessageViewerInterface;


# static fields
.field private static final CREATE_MODEL_TOLERANCY:Z = true

.field private static DEBUG_LOG:Z = false

.field private static final FAST_PINCH_ZOOM:Z = true

.field public static final FOLDER_NAVI_COLUMN_MSG_ID:I = 0x1

.field public static final FOLDER_NAVI_COLUMN_MSG_TYPE:I = 0x0

.field public static final FOLDER_NAVI_COLUMN_THREAD_ID:I = 0x2

.field static final LISTEN_AUDIO:I = 0x3

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final MENU_PLAY_SLIDESHOW:I = 0x64

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field public static final RESULT_FINISH_ALL:I = 0x2

.field public static final RESULT_NORMAL:I = 0x1

.field public static final SIZE_DOWN:I = 0x1

.field public static final SIZE_UP:I = 0x0

.field private static final START_ACTIVITY_SLIDE_PLAY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/MmsSinglePageActivity"

.field static final VIEW_IMAGE:I = 0x1

.field static final VIEW_VIDEO:I = 0x2

.field public static bMultiTouch:Z

.field public static bMultiTouchFinished:Z

.field private static mIsSpam:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private DEBUG:Z

.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private final MAX_TEXT_ZOOM_LEVEL:F

.field private final MIN_TEXT_ZOOM_LEVEL:F

.field private final POINTER_COUNT:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private final SCROLL_MODE_KEEP_LATEST_POS:I

.field private final SCROLL_MODE_TOP:I

.field private final ZOOM_STEP:F

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private bar:Landroid/app/ActionBar;

.field private currentEmailPage:I

.field private currentScrollY:I

.field private currentScrollY_changed:I

.field private endX:I

.field private endY:I

.field firstFingerX:F

.field firstFingerY:F

.field private firstVisibleTextViewId:I

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAttachViewHeight:I

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioViewHeight:I

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEmailView:Z

.field private mEndSlideAnim:I

.field mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsPreview:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mPageNo:Landroid/widget/TextView;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mScrollHandler:Landroid/os/Handler;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowModelLen:I

.field private mStartSlideAnim:I

.field private mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

.field private mSubject:Landroid/widget/TextView;

.field private mainLinearLayout:Landroid/widget/LinearLayout;

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

.field private scale1:F

.field private scrollY:F

.field secondFingerX_new:F

.field secondFingerX_old:F

.field secondFingerY_new:F

.field secondFingerY_old:F

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field private totalEmailPages:I

.field private totalHeightY:I

.field private totalHeightY_changed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    .line 830
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    .line 834
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 835
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 213
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 214
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    .line 217
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    .line 218
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    .line 249
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 252
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    .line 253
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    .line 255
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity$1;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 665
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$4;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mHandler:Landroid/os/Handler;

    .line 829
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    .line 842
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 984
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 985
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 987
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 988
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 990
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 991
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 993
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 994
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1039
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->ZOOM_STEP:F

    .line 1040
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MAX_TEXT_ZOOM_LEVEL:F

    .line 1041
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MIN_TEXT_ZOOM_LEVEL:F

    .line 1091
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->POINTER_COUNT:I

    .line 1166
    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1167
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    .line 1380
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1381
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_TOP:I

    .line 1382
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_KEEP_LATEST_POS:I

    .line 2243
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$13;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 3195
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    return-void
.end method

.method private LogForMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 975
    const/4 v1, 0x0

    .line 976
    .local v1, size:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 980
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogForMotionEvent ev["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageStatusIconsArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 3431
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3432
    return-void
.end method

.method private clearArrayListsForSinglePage()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1377
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 346
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 367
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModel(), msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 377
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [1] use mMsgItem.mSlideshow"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [2] load from createFromMessageUri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1851
    const/4 v0, 0x0

    .line 1852
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1854
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1855
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1871
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1876
    :goto_0
    return-object v0

    .line 1867
    :catch_0
    move-exception v2

    .line 1871
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1872
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1870
    :catchall_0
    move-exception v2

    .line 1871
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1874
    :goto_1
    throw v2

    .line 1872
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private decideModeForZoom()I
    .locals 8

    .prologue
    .line 1095
    const/4 v4, -0x1

    .line 1098
    .local v4, retVal:I
    const/4 v3, 0x0

    .line 1099
    .local v3, distancePrevious:F
    const/4 v2, 0x0

    .line 1102
    .local v2, distanceCurrent:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    sub-float v0, v5, v6

    .line 1103
    .local v0, dis_x:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    sub-float v1, v5, v6

    .line 1105
    .local v1, dis_y:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 1107
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    sub-float v0, v5, v6

    .line 1108
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    sub-float v1, v5, v6

    .line 1110
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 1112
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distancePrevious="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",distanceCurrent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 1115
    const/4 v4, -0x1

    .line 1127
    :goto_0
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decideModeForZoom, retVal ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_1
    return v4

    .line 1118
    :cond_2
    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    .line 1119
    const/4 v4, 0x0

    goto :goto_0

    .line 1120
    :cond_3
    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    .line 1121
    const/4 v4, 0x1

    goto :goto_0

    .line 1123
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private drawTitle_Subject()V
    .locals 5

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v4, "mms"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateActionBarTitle()V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method private dumpLogs(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 806
    const-string v0, "Mms/MmsSinglePageActivity"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method private enqueueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1011
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1012
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_0
    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1036
    :cond_1
    :goto_0
    return-void

    .line 1017
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1020
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 1021
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 1024
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 1025
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 1029
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 1030
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1033
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() firstFingerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstFingerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private exitMmsSinglePageActivity()V
    .locals 4

    .prologue
    .line 3095
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3096
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$17;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 3104
    :goto_0
    return-void

    .line 3102
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0
.end method

.method private findCurrentScrollPos()V
    .locals 7

    .prologue
    .line 953
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    .line 954
    const v4, 0x7f0e01ac

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 956
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    .line 959
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    .line 960
    const v4, 0x7f0e01ad

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 961
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 962
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 964
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 965
    .local v3, viewObject:Landroid/view/View;
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 969
    .end local v3           #viewObject:Landroid/view/View;
    :cond_1
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findCurrentScrollPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",totalHeightY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_2
    return-void
.end method

.method private findFirstVisibleTextView()V
    .locals 8

    .prologue
    .line 1173
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v5, :cond_0

    .line 1174
    const v5, 0x7f0e01ac

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1176
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    .line 1178
    const v5, 0x7f0e01ad

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1179
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1180
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_1
    const/4 v2, 0x0

    .line 1183
    .local v2, i:I
    const/4 v1, 0x0

    .line 1185
    .local v1, heightSum:F
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 1186
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1191
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    if-lez v2, :cond_4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    .line 1192
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #1 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_2
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1208
    .end local v4           #viewObject:Landroid/view/View;
    :cond_3
    :goto_1
    return-void

    .line 1196
    .restart local v4       #viewObject:Landroid/view/View;
    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.getHeight()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1198
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v2, :cond_7

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    .line 1199
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #2 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_6
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    goto :goto_1

    .line 1203
    :cond_7
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_8

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", heightSum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v4           #viewObject:Landroid/view/View;
    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1207
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [not found T_T] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4
    .parameter "boxId"

    .prologue
    .line 3339
    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoxUriFromBoxId, boxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const/4 v0, 0x0

    .line 3342
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 3368
    :goto_0
    return-object v0

    .line 3345
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 3346
    goto :goto_0

    .line 3349
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 3350
    goto :goto_0

    .line 3353
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 3354
    goto :goto_0

    .line 3357
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 3358
    goto :goto_0

    .line 3361
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 3362
    goto :goto_0

    .line 3342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 614
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 616
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 646
    if-eqz v3, :cond_0

    .line 647
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_0
    :goto_0
    return-object v2

    .line 619
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 622
    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$3;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity$3;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;IFZ)V

    .line 632
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 633
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 646
    :goto_1
    if-eqz v3, :cond_2

    .line 647
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 650
    goto :goto_0

    .line 637
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 638
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_2
    :try_start_3
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    const/4 v0, 0x0

    .line 643
    goto :goto_1

    .line 646
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    .line 647
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 646
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

    .line 642
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 637
    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method private getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 3
    .parameter "model"

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 746
    .local v0, contentType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 749
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessageInformationFromIntent()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    .line 459
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    .line 461
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    const-string v2, "requestLockedMessageView"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    .line 465
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    const-string v2, "requestReservedMessageView"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    .line 469
    :cond_1
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    .line 476
    :goto_0
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    .line 478
    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    .line 479
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_3

    .line 480
    sget-object v2, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    .line 486
    :goto_1
    return-void

    .line 473
    :cond_2
    iput-boolean v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    goto :goto_0

    .line 482
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1

    .line 484
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 6

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 498
    .local v2, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, preSubject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    if-eqz v2, :cond_2

    .line 502
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    .end local v1           #preSubject:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 504
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_2
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v1           #preSubject:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    return-object v0
.end method

.method private handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 3
    .parameter "e"
    .parameter "intent"

    .prologue
    .line 3377
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3389
    return-void
.end method

.method private hasTopText(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    const/4 v0, 0x1

    .line 397
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateTitleHeader_Subject()V
    .locals 1

    .prologue
    .line 489
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageStatusIconsArea;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 490
    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    .line 491
    const v0, 0x7f0e01aa

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mPageNo:Landroid/widget/TextView;

    .line 493
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 389
    const/16 v0, 0x5b

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAttachViewHeight:I

    .line 390
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAttachViewHeight:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioViewHeight:I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 394
    return-void
.end method

.method private initMotionEventForPinchZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 998
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 999
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 1001
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 1002
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 1004
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 1005
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1006
    return-void
.end method

.method private invokeRefreshTextArea()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1254
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1255
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    const-string v5, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_0
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1304
    :goto_0
    return-void

    .line 1260
    :cond_1
    const v4, 0x7f0e01ad

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1261
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1262
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeRefreshTextArea: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_2
    const/4 v1, 0x0

    .line 1281
    .local v1, i:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 1283
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1286
    .local v3, viewObject:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    .line 1289
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.isFocused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1281
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1299
    .end local v3           #viewObject:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_6

    .line 1300
    const v4, 0x7f0e01ac

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1302
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    float-to-int v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private invokeResizeTextArea()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x4234

    const/high16 v9, 0x4120

    const/high16 v8, 0x3f80

    .line 1046
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v5

    if-ne v5, v11, :cond_2

    .line 1047
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    const-string v6, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1089
    :cond_1
    return-void

    .line 1052
    :cond_2
    const v5, 0x7f0e01ad

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1053
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1054
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeResizeTextArea: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_3
    const/4 v1, 0x0

    .line 1057
    .local v1, i:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v4

    .line 1059
    .local v4, zoomMode:I
    if-nez v4, :cond_8

    .line 1060
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1061
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_4

    .line 1062
    iput v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1063
    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_UP:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_5
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1075
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1078
    .local v3, viewObject:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v1, :cond_7

    .line 1081
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.isFocused="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1073
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1064
    .end local v3           #viewObject:Landroid/view/View;
    :cond_8
    if-ne v4, v11, :cond_1

    .line 1065
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1066
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_9

    .line 1067
    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1068
    :cond_9
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_DOWN:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeResizeTextAreaOnlySelectedItem()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4234

    const/high16 v8, 0x4120

    const/high16 v7, 0x3f80

    .line 1212
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v4

    if-ne v4, v10, :cond_2

    .line 1213
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1250
    :cond_1
    :goto_0
    return-void

    .line 1218
    :cond_2
    const v4, 0x7f0e01ad

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1219
    .local v1, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1220
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_3
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-ltz v4, :cond_1

    .line 1225
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v3

    .line 1227
    .local v3, zoomMode:I
    if-nez v3, :cond_7

    .line 1228
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1229
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 1230
    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1231
    :cond_4
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_UP:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_5
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1244
    .local v2, viewObject:Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-lez v4, :cond_1

    .line 1247
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_6
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #viewObject:Landroid/view/View;
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1232
    :cond_7
    if-ne v3, v10, :cond_1

    .line 1233
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1234
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    .line 1235
    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1236
    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_DOWN:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isExitCase()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3457
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3458
    :cond_0
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    :goto_0
    return v0

    .line 3462
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3464
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3468
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 3472
    const/4 v0, 0x0

    .line 3473
    .local v0, msgUri:Landroid/net/Uri;
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v1, :cond_0

    .line 3474
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3477
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 3476
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 3482
    const/4 v7, 0x0

    .line 3483
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3485
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 3495
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 3489
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 3491
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3494
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3495
    .restart local v8       #result:I
    goto :goto_0

    .line 3491
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isValidSlideShow()Z
    .locals 4

    .prologue
    .line 354
    const/4 v0, 0x1

    .line 355
    .local v0, retVal:Z
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_3

    .line 356
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[1] mMsgItem=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 362
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSlideShow(),[3] retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_2
    return v0

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    .line 359
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[2] mMsgItem.mSlideshow=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPart(Landroid/content/Context;JLandroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 12
    .parameter "context"
    .parameter "msgId"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 1812
    const/4 v2, 0x0

    .line 1814
    .local v2, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v9, :cond_1

    .line 1815
    sget-object v9, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 1823
    :goto_0
    if-nez v2, :cond_2

    move-object v5, v8

    .line 1844
    :cond_0
    :goto_1
    return-object v5

    .line 1818
    :cond_1
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1820
    :catch_0
    move-exception v3

    .line 1821
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1827
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1828
    .local v1, UriStringSrc:Ljava/lang/String;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),UriStringSrc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 1831
    .local v6, partNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1832
    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1833
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 1834
    .local v7, partUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, UriStringPart:Ljava/lang/String;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),part.getDataUri()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1831
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1843
    .end local v0           #UriStringPart:Ljava/lang/String;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #partUri:Landroid/net/Uri;
    :cond_4
    const-string v9, "Mms/MmsSinglePageActivity"

    const-string v10, "loadPart(),part not found : should not reach here"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 1844
    goto/16 :goto_1
.end method

.method private moveSmsView(Z)V
    .locals 19
    .parameter "bFlicktoNext"

    .prologue
    .line 2934
    const/4 v12, 0x0

    .line 2935
    .local v12, msgCount:I
    const/16 v17, 0x0

    .line 2936
    .local v17, notiIndMmsCount:I
    const/4 v9, 0x0

    .line 2937
    .local v9, curPos:I
    const/16 v16, 0x0

    .line 2943
    .local v16, nextPos:I
    const/4 v8, 0x0

    .line 2945
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2946
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 2947
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 3089
    :cond_0
    :goto_0
    return-void

    .line 2949
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2967
    :goto_1
    if-eqz v8, :cond_0

    .line 2970
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2972
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 2973
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2950
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    .line 2951
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2952
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2954
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 2955
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_4

    .line 2956
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2957
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 2961
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2962
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 2964
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 2977
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2978
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v9, v12, :cond_6

    .line 2980
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2990
    :cond_6
    move/from16 v16, v9

    .line 2992
    if-eqz p1, :cond_9

    .line 2993
    if-nez v9, :cond_8

    .line 2994
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 2995
    add-int/lit8 v16, v12, -0x1

    .line 3000
    :goto_3
    const v18, 0x7f040004

    .line 3001
    .local v18, startSlideAnim:I
    const v10, 0x7f040005

    .line 3014
    .local v10, endSlideAnim:I
    :goto_4
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3015
    .local v15, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3021
    .local v13, nextMsgId:J
    :goto_5
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3022
    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_e

    .line 3023
    if-eqz p1, :cond_c

    .line 3024
    if-nez v16, :cond_b

    .line 3025
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 3026
    add-int/lit8 v16, v12, -0x1

    .line 3040
    :goto_6
    add-int/lit8 v17, v17, 0x1

    .line 3041
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3042
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_5

    .line 2984
    .end local v10           #endSlideAnim:I
    .end local v13           #nextMsgId:J
    .end local v15           #nextMsgType:Ljava/lang/String;
    .end local v18           #startSlideAnim:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2985
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2997
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2998
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 3003
    :cond_9
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_a

    .line 3004
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3005
    const/16 v16, 0x0

    .line 3010
    :goto_7
    const v18, 0x7f040002

    .line 3011
    .restart local v18       #startSlideAnim:I
    const v10, 0x7f040003

    .restart local v10       #endSlideAnim:I
    goto :goto_4

    .line 3007
    .end local v10           #endSlideAnim:I
    .end local v18           #startSlideAnim:I
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3008
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 3028
    .restart local v10       #endSlideAnim:I
    .restart local v13       #nextMsgId:J
    .restart local v15       #nextMsgType:Ljava/lang/String;
    .restart local v18       #startSlideAnim:I
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3029
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 3032
    :cond_c
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 3033
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3034
    const/16 v16, 0x0

    goto :goto_6

    .line 3036
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3037
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 3047
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3049
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 3051
    const/4 v11, 0x0

    .line 3052
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3053
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3054
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3055
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3057
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3058
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 3059
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3060
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 3061
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3074
    :cond_11
    :goto_8
    move/from16 v0, v16

    if-eq v0, v9, :cond_15

    .line 3075
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    .line 3076
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    .line 3077
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    .line 3078
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$16;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 3062
    :cond_12
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3063
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3064
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3065
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3067
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3068
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_14

    .line 3069
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3070
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 3071
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    .line 3085
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3086
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 3087
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 21
    .parameter "bFlicktoNext"

    .prologue
    .line 3203
    const/4 v14, 0x0

    .line 3204
    .local v14, msgCount:I
    const/16 v19, 0x0

    .line 3205
    .local v19, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 3206
    .local v10, curPos:I
    const/16 v18, 0x0

    .line 3211
    .local v18, nextPos:I
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    .line 3212
    .local v8, boxId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    .line 3213
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 3336
    :cond_0
    :goto_0
    return-void

    .line 3216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3218
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 3221
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 3223
    const/4 v2, 0x1

    if-ge v14, v2, :cond_2

    .line 3224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3228
    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    .line 3229
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3233
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3234
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    if-ge v10, v14, :cond_4

    .line 3236
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3246
    :cond_4
    move/from16 v18, v10

    .line 3248
    if-eqz p1, :cond_7

    .line 3249
    if-nez v10, :cond_6

    .line 3250
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 3251
    add-int/lit8 v18, v14, -0x1

    .line 3256
    :goto_2
    const v20, 0x7f040004

    .line 3257
    .local v20, startSlideAnim:I
    const v11, 0x7f040005

    .line 3270
    .local v11, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3271
    .local v17, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3277
    .local v15, nextMsgId:J
    const/4 v13, -0x1

    .line 3278
    .local v13, mmsMsgType:I
    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3279
    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 3280
    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /MESSAGE_TYPE_NOTIFICATION_IND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    const/16 v2, 0x82

    if-ne v13, v2, :cond_c

    .line 3282
    if-eqz p1, :cond_a

    .line 3283
    if-nez v18, :cond_9

    .line 3284
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 3285
    add-int/lit8 v18, v14, -0x1

    .line 3299
    :goto_5
    add-int/lit8 v19, v19, 0x1

    .line 3300
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3301
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_4

    .line 3240
    .end local v11           #endSlideAnim:I
    .end local v13           #mmsMsgType:I
    .end local v15           #nextMsgId:J
    .end local v17           #nextMsgType:Ljava/lang/String;
    .end local v20           #startSlideAnim:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3241
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3253
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3254
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 3259
    :cond_7
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_8

    .line 3260
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3261
    const/16 v18, 0x0

    .line 3266
    :goto_6
    const v20, 0x7f040002

    .line 3267
    .restart local v20       #startSlideAnim:I
    const v11, 0x7f040003

    .restart local v11       #endSlideAnim:I
    goto :goto_3

    .line 3263
    .end local v11           #endSlideAnim:I
    .end local v20           #startSlideAnim:I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3264
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 3287
    .restart local v11       #endSlideAnim:I
    .restart local v13       #mmsMsgType:I
    .restart local v15       #nextMsgId:J
    .restart local v17       #nextMsgType:Ljava/lang/String;
    .restart local v20       #startSlideAnim:I
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3288
    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    .line 3291
    :cond_a
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 3292
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3293
    const/16 v18, 0x0

    goto :goto_5

    .line 3295
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3296
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3306
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3308
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 3310
    const/4 v12, 0x0

    .line 3311
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3312
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3313
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3314
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3321
    :cond_d
    :goto_7
    move/from16 v0, v18

    if-eq v0, v10, :cond_f

    .line 3322
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    .line 3323
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    .line 3324
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    .line 3325
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$22;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 3315
    :cond_e
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3316
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3317
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3318
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3332
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 3334
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private presentAttachmentList()V
    .locals 4

    .prologue
    .line 1601
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findAttachmentList(JZ)Ljava/util/ArrayList;

    .line 1604
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1605
    .local v0, lenOfAttah:I
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentAttachmentList:lenOfAttah="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_0
    if-lez v0, :cond_1

    .line 1608
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentListView(Ljava/util/ArrayList;)V

    .line 1611
    :cond_1
    return-void
.end method

.method private presentModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 12
    .parameter "mSlideShowModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    const/4 v7, 0x0

    .line 1433
    .local v7, slidePageIndex:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    .line 1434
    .local v8, slideTotalNum:I
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:presentModel() slideTotalNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_10

    .line 1438
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 1439
    .local v6, slideModel:Lcom/android/mms/model/SlideModel;
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:[1]slideModel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :cond_1
    const/4 v3, 0x0

    .line 1448
    .local v3, mTextModel:Lcom/android/mms/model/TextModel;
    const/4 v2, 0x0

    .line 1449
    .local v2, mImageModel:Lcom/android/mms/model/ImageModel;
    const/4 v4, 0x0

    .line 1450
    .local v4, mVideoModel:Lcom/android/mms/model/VideoModel;
    const/4 v1, 0x0

    .line 1451
    .local v1, mAudioModel:Lcom/android/mms/model/AudioModel;
    if-eqz v6, :cond_6

    .line 1452
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 1453
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v5

    .line 1454
    check-cast v3, Lcom/android/mms/model/TextModel;

    goto :goto_1

    .line 1455
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v5

    .line 1456
    check-cast v2, Lcom/android/mms/model/ImageModel;

    goto :goto_1

    .line 1457
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v4, v5

    .line 1458
    check-cast v4, Lcom/android/mms/model/VideoModel;

    goto :goto_1

    .line 1459
    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v5

    .line 1460
    check-cast v1, Lcom/android/mms/model/AudioModel;

    goto :goto_1

    .line 1466
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1467
    if-eqz v3, :cond_8

    .line 1468
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_7

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_7
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    .line 1472
    :cond_8
    if-eqz v2, :cond_a

    .line 1473
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mImageModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_9
    invoke-virtual {p0, v2, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentImage(Lcom/android/mms/model/ImageModel;I)V

    .line 1476
    :cond_a
    if-eqz v4, :cond_c

    .line 1477
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_b

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mVideoModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :cond_b
    invoke-virtual {p0, v4, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentVideo(Lcom/android/mms/model/VideoModel;I)V

    .line 1480
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1481
    if-eqz v3, :cond_e

    .line 1482
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_d

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :cond_d
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    .line 1487
    :cond_e
    if-eqz v1, :cond_f

    .line 1488
    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V

    .line 1437
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1491
    .end local v1           #mAudioModel:Lcom/android/mms/model/AudioModel;
    .end local v2           #mImageModel:Lcom/android/mms/model/ImageModel;
    .end local v3           #mTextModel:Lcom/android/mms/model/TextModel;
    .end local v4           #mVideoModel:Lcom/android/mms/model/VideoModel;
    .end local v6           #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_10
    return-void
.end method

.method private presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V
    .locals 5
    .parameter "mSlideShowModel"
    .parameter "len"

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->clearArrayListsForSinglePage()V

    .line 1322
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addMmsDetailInfoToSlidePresenter()V

    .line 1328
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentModel(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAttachmentList()V

    .line 1340
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$5;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    return-void

    .line 1329
    :catch_0
    move-exception v0

    .line 1331
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/MmsSinglePageActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 3435
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3436
    return-void
.end method

.method private saveAttachFile(Landroid/net/Uri;)V
    .locals 1
    .parameter "partUri"

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/mms/content/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 2527
    return-void
.end method

.method private saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 2531
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2532
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    .line 2536
    .local v0, partUri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    .line 2537
    return-void

    .line 2534
    .end local v0           #partUri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #partUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "attachmentModel"

    .prologue
    .line 1662
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 1663
    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "audioModel"

    .prologue
    .line 1657
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    .line 1659
    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1642
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticClickUri:Landroid/net/Uri;

    .line 1644
    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter "imageModel"

    .prologue
    .line 1666
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticImageModel:Lcom/android/mms/model/ImageModel;

    .line 1667
    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .parameter "slideindex"

    .prologue
    .line 1647
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :cond_0
    sput p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticSlideIndex:I

    .line 1649
    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "videoModel"

    .prologue
    .line 1652
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    .line 1654
    return-void
.end method

.method private touchListener(IIII)V
    .locals 7
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const-wide/16 v5, 0x0

    .line 2877
    const/4 v0, 0x0

    .line 2878
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 2879
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 2881
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-nez v3, :cond_2

    .line 2885
    if-gez v1, :cond_1

    .line 2888
    const/4 v0, 0x1

    .line 2904
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2905
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 2907
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2908
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2910
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->navigateMsgFolderViewMode(Z)V

    .line 2931
    :cond_0
    :goto_1
    return-void

    .line 2891
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2899
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    goto :goto_1

    .line 2913
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    .line 2917
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    .line 2919
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v3, :cond_0

    .line 2920
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1
.end method

.method private updateActionBarTitle()V
    .locals 5

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v4, "mms"

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getSenderString(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    .line 445
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 449
    :cond_0
    return-void
.end method

.method private updateFontsizeForTextAreaVolumeKey()V
    .locals 8

    .prologue
    .line 2845
    const v5, 0x7f0e01ad

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2846
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2847
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshFontsizeForTextAreaVolumeKey: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_0
    const/4 v2, 0x0

    .line 2851
    .local v2, i:I
    const/4 v5, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    float-to-int v1, v5

    .line 2854
    .local v1, fontSize:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2856
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2859
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    if-lez v2, :cond_2

    .line 2862
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    :cond_1
    check-cast v4, Landroid/widget/TextView;

    .end local v4           #viewObject:Landroid/view/View;
    const/4 v5, 0x1

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2854
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2872
    :cond_3
    return-void
.end method

.method private updatePageNo()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mPageNo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentEmailPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalEmailPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2340
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :cond_0
    if-eqz p1, :cond_1

    .line 2345
    move-object v0, p1

    .line 2346
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v1, 0x0

    .line 2347
    .local v1, index:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2348
    .local v2, size:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    .line 2348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2353
    .end local v0           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v1           #index:I
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 18
    .parameter "attachmentSaved"

    .prologue
    .line 2356
    sget-boolean v13, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v13, :cond_0

    const-string v13, "kkahn/Mms/MmsSinglePageActivity"

    const-string v14, "addAttachmentOneView"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_0
    move-object/from16 v3, p1

    .line 2360
    .local v3, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2361
    .local v7, factory:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2362
    .local v4, attachmentInfo:Landroid/view/View;
    const v13, 0x7f03000e

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2366
    const v13, 0x7f0e0027

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2367
    .local v2, attachName:Landroid/widget/TextView;
    const v13, 0x7f0e0026

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2371
    .local v1, attachImage:Landroid/widget/ImageView;
    const v13, 0x7f0e0029

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 2375
    .local v12, saveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .line 2377
    .local v10, lastIndex_attachmentInfoArr:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 2380
    .local v8, height:I
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    .line 2383
    .local v11, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2384
    .local v6, extension:Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 2385
    .local v9, index:I
    if-ltz v9, :cond_1

    .line 2386
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2388
    :cond_1
    const-string v13, "dm"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2389
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".dcf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2393
    :cond_2
    const-string v13, "cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "Cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2394
    :cond_3
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2397
    :cond_4
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2400
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 2401
    .local v5, contentType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 2402
    const-string v13, "text/x-vCard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2403
    :cond_5
    const v13, 0x7f0200fe

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2417
    :cond_6
    :goto_0
    const v13, 0x7f0e01ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAttachViewHeight:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2423
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 2424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/high16 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2427
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2430
    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 2436
    new-instance v13, Lcom/android/mms/ui/MmsSinglePageActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$14;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2515
    new-instance v13, Lcom/android/mms/ui/MmsSinglePageActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$15;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2523
    return-void

    .line 2404
    :cond_8
    const-string v13, "text/x-vCalendar"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2405
    const v13, 0x7f0200fd

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2406
    :cond_9
    const-string v13, "text/x-vNote"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2407
    const v13, 0x7f020107

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2408
    :cond_a
    const-string v13, "text/x-vtodo"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2409
    const v13, 0x7f0200fd

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2411
    :cond_b
    const v13, 0x7f0200fc

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
    .locals 13
    .parameter "audio"
    .parameter "name"
    .parameter
    .parameter "audioModel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/android/mms/model/AudioModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1992
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1996
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f03000e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    .line 1997
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2001
    .local v4, height:I
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0e0027

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2002
    .local v1, audioName:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0e0026

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2003
    .local v0, audioImage:Landroid/widget/ImageView;
    const v8, 0x7f0200fb

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2011
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0e0029

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 2017
    .local v7, saveButton:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    .line 2018
    .local v2, extension:Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 2019
    .local v5, index:I
    if-ltz v5, :cond_0

    .line 2020
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2022
    :cond_0
    const-string v8, "dm"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {p2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2027
    :cond_1
    const-string v8, "cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2028
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2031
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2033
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_4

    .line 2034
    const v8, 0x7f0e01ad

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2036
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    iget v12, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioViewHeight:I

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2038
    iget-boolean v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 2039
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/high16 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2042
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2044
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2045
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2046
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    invoke-static {p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 2051
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAudioModel(Lcom/android/mms/model/AudioModel;)V

    .line 2054
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$11;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$11;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2176
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$12;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$12;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2186
    return-void
.end method

.method public addMmsDetailInfoToSlidePresenter()V
    .locals 5

    .prologue
    .line 1517
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "addMmsDetailInfoToSlidePresenter"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_0
    const-string v0, ""

    .line 1520
    .local v0, displayText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1521
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1524
    .local v1, mTextViewDetail:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1536
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    const v3, 0x7f0e01ad

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1547
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1550
    return-void
.end method

.method public checkTextSelectorState()Z
    .locals 8

    .prologue
    .line 1134
    const/4 v3, 0x0

    .line 1136
    .local v3, retVal:Z
    const v5, 0x7f0e01ad

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1137
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1138
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTextSelectorState: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    const/4 v1, 0x0

    .line 1141
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1143
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1146
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-lez v1, :cond_3

    .line 1149
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1154
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isSelected() TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_2
    const/4 v3, 0x1

    .line 1141
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v4           #viewObject:Landroid/view/View;
    :cond_4
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 880
    .local v0, action:I
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent(),action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 940
    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_2

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent(), bMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bMultiTouchFinished="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_2
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-eq v2, v1, :cond_3

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    if-ne v2, v1, :cond_d

    .line 942
    :cond_3
    sput-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    .line 947
    :goto_1
    return v1

    .line 885
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    goto :goto_0

    .line 891
    :pswitch_2
    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 892
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_4

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_POINTER_DOWN], bMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_4
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 894
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initMotionEventForPinchZoom()V

    .line 897
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findFirstVisibleTextView()V

    goto :goto_0

    .line 903
    :pswitch_3
    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    .line 904
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_6

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_POINTER_UP], bMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_6
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 907
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeRefreshTextArea()V

    goto/16 :goto_0

    .line 911
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    .line 913
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_8

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_UP]startY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_8
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 916
    :cond_9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-eq v2, v1, :cond_a

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-nez v2, :cond_1

    .line 918
    :cond_a
    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->touchListener(IIII)V

    goto/16 :goto_0

    .line 924
    :pswitch_5
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_b

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_MOVE],bMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_b
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 926
    :cond_c
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-ne v2, v1, :cond_1

    .line 927
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->enqueueMotionEvent(Landroid/view/MotionEvent;)V

    .line 929
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeResizeTextAreaOnlySelectedItem()V

    goto/16 :goto_0

    .line 947
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findAttachmentList(JZ)Ljava/util/ArrayList;
    .locals 2
    .parameter "msgId"
    .parameter "isSpam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    .line 1616
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1619
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "findAttachmentList > No Attachment"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 3406
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3408
    .local v1, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3409
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 3410
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3414
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3397
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isAvailableDirectCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3398
    const/4 v0, 0x0

    .line 3400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 3454
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3419
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3427
    :cond_0
    :goto_0
    return v0

    .line 3422
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3427
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;Z)V
    .locals 7
    .parameter "callback"
    .parameter "isExit"

    .prologue
    .line 3107
    monitor-enter p0

    :try_start_0
    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "markAsRead()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v3, :cond_1

    .line 3109
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3110
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3111
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3112
    .local v0, SpammsgUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3113
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3114
    if-eqz p2, :cond_0

    .line 3115
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3118
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3119
    if-eqz p2, :cond_2

    .line 3120
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$18;

    invoke-direct {v6, p0, v0, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$18;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    .end local v0           #SpammsgUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 3129
    .restart local v0       #SpammsgUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3130
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3131
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3107
    .end local v0           #SpammsgUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3134
    .restart local v0       #SpammsgUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz p2, :cond_4

    .line 3135
    :try_start_2
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$19;

    invoke-direct {v6, p0, v0, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$19;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 3144
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3145
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3146
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3150
    .end local v0           #SpammsgUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_5
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3151
    .local v1, msgUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3152
    .restart local v2       #values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3153
    if-eqz p2, :cond_6

    .line 3154
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3157
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3158
    if-eqz p2, :cond_7

    .line 3159
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$20;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$20;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 3168
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3169
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3173
    :cond_8
    if-eqz p2, :cond_9

    .line 3174
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$21;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$21;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3183
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3184
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3185
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3190
    .end local v1           #msgUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2641
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 2643
    packed-switch p2, :pswitch_data_0

    .line 2663
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    .line 2667
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2668
    :goto_0
    return-void

    .line 2647
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 2643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findCurrentScrollPos()V

    .line 1355
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1357
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$6;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1364
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1365
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1368
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 269
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 271
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->requestWindowFeature(I)Z

    .line 275
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    .line 279
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->setContentView(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getMessageInformationFromIntent()V

    .line 281
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 343
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 290
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 301
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isValidSlideShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 302
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 294
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->inflateTitleHeader_Subject()V

    .line 308
    const v0, 0x7f0e01ad

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mainLinearLayout:Landroid/widget/LinearLayout;

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no of slides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->init()V

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V

    .line 332
    const/4 v0, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    .line 335
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createDirectCallingManager()V

    .line 337
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$2;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v8

    .line 321
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 3500
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3503
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 3504
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 3505
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 3506
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2542
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown(),keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2545
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 2601
    :cond_1
    :goto_0
    return v3

    .line 2548
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 2601
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 2552
    :pswitch_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2558
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2559
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2561
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 2563
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2564
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2565
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2568
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    goto :goto_0

    .line 2577
    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2583
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2584
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2586
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 2588
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2589
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2593
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    goto :goto_0

    .line 2548
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2606
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    sparse-switch p1, :sswitch_data_0

    .line 2635
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 2611
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    .line 2612
    const/4 v0, 0x1

    goto :goto_1

    .line 2614
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2623
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2607
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/16 v5, 0x1d

    const/4 v1, 0x1

    .line 558
    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 567
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v2, :cond_5

    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 569
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 570
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    const-string v2, "msgId"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 581
    const-string v2, "thread_id"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 582
    const-string v2, "fromMmsSinglePageActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_1

    .line 584
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 587
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 592
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    .line 594
    .local v1, result:Z
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_4

    .line 595
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 607
    .end local v1           #result:Z
    :cond_3
    :goto_0
    return v1

    .line 563
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    goto :goto_0

    .line 597
    .restart local v1       #result:Z
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 599
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    .line 600
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 607
    .end local v1           #result:Z
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 784
    const-string v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/android/mms/util/DirectCallingManager;->pause()V

    .line 789
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 532
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 540
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-nez v0, :cond_1

    .line 541
    const/16 v0, 0x64

    const v1, 0x7f0a006d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 772
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 774
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 780
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 408
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 427
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V

    .line 422
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addRecipientsListener()V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 793
    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 794
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 795
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 801
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->removeRecipientsListener()V

    .line 802
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3448
    :goto_0
    return-void

    .line 3443
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$23;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V

    .line 1514
    return-void
.end method

.method protected presentImage(Lcom/android/mms/model/ImageModel;I)V
    .locals 2
    .parameter "image"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1499
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V

    .line 1500
    return-void
.end method

.method protected presentText(Lcom/android/mms/model/TextModel;I)V
    .locals 6
    .parameter "text"
    .parameter "slideIndex"

    .prologue
    .line 1628
    const/4 v3, 0x0

    .line 1629
    .local v3, showAttachment:Z
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, msgText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1631
    .local v2, notShownStrOne:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1633
    .local v1, notShownStrMore:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1634
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/model/VideoModel;I)V
    .locals 3
    .parameter "video"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1505
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020273

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1509
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V

    .line 1510
    return-void
.end method

.method public setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
    .locals 11
    .parameter "name"
    .parameter "imageModel"
    .parameter "slideIndex"

    .prologue
    .line 1670
    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImageWithFrame/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_0
    const v8, 0x7f0e01ad

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1674
    .local v5, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1675
    .local v2, factory:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1676
    .local v3, imageArea:Landroid/view/View;
    const v8, 0x7f03005e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1677
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1680
    const v8, 0x7f0e01a5

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1682
    .local v4, mImageView:Landroid/widget/ImageView;
    const v8, 0x7f0e01a7

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1684
    .local v6, saveButton:Landroid/widget/ImageButton;
    const v8, 0x7f0e01a6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1685
    .local v7, videoPlayButton:Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1690
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1691
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1692
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020272

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1695
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1702
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1707
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 1708
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    .line 1710
    invoke-static {p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageModel(Lcom/android/mms/model/ImageModel;)V

    .line 1713
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$7;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$7;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1774
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$8;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$8;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    return-void

    .line 1696
    :catch_0
    move-exception v1

    .line 1697
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "Mms/MmsSinglePageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1698
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 1699
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    .line 1385
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    .line 1386
    const v4, 0x7f0e01ac

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1388
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1426
    :cond_1
    :goto_0
    return-void

    .line 1390
    :pswitch_0
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setScrollPosition**SCROLL_MODE_TOP]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1392
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "Mms/MmsSinglePageActivity"

    const-string v5, "[setScrollPosition]mMainScrollView.scrollTo(0, 0)"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_3
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :pswitch_1
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    if-lez v4, :cond_5

    .line 1402
    iput v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    .line 1403
    const v4, 0x7f0e01ad

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1404
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1405
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1407
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1408
    .local v3, viewObject:Landroid/view/View;
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    .line 1405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1411
    .end local v3           #viewObject:Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    .line 1412
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    .line 1414
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #mainLinear:Landroid/widget/LinearLayout;
    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScrollPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",totalHeightY_changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_6
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setScrollPosition**SCROLL_MODE_KEEP_LATEST_POS]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1419
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setScrollPosition]mMainScrollView.scrollTo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "slideIndex"

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x1

    .line 2190
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setTextWithTextView(),slideIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntext***start***\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntext***end***\n,isAttachment="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_0
    const v3, 0x7f0e01ad

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2195
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2197
    .local v1, mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2199
    if-nez p3, :cond_1

    .line 2200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2201
    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 2205
    :cond_1
    sget v0, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 2208
    .local v0, density:F
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2209
    const/4 v3, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2213
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2214
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2215
    const-string v3, "#00AEEF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2217
    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2218
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    const v3, -0xffff01

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2222
    :cond_2
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 2229
    const-string v3, "Direct"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2231
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2232
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 2236
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2238
    return-void

    .line 2211
    :cond_4
    const/high16 v3, 0x41a0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
    .locals 11
    .parameter "name"
    .parameter "bitmap"
    .parameter "slideIndex"
    .parameter "videoModel"

    .prologue
    const/4 v10, 0x0

    .line 1881
    sget-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImage/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :cond_0
    const v7, 0x7f0e01ad

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1885
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1886
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1887
    .local v5, videoArea:Landroid/view/View;
    const v7, 0x7f03005e

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1888
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1891
    const v7, 0x7f0e01a5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1893
    .local v2, mImageView:Landroid/widget/ImageView;
    const v7, 0x7f0e01a7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1895
    .local v4, saveButton:Landroid/widget/ImageButton;
    const v7, 0x7f0e01a6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1896
    .local v6, videoPlayButton:Landroid/widget/ImageView;
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1899
    if-nez p2, :cond_1

    .line 1900
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020272

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1903
    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1916
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 1917
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    .line 1918
    invoke-static {p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoModel(Lcom/android/mms/model/VideoModel;)V

    .line 1921
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$9;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$9;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1979
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$10;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$10;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    return-void

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMessageLockIcon(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 522
    return-void
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1553
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const/4 v0, 0x1

    const-string v5, "m_type"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "msg_box"

    aput-object v5, v2, v0

    .line 1561
    .local v2, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1563
    .local v9, address:Ljava/lang/String;
    const-string v11, ""

    .line 1569
    .local v11, messageDetails:Ljava/lang/String;
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_1

    .line 1570
    sget-object v0, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1573
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1578
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 1580
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1581
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1592
    if-eqz v4, :cond_0

    .line 1593
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1597
    :cond_0
    :goto_1
    return-object v11

    .line 1572
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 1589
    .restart local v4       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 1590
    .local v10, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    if-eqz v4, :cond_0

    .line 1593
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1592
    .end local v10           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 1593
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

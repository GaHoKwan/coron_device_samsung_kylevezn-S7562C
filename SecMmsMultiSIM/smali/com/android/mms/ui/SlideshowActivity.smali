.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;
.implements Lcom/android/mms/ui/MessageViewerInterface;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final FINISH_PREVIEW:I = 0x1

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final REFRESH_PROGRESSBAR_DELAY:I = 0x64

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "Mms/SlideshowActivity"

.field static displayDensity:F

.field public static mLaunchMode:I

.field public static staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;


# instance fields
.field private endX:I

.field private endY:I

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEndSlideAnim:I

.field private mFinishHandler:Landroid/os/Handler;

.field private mFlick:Z

.field private mFromMmsSinglePageView:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerRefresh:Landroid/os/Handler;

.field private mHasDrmMedia:Z

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mIsAudioFocus:Z

.field protected mIsBlockMenu:Z

.field private mIsOnCall:Z

.field private mIsPreview:Z

.field private mIsSelectTextLaunch:Z

.field private mIsSpam:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mOptionItemSelected:Z

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

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

.field private mRefreshPlayButtons:Z

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mShowModel:Lcom/android/mms/model/SlideshowModel;

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilDocListenerAdded:Z

.field private mStartSlideAnim:I

.field private mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTopLayout:Landroid/widget/RelativeLayout;

.field private mWindowHasFocus:Z

.field private msgId:J

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 183
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 196
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 198
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 200
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 202
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 218
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 243
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    .line 262
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 266
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 268
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 270
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->update_seen:Z

    .line 276
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 287
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 317
    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsBlockMenu:Z

    .line 878
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$7;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1470
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 2346
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$18;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;

    .line 2359
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$19;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private UpdateActionBarTitleWithNumber(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2242
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2243
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v2, v4

    .line 2244
    .local v2, mIsLandscape:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->hasName()Z

    move-result v1

    .line 2246
    .local v1, hasname:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2247
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2250
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2251
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2253
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    if-eqz v1, :cond_1

    .line 2255
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 2257
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2258
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2260
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    if-eqz v2, :cond_1

    .line 2265
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v6, 0x4188

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2266
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x4140

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2271
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-void

    .end local v1           #hasname:Z
    .end local v2           #mIsLandscape:Z
    :cond_2
    move v2, v5

    .line 2243
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageStatusIconsArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideshowActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SlideshowActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    return-void
.end method

.method private accquireWakeLock()V
    .locals 2

    .prologue
    .line 2103
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "accquireWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2108
    return-void
.end method

.method private addEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 946
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "addEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 949
    :cond_0
    return-void
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 483
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 484
    return-void
.end method

.method private cancelAudioFocus()V
    .locals 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1492
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1494
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 1497
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "cancelAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cleanDrmStorage()V
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    if-eqz v0, :cond_0

    .line 1005
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 1007
    :cond_0
    return-void
.end method

.method private clearControllerBackPressed()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->clearBackPressed()V

    .line 1166
    :cond_0
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 449
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 790
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_3

    .line 791
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 796
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_4

    .line 797
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 798
    .local v1, slideCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 801
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 802
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 803
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ge v2, v3, :cond_0

    .line 804
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/SlideView;->setHasSound(Z)V

    .line 801
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    .end local v0           #i:I
    .end local v1           #slideCount:I
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0

    .line 813
    :cond_4
    return-void
.end method

.method private createPresenter(Lcom/android/mms/ui/SlideView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 714
    const-class v0, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, p0, p1, v1}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setPreviewState(Z)V

    .line 719
    :cond_0
    return-void
.end method

.method private drawTitle()V
    .locals 5

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v4, "mms"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 935
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initActionBar()V

    .line 940
    :goto_0
    return-void

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v3, "mms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getSenderString(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 1926
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1927
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 1935
    :goto_0
    return-void

    .line 1933
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2437
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2439
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2440
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_0
    return-object v0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2057
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2058
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2060
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 2061
    :try_start_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v5, "got query result null"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    if-eqz v3, :cond_0

    .line 2096
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2099
    :cond_0
    :goto_0
    return-object v2

    .line 2065
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2069
    new-instance v10, Lcom/android/mms/ui/SlideshowActivity$15;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SlideshowActivity$15;-><init>(Lcom/android/mms/ui/SlideshowActivity;IFZ)V

    .line 2078
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 2079
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2081
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_4

    .line 2083
    :try_start_2
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "message item not in cache, create new"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2087
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
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2095
    :goto_1
    if-eqz v3, :cond_2

    .line 2096
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 2099
    goto :goto_0

    .line 2088
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 2089
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_2
    :try_start_4
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2090
    const/4 v0, 0x0

    .line 2092
    goto :goto_1

    .line 2095
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    .line 2096
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 2095
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

    .line 2091
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

    .line 2088
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCallState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 671
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    .line 673
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 675
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 676
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    .line 679
    :cond_0
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-nez v3, :cond_1

    .line 680
    const-string v3, "phone"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 682
    .local v2, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 684
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    const-string v3, "Mms/SlideshowActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void

    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    move v3, v4

    .line 676
    goto :goto_0

    .line 688
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 690
    .local v0, e1:Landroid/os/RemoteException;
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    .line 691
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getDisplayDensity()V
    .locals 2

    .prologue
    .line 697
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 698
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 699
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 700
    return-void
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1832
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1833
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

    .line 1834
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

    .line 1835
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1836
    const/4 v0, 0x1

    .line 1837
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1838
    const/4 v1, 0x0

    .line 1839
    iget v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1844
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    .line 1845
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 1846
    :goto_1
    return v5

    .line 1845
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLCDWakeLock()V
    .locals 3

    .prologue
    .line 703
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 704
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 705
    const/16 v1, 0xa

    const-string v2, "MMS viewer LCD on wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 710
    :cond_0
    return-void
.end method

.method private getMessageInformationFromIntent()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 722
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "msgId"

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    .line 729
    const-string v3, "thread_id"

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    .line 731
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    const-string v3, "requestLockedMessageView"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    .line 737
    :cond_0
    const-string v3, "preview"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, previewing:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, "previewLaunch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    iput-boolean v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 744
    :goto_0
    const-string v3, "Extended"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const-string v3, "selectText"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, launchForSelectText:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v3, "selectTextLaunch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 749
    iput-boolean v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    .line 756
    .end local v1           #launchForSelectText:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v3, "isSpam"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    .line 758
    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_6

    .line 759
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v3, :cond_5

    .line 760
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 767
    :goto_2
    const-string v3, "fromMmsSinglePageActivity"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    .line 768
    const-string v3, "requestReservedMessageView"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    .line 771
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    const-string v3, "fromContactHistory"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_7

    .line 774
    sput v7, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    .line 784
    :cond_2
    :goto_3
    const-string v3, "Mms/SlideshowActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isSpam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fromSPage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void

    .line 741
    :cond_3
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    goto/16 :goto_0

    .line 751
    .restart local v1       #launchForSelectText:Ljava/lang/String;
    :cond_4
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    goto :goto_1

    .line 762
    .end local v1           #launchForSelectText:Ljava/lang/String;
    :cond_5
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_2

    .line 764
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_2

    .line 776
    :cond_7
    const-string v3, "fromFolderView"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_8

    .line 777
    const/4 v3, 0x2

    sput v3, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    goto :goto_3

    .line 779
    :cond_8
    const-string v3, "fromSearchListOnFolderView"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 780
    const/4 v3, 0x4

    sput v3, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    goto :goto_3
.end method

.method public static getStaticPresenter()Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2216
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2218
    .local v0, bar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 2219
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 2220
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2221
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 2222
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 2223
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 2224
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2225
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2226
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 2228
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$17;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$17;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2236
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2237
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->UpdateActionBarTitleWithNumber(Ljava/util/ArrayList;)V

    .line 2239
    return-void
.end method

.method private initMediaController()V
    .locals 2

    .prologue
    .line 891
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "initMediaController()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 895
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;)V

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setAnchorView(Landroid/widget/RelativeLayout;)V

    goto :goto_0
.end method

.method private isControllerBackPressed()Z
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getBackPressed()Z

    move-result v0

    .line 1159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExitCase()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 961
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_0
    return v0

    .line 966
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 968
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, msgUri:Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v1, :cond_0

    .line 978
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 981
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 980
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

    .line 986
    const/4 v7, 0x0

    .line 987
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 989
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 999
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 993
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 998
    const-string v0, "Mms/SlideshowActivity"

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

    .line 999
    .restart local v8       #result:I
    goto :goto_0

    .line 995
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private makeModelList()V
    .locals 6

    .prologue
    .line 817
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 821
    .local v0, size:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 822
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 823
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 824
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 830
    .end local v0           #size:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 826
    .restart local v0       #size:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_0
.end method

.method private moveSmsView(Z)V
    .locals 19
    .parameter "bFlicktoNext"

    .prologue
    .line 1669
    const/4 v12, 0x0

    .line 1670
    .local v12, msgCount:I
    const/16 v17, 0x0

    .line 1671
    .local v17, notiIndMmsCount:I
    const/4 v9, 0x0

    .line 1672
    .local v9, curPos:I
    const/16 v16, 0x0

    .line 1678
    .local v16, nextPos:I
    const/4 v8, 0x0

    .line 1679
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_2

    .line 1680
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 1681
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1702
    :goto_1
    if-eqz v8, :cond_0

    .line 1705
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1707
    const/4 v2, 0x1

    if-gt v12, v2, :cond_5

    .line 1708
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1684
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    .line 1685
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1686
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 1689
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_4

    .line 1690
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1691
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 1696
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1697
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 1712
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1713
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v9, v12, :cond_6

    .line 1715
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

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

    .line 1725
    :cond_6
    move/from16 v16, v9

    .line 1727
    if-eqz p1, :cond_9

    .line 1728
    if-nez v9, :cond_8

    .line 1729
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 1730
    add-int/lit8 v16, v12, -0x1

    .line 1735
    :goto_3
    const v18, 0x7f040004

    .line 1736
    .local v18, startSlideAnim:I
    const v10, 0x7f040005

    .line 1749
    .local v10, endSlideAnim:I
    :goto_4
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1750
    .local v15, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1756
    .local v13, nextMsgId:J
    :goto_5
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1757
    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_e

    .line 1758
    if-eqz p1, :cond_c

    .line 1759
    if-nez v16, :cond_b

    .line 1760
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 1761
    add-int/lit8 v16, v12, -0x1

    .line 1775
    :goto_6
    add-int/lit8 v17, v17, 0x1

    .line 1776
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1777
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_5

    .line 1719
    .end local v10           #endSlideAnim:I
    .end local v13           #nextMsgId:J
    .end local v15           #nextMsgType:Ljava/lang/String;
    .end local v18           #startSlideAnim:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1720
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1732
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1733
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 1738
    :cond_9
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_a

    .line 1739
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1740
    const/16 v16, 0x0

    .line 1745
    :goto_7
    const v18, 0x7f040002

    .line 1746
    .restart local v18       #startSlideAnim:I
    const v10, 0x7f040003

    .restart local v10       #endSlideAnim:I
    goto :goto_4

    .line 1742
    .end local v10           #endSlideAnim:I
    .end local v18           #startSlideAnim:I
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1743
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1763
    .restart local v10       #endSlideAnim:I
    .restart local v13       #nextMsgId:J
    .restart local v15       #nextMsgType:Ljava/lang/String;
    .restart local v18       #startSlideAnim:I
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1764
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 1767
    :cond_c
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 1768
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1769
    const/16 v16, 0x0

    goto :goto_6

    .line 1771
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1772
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1782
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1784
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 1786
    const/4 v11, 0x0

    .line 1787
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1788
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1789
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1790
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1791
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_f

    .line 1792
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1793
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 1794
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1804
    :cond_10
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 1805
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    :cond_11
    move/from16 v0, v16

    if-eq v0, v9, :cond_14

    .line 1808
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/SlideshowActivity;->mIntent:Landroid/content/Intent;

    .line 1809
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mStartSlideAnim:I

    .line 1810
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/SlideshowActivity;->mEndSlideAnim:I

    .line 1811
    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 1795
    :cond_12
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1796
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1797
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1798
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1799
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_13

    .line 1800
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 1802
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    .line 1818
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1820
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 612
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 616
    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 2111
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "releaseWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2114
    :cond_0
    return-void
.end method

.method private removeEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 955
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "removeEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 958
    return-void
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 487
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 488
    return-void
.end method

.method private setAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1473
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1477
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1479
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1482
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 1483
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "setAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMusicMute(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 661
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 666
    :cond_1
    return-void
.end method

.method private setSubjectToView(Lcom/android/mms/ui/SlideView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 851
    const/4 v1, 0x0

    .line 855
    .local v1, subject:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    if-eqz v1, :cond_1

    .line 860
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 867
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V

    .line 876
    :goto_1
    return-void

    .line 862
    :cond_1
    const-string v2, "GATE"

    const-string v3, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowActivity"

    const-string v3, "Cannot display the slide title."

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 870
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 12
    .parameter "slides"
    .parameter "callback"

    .prologue
    .line 1850
    const/4 v3, 0x0

    .line 1851
    .local v3, hasDrmMedia:Z
    const/4 v4, 0x1

    .line 1852
    .local v4, hasRight:Z
    const/4 v5, 0x0

    .line 1853
    .local v5, i:I
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v2, v10, [Ljava/lang/String;

    .line 1854
    .local v2, filePaths:[Ljava/lang/String;
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v1, v10, [Ljava/lang/String;

    .line 1855
    .local v1, fileNames:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/SlideModel;

    .line 1856
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 1857
    .local v8, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1858
    const/4 v3, 0x1

    .line 1859
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1860
    const/4 v4, 0x0

    .line 1861
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 1862
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    .line 1863
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1868
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1871
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1872
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a017b

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1873
    const v10, 0x104000a

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;

    invoke-direct {v11, p0, v2, v1, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1875
    const v10, 0x1040009

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;

    invoke-direct {v11, p0, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1876
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1878
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void
.end method

.method private showMediaController(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 2191
    if-eqz p1, :cond_4

    .line 2192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_2

    .line 2193
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-nez v0, :cond_1

    .line 2194
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show()V

    goto :goto_0

    .line 2199
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    if-nez v0, :cond_3

    .line 2200
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show()V

    .line 2202
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    goto :goto_0

    .line 2205
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    goto :goto_0
.end method

.method private showToastUnablePlay()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_0
    return-void
.end method

.method private touchListener(IIII)V
    .locals 10
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v9, 0x14

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    .line 1598
    const/4 v0, 0x0

    .line 1599
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 1600
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 1602
    .local v2, movedY:I
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v5, p1, p3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isInVisibleRect(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    const/4 v3, 0x0

    .line 1612
    .local v3, useFlickPage:Z
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x96

    if-le v5, v6, :cond_5

    .line 1613
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 1614
    if-gez v1, :cond_3

    .line 1615
    if-eqz v3, :cond_2

    .line 1616
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v4, :cond_2

    .line 1617
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    .line 1621
    :cond_2
    const/4 v0, 0x1

    .line 1639
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1640
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v4, :cond_0

    .line 1641
    if-eqz v0, :cond_7

    .line 1642
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    goto :goto_0

    .line 1623
    :cond_3
    if-eqz v3, :cond_4

    .line 1624
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v4, :cond_4

    .line 1625
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    .line 1629
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1631
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    .line 1632
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1644
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    goto :goto_0

    .line 1647
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1648
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v4, :cond_9

    .line 1649
    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    .line 1650
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->moveSmsView(Z)V

    goto :goto_0

    .line 1653
    :cond_9
    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    .line 1654
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->moveSmsView(Z)V

    goto :goto_0

    .line 1658
    :cond_a
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v4, :cond_0

    .line 1659
    if-eqz v0, :cond_b

    .line 1660
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    goto/16 :goto_0

    .line 1662
    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    goto/16 :goto_0
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2213
    :cond_0
    return-void
.end method

.method private updateActionBarTextSize()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2317
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2335
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2321
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 2323
    .local v1, mIsLandscape:Z
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 2327
    if-eqz v1, :cond_3

    .line 2328
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v4, 0x4188

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2329
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 2321
    .end local v1           #mIsLandscape:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2331
    .restart local v1       #mIsLandscape:Z
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v4, 0x4198

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2332
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v4, 0x4160

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 2338
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2339
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2340
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2343
    :cond_0
    return-void
.end method

.method private updateControlButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2118
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2120
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v2, :cond_0

    .line 2121
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getLocation()I

    move-result v0

    .line 2122
    .local v0, curLocation:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageOptions;->getCurrentSlideLocation()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2123
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getLocation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageOptions;->setCurrentSlideLocation(I)V

    .line 2124
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2128
    .end local v0           #curLocation:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2129
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isStop()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2130
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    .line 2137
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 2138
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    .line 2149
    :cond_1
    :goto_1
    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$16;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 2156
    .local v1, notification:Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    if-eqz v2, :cond_2

    .line 2157
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2159
    :cond_2
    return-void

    .line 2132
    .end local v1           #notification:Ljava/lang/Runnable;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    goto :goto_0

    .line 2134
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    goto :goto_0

    .line 2140
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isStop()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPlayed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2141
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    goto :goto_1

    .line 2144
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected changeFontSize(Z)V
    .locals 8
    .parameter "toBigger"

    .prologue
    .line 1081
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1082
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1084
    .local v3, idxMsgPreferFontSize:I
    if-eqz p1, :cond_1

    .line 1085
    add-int/lit8 v3, v3, 0x1

    .line 1090
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1091
    .local v2, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1092
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1094
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1095
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideView;->adjustSlideBodyDisplay()V

    .line 1097
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1099
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_2

    .line 1109
    :goto_1
    return-void

    .line 1087
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v2           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1104
    .restart local v0       #audioService:Landroid/media/IAudioService;
    .restart local v2       #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    :try_start_0
    const-string v5, "Mms/SlideshowActivity"

    const-string v6, "KeyguardGetAudioService.dismissVolumePanel() run"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-interface {v0}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "Mms/SlideshowActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardGetAudioService.dismissVolumePanel() threw RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    const/4 v0, 0x1

    .line 2458
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 903
    .local v0, action:I
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 905
    .local v1, bar:Landroid/app/ActionBar;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 906
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 929
    :goto_0
    return v2

    .line 908
    :cond_0
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent(),action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    packed-switch v0, :pswitch_data_0

    .line 929
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 912
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    goto :goto_1

    .line 917
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    .line 920
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-nez v2, :cond_1

    .line 922
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    iget v5, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/SlideshowActivity;->touchListener(IIII)V

    goto :goto_1

    .line 910
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2399
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 2400
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2402
    .local v1, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2403
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 2404
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 2405
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2408
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2393
    :goto_0
    return-object v0

    .line 2392
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 1432
    move-object v0, p1

    .line 1433
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$8;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1468
    return-void
.end method

.method public hasName()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2412
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 2414
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2415
    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 2416
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 2417
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v2

    .line 2420
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return v2
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 2449
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2425
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2433
    :cond_0
    :goto_0
    return v0

    .line 2428
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2433
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;Z)V
    .locals 11
    .parameter "callback"
    .parameter "isExit"

    .prologue
    const/4 v10, 0x1

    .line 1939
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    .line 1941
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1942
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1943
    sget-object v0, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1944
    .local v7, SpammsgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1945
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1946
    if-eqz p2, :cond_0

    .line 1947
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1950
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1951
    if-eqz p2, :cond_2

    .line 1952
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$11;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$11;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1961
    .restart local v7       #SpammsgUri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1962
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1963
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1939
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1966
    .restart local v7       #SpammsgUri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz p2, :cond_4

    .line 1967
    :try_start_2
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$12;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$12;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 1976
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1977
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1978
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1982
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_5
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1983
    .local v2, msgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1984
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1985
    if-eqz p2, :cond_6

    .line 1986
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    :cond_6
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "read"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "seen"

    aput-object v1, v3, v0

    .line 1994
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1996
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    .line 1997
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1999
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 2000
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_7

    .line 2001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    .line 2002
    :cond_7
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_8

    .line 2003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_seen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2006
    :cond_8
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2010
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2011
    if-eqz p2, :cond_a

    .line 2012
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$13;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$13;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2006
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2023
    :cond_a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2024
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    if-eqz v0, :cond_b

    .line 2025
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2026
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    .line 2027
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2030
    :cond_c
    if-eqz p2, :cond_d

    .line 2031
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$14;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$14;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2042
    :cond_d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2043
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    if-eqz v0, :cond_e

    .line 2044
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2045
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->update_read:Z

    .line 2046
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2051
    .end local v2           #msgUri:Landroid/net/Uri;
    .end local v3           #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1571
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(),resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1581
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1584
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    :cond_0
    if-eqz v0, :cond_1

    .line 1588
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 1589
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 1590
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 1595
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2166
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    .line 2167
    const-string v0, "Mms/SlideshowActivity"

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

    .line 2175
    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 2177
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2179
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->setVideoPausedImage()V

    .line 2180
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->moveToCurrentPosition()V

    .line 2185
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTextSize()V

    .line 2186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 2187
    return-void

    .line 2169
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 2170
    const-string v0, "Mms/SlideshowActivity"

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
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 326
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 334
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->registerCallStateListener()V

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getDisplayDensity()V

    .line 339
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLCDWakeLock()V

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getCallState()V

    .line 347
    const v0, 0x7f030086

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 348
    const v0, 0x7f0e0215

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 352
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMessageInformationFromIntent()V

    .line 354
    invoke-static {v9}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 356
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 436
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 365
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 366
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 372
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 375
    :cond_1
    const v0, 0x7f0e0216

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-eqz v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->showToastUnablePlay()V

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 391
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageStatusIconsArea;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 393
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->makeModelList()V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setSubjectToView(Lcom/android/mms/ui/SlideView;)V

    .line 398
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTitle(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->createPresenter(Lcom/android/mms/ui/SlideView;)V

    .line 401
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 414
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    sput-object v0, Lcom/android/mms/ui/SlideshowActivity;->staticPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->findAttachmentList(JZ)Ljava/util/ArrayList;

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_4

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 422
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "mDirectCallingManager remove"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    .line 425
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createDirectCallingManager()V

    .line 427
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseMenuBlockDelayed()V

    .line 429
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 435
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_5
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 370
    :cond_6
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 379
    :catch_0
    move-exception v8

    .line 380
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 411
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 569
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 570
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 572
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->unregisterCallstateListener()V

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 582
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 583
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 587
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 593
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 596
    :cond_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1017
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(),keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sparse-switch p1, :sswitch_data_0

    .line 1077
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1027
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_1

    .line 1030
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsBlockMenu:Z

    if-nez v1, :cond_1

    .line 1031
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->pausePlayer()V

    goto :goto_0

    .line 1041
    :sswitch_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    const/16 v1, 0xa9

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x222

    if-ne v1, v2, :cond_1

    .line 1047
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_4

    .line 1048
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->changeFontSize(Z)V

    goto :goto_1

    .line 1058
    :sswitch_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    const/16 v1, 0xa8

    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x221

    if-ne v1, v2, :cond_1

    .line 1064
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_6

    .line 1065
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->changeFontSize(Z)V

    goto :goto_1

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x52 -> :sswitch_2
        0x6f -> :sswitch_1
        0xa8 -> :sswitch_4
        0xa9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1113
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "onKeyUp()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sparse-switch p1, :sswitch_data_0

    .line 1152
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1118
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1119
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "exit Slideshow"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->exitSlideshowActivity()V

    goto :goto_1

    .line 1125
    :cond_2
    :sswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1135
    :sswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1144
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v1, :cond_0

    .line 1145
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    goto :goto_0

    .line 1115
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x42 -> :sswitch_3
        0x6f -> :sswitch_0
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0x1d

    const/4 v0, 0x1

    .line 1520
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1529
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_4

    .line 1530
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1532
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 1539
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 1540
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1541
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1558
    :cond_1
    :goto_0
    return v0

    .line 1524
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1545
    :cond_2
    const/4 v0, 0x0

    .line 1546
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v1, :cond_3

    .line 1547
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1549
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1550
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v1, :cond_1

    .line 1551
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-ne v1, v4, :cond_1

    .line 1552
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1558
    .end local v0           #result:Z
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1522
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1563
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1564
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    if-nez v0, :cond_0

    .line 1565
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 1567
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1568
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 527
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->pauseSmilPlayer()V

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    .line 536
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 537
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/android/mms/util/DirectCallingManager;->pause()V

    .line 542
    :cond_1
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1504
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1506
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 1510
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 1515
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 492
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 495
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 497
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 504
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    .line 505
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideTime(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->seek(I)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 522
    :cond_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 462
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart() : model is null. Cannot start activity."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 481
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addRecipientsListener()V

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 478
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    .line 480
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 549
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeRecipientsListener()V

    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopSmilPlayer()V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-eqz v0, :cond_1

    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 561
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2385
    :goto_0
    return-void

    .line 2380
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$20;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 602
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 604
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 605
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    :cond_0
    return-void
.end method

.method protected releaseMenuBlockDelayed()V
    .locals 4

    .prologue
    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public updateMessageLockIcon(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 1827
    return-void
.end method

.method public viewContactDetailORList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2275
    if-nez p1, :cond_1

    .line 2314
    :cond_0
    :goto_0
    return-void

    .line 2277
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2281
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 2282
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->hasName()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2283
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2284
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2408

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2287
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2288
    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2291
    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v1

    .line 2293
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "Mms/SlideshowActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2296
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2297
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 2298
    const-string v3, "Mms/SlideshowActivity"

    const-string v4, "getPhonemuber address is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2301
    :cond_5
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2303
    .end local v0           #address:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 2304
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2305
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2306
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "recipients"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2307
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2309
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2310
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "recipients"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2311
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

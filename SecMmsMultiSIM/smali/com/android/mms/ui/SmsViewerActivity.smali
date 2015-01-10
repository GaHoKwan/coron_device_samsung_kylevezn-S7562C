.class public Lcom/android/mms/ui/SmsViewerActivity;
.super Landroid/app/Activity;
.source "SmsViewerActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;
.implements Lcom/android/mms/ui/MessageViewerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_SMS_DATE:I = 0x4

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "Mms/SmsViewerActivity"

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field public final FOLDER_NAVI_COLUMN_MSG_ID:I

.field public final FOLDER_NAVI_COLUMN_MSG_TYPE:I

.field public final FOLDER_NAVI_COLUMN_THREAD_ID:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private bMultiTouch:Z

.field private endX:I

.field private isWapPush:Z

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEndSlideAnim:I

.field public mFontSize:F

.field private mIntent:Landroid/content/Intent;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

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

.field private mRecipientsUpdateActionBarTitle:Ljava/util/ArrayList;
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

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mSmsViewerLayout:Landroid/widget/LinearLayout;

.field private mStartSlideAnim:I

.field private mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTextSizeController:Lcom/android/mms/ui/TextSizeController;

.field private msgId:J

.field private msgUri:Landroid/net/Uri;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 130
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 135
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 149
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 150
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    .line 153
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 154
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 155
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipientsUpdateActionBarTitle:Ljava/util/ArrayList;

    .line 162
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z

    .line 168
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewerActivity$1;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 1483
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$9;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1567
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$10;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1594
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "m_type"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    .line 1597
    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_TYPE:I

    .line 1598
    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_ID:I

    .line 1599
    iput v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_THREAD_ID:I

    .line 1791
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method private UpdateActionBarTitleWithNumber(Ljava/util/ArrayList;)V
    .locals 10
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
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 404
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 405
    .local v2, mIsLandscape:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->hasName()Z

    move-result v1

    .line 407
    .local v1, hasname:Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 408
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_4

    .line 409
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/SmsViewerActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v6, :cond_5

    .line 417
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 418
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 426
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 427
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_6

    .line 436
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/SmsViewerActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    if-eqz v2, :cond_2

    .line 444
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v6, 0x4188

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 445
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x4140

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .end local v1           #hasname:Z
    .end local v2           #mIsLandscape:Z
    :cond_3
    move v2, v5

    .line 404
    goto :goto_0

    .line 411
    .restart local v1       #hasname:Z
    .restart local v2       #mIsLandscape:Z
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 421
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 422
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    goto :goto_2

    .line 438
    .restart local v3       #phoneNumber:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 450
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 454
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageStatusIconsArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SmsViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/SmsViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 636
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 637
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private drawMainTextView()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    .line 833
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "==================drawMainTextView start==============="

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v4, :cond_0

    .line 838
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "mMsgItem is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 922
    :goto_0
    return-void

    .line 845
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 847
    .local v2, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 848
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v3

    .line 849
    .local v3, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 851
    invoke-static {v2, v7}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    .line 855
    .end local v3           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 856
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, length:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_5

    .line 859
    const/16 v1, 0x64

    .line 863
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, Body:Ljava/lang/String;
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTEXT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v0           #Body:Ljava/lang/String;
    .end local v1           #length:I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 874
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 875
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 877
    const-string v4, "CB#: "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 878
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 879
    invoke-static {v2, v7}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    .line 896
    :cond_3
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 897
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 899
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 903
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 904
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 921
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "==================drawMainTextView end==============="

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 861
    .restart local v1       #length:I
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_1

    .line 866
    .end local v1           #length:I
    :cond_6
    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private drawTitle()V
    .locals 9

    .prologue
    .line 925
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 927
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 929
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, Time:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/SmsViewerActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, Date:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, currentLanguage:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 935
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 936
    .local v3, result:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    .end local v3           #result:Ljava/lang/StringBuffer;
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 940
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getRTLDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private flickMessage(II)V
    .locals 21
    .parameter "startTouchX"
    .parameter "endTouchX"

    .prologue
    .line 1102
    const/4 v13, 0x0

    .line 1103
    .local v13, movedX:I
    const/4 v14, 0x0

    .line 1104
    .local v14, msgCount:I
    const/16 v19, 0x0

    .line 1105
    .local v19, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 1106
    .local v10, curPos:I
    const/16 v18, 0x0

    .line 1112
    .local v18, nextPos:I
    sub-int v13, p1, p2

    .line 1114
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_2

    .line 1115
    if-gez v13, :cond_1

    .line 1116
    const/4 v8, 0x1

    .line 1125
    .local v8, bFlicktoNext:Z
    :goto_0
    const/4 v3, 0x0

    .line 1126
    .local v3, contentThreadUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1128
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_3

    .line 1129
    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "flickMessage : mMsgItem is null!"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    .end local v8           #bFlicktoNext:Z
    .end local v9           #c:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-void

    .line 1118
    :cond_1
    const/4 v8, 0x0

    .restart local v8       #bFlicktoNext:Z
    goto :goto_0

    .line 1121
    .end local v8           #bFlicktoNext:Z
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    goto :goto_1

    .line 1133
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    .restart local v8       #bFlicktoNext:Z
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1134
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 1135
    if-eqz v3, :cond_0

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1171
    :goto_2
    if-eqz v9, :cond_0

    .line 1174
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1176
    const/4 v2, 0x1

    if-ge v14, v2, :cond_8

    .line 1177
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1138
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_5

    .line 1139
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1140
    if-eqz v3, :cond_0

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 1143
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_6

    .line 1144
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1145
    if-eqz v3, :cond_0

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 1152
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1153
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 1155
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->navigateMsgFolderViewMode(Z)V

    goto/16 :goto_1

    .line 1165
    :cond_7
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_0

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_2

    .line 1181
    :cond_8
    const/4 v2, 0x1

    if-eq v14, v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 1182
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 1183
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1187
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1188
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b

    if-ge v10, v14, :cond_b

    .line 1189
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1190
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_c

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1207
    :cond_b
    move/from16 v18, v10

    .line 1209
    if-eqz v8, :cond_10

    .line 1210
    if-nez v10, :cond_f

    .line 1211
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1212
    add-int/lit8 v18, v14, -0x1

    .line 1217
    :goto_4
    const v20, 0x7f040004

    .line 1218
    .local v20, startSlideAnim:I
    const v11, 0x7f040005

    .line 1231
    .local v11, endSlideAnim:I
    :goto_5
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1232
    .local v17, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1234
    .local v15, nextMsgId:J
    :goto_6
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1235
    const/16 v2, 0xf

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_15

    .line 1236
    if-eqz v8, :cond_13

    .line 1237
    if-nez v18, :cond_12

    .line 1238
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1239
    add-int/lit8 v18, v14, -0x1

    .line 1253
    :goto_7
    add-int/lit8 v19, v19, 0x1

    .line 1254
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1255
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_6

    .line 1193
    .end local v11           #endSlideAnim:I
    .end local v15           #nextMsgId:J
    .end local v17           #nextMsgType:Ljava/lang/String;
    .end local v20           #startSlideAnim:I
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1194
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1197
    :cond_d
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1200
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1201
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1214
    :cond_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1215
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 1220
    :cond_10
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_11

    .line 1221
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1222
    const/16 v18, 0x0

    .line 1227
    :goto_8
    const v20, 0x7f040002

    .line 1228
    .restart local v20       #startSlideAnim:I
    const v11, 0x7f040003

    .restart local v11       #endSlideAnim:I
    goto :goto_5

    .line 1224
    .end local v11           #endSlideAnim:I
    .end local v20           #startSlideAnim:I
    :cond_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1225
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 1241
    .restart local v11       #endSlideAnim:I
    .restart local v15       #nextMsgId:J
    .restart local v17       #nextMsgType:Ljava/lang/String;
    .restart local v20       #startSlideAnim:I
    :cond_12
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1242
    add-int/lit8 v18, v18, -0x1

    goto :goto_7

    .line 1245
    :cond_13
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_14

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1247
    const/16 v18, 0x0

    goto :goto_7

    .line 1249
    :cond_14
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1250
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1260
    :cond_15
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1262
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 1265
    const/4 v12, 0x0

    .line 1266
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1267
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1268
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1269
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1271
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1272
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_17

    .line 1273
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_18

    .line 1275
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    :cond_18
    :goto_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 1305
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1306
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 1276
    :cond_19
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1277
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1278
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1281
    .restart local v12       #intent:Landroid/content/Intent;
    :goto_a
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1282
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1284
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1285
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_1b

    .line 1286
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1287
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_18

    .line 1288
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 1280
    :cond_1c
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v12       #intent:Landroid/content/Intent;
    goto :goto_a

    .line 1289
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "wpm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1290
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1292
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1294
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1295
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_1f

    .line 1296
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_20

    .line 1298
    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1299
    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_18

    .line 1300
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_9
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "when"

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 234
    .local v0, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, formatedDate:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4
    .parameter "boxId"

    .prologue
    .line 1759
    const-string v1, "Mms/SmsViewerActivity"

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

    .line 1760
    const/4 v0, 0x0

    .line 1762
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 1788
    :goto_0
    return-object v0

    .line 1765
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 1766
    goto :goto_0

    .line 1769
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 1770
    goto :goto_0

    .line 1773
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 1774
    goto :goto_0

    .line 1777
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 1778
    goto :goto_0

    .line 1781
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 1782
    goto :goto_0

    .line 1762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"
    .parameter "isSpam"

    .prologue
    const/4 v2, 0x0

    .line 1440
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1441
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1444
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1476
    if-eqz v3, :cond_0

    .line 1477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1480
    :cond_0
    :goto_0
    return-object v2

    .line 1447
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1448
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1476
    if-eqz v3, :cond_0

    .line 1477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1451
    :cond_2
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    .line 1454
    new-instance v9, Lcom/android/mms/ui/SmsViewerActivity$8;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v9, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$8;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 1463
    .local v9, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1464
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_5

    .line 1469
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1471
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1476
    :goto_1
    if-eqz v3, :cond_3

    .line 1477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v0

    .line 1480
    goto :goto_0

    .line 1476
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v9           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v3, :cond_4

    .line 1477
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1476
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

    .line 1472
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

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1808
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

    .line 1810
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1811
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1812
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    const/4 v8, 0x0

    .line 1815
    .local v8, invalidData:Z
    if-nez v3, :cond_1

    .line 1858
    if-eqz v3, :cond_0

    .line 1859
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1862
    :cond_0
    :goto_0
    return-object v2

    .line 1818
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1824
    :cond_2
    if-nez v3, :cond_4

    .line 1829
    :cond_3
    :goto_1
    if-ne v8, v7, :cond_6

    .line 1830
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

    .line 1858
    if-eqz v3, :cond_0

    .line 1859
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1825
    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v5, p2

    if-eqz v1, :cond_3

    .line 1826
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    .line 1827
    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    .line 1837
    :cond_6
    new-instance v10, Lcom/android/mms/ui/SmsViewerActivity$11;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$11;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 1843
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1844
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_9

    .line 1849
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1851
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1856
    :goto_2
    :try_start_4
    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1858
    if-eqz v3, :cond_7

    .line 1859
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v2, v0

    .line 1862
    goto :goto_0

    .line 1858
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_8

    .line 1859
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 1858
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

    .line 1853
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
    :cond_9
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2
.end method

.method private initActionBar()V
    .locals 11

    .prologue
    const v10, 0x7f0a01bb

    const v9, 0x7f0a0188

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 244
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 250
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 253
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0007

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 254
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0008

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 257
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 260
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 262
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SmsViewerActivity$2;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 272
    :cond_4
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 274
    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v3, :cond_6

    .line 275
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 276
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 279
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 281
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 289
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 290
    const-string v2, ""

    .line 291
    .local v2, szRecipients:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 293
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v3, :cond_a

    .line 294
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0132

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->UpdateActionBarTitleWithNumber(Ljava/util/ArrayList;)V

    .line 305
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto/16 :goto_0

    .line 297
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v3, :cond_9

    .line 298
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 299
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v1           #i:I
    .end local v2           #szRecipients:Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 310
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->UpdateActionBarTitleWithNumber(Ljava/util/ArrayList;)V

    .line 311
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto/16 :goto_0

    .line 313
    :cond_c
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 13

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 767
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "msgId"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    .line 768
    const-string v0, "thread_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    .line 769
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const-string v0, "requestLockedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    .line 772
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    const-string v0, "requestReservedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    .line 776
    :cond_1
    const-string v0, "isSpam"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 779
    .local v11, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 784
    :cond_2
    if-eqz v11, :cond_3

    .line 785
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 790
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 791
    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 792
    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 794
    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 795
    .end local v1           #messageUri:Landroid/net/Uri;
    .local v12, messageUri:Landroid/net/Uri;
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v12, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 797
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 798
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v12

    .line 823
    .end local v12           #messageUri:Landroid/net/Uri;
    .restart local v1       #messageUri:Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_9

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    .line 830
    :goto_2
    return-void

    .line 787
    .end local v1           #messageUri:Landroid/net/Uri;
    :cond_3
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 800
    .end local v1           #messageUri:Landroid/net/Uri;
    .restart local v12       #messageUri:Landroid/net/Uri;
    :cond_4
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v12

    .end local v12           #messageUri:Landroid/net/Uri;
    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_1

    .line 802
    :cond_5
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 804
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 805
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    const/4 v9, 0x2

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 807
    :cond_6
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 811
    :cond_7
    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 812
    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 814
    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 815
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 816
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "wpm"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 818
    :cond_8
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 819
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 827
    :cond_9
    const-string v0, "Mms/SmsViewerActivity"

    const-string v2, "mMsgItem is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private markAsRead(Z)V
    .locals 14
    .parameter "isExit"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1317
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-ne v0, v11, :cond_3

    .line 1319
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 1324
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1325
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    if-eqz p1, :cond_2

    .line 1327
    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$4;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$4;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1345
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_4

    .line 1346
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "markAsRead : mMsgItem is null!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_4
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isReadMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1359
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1361
    .local v7, SpammsgUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1362
    .local v8, Spamvalues:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1363
    if-eqz p1, :cond_5

    .line 1364
    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1366
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$5;

    invoke-direct {v1, p0, v7, v8}, Lcom/android/mms/ui/SmsViewerActivity$5;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1379
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v8           #Spamvalues:Landroid/content/ContentValues;
    :cond_6
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 1381
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1382
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    if-eqz p1, :cond_7

    .line 1384
    const-string v0, "seen"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1387
    :cond_7
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v5

    const-string v0, "read"

    aput-object v0, v3, v11

    const-string v0, "seen"

    aput-object v0, v3, v6

    .line 1392
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1394
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_a

    .line 1395
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1398
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 1399
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 1400
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v11, :cond_8

    .line 1401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    .line 1402
    :cond_8
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v11, :cond_9

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_a
    if-eqz p1, :cond_b

    .line 1412
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$6;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$6;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1407
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1423
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$7;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$7;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 22
    .parameter "bFlicktoNext"

    .prologue
    .line 1602
    const/4 v15, 0x0

    .line 1603
    .local v15, msgCount:I
    const/16 v20, 0x0

    .line 1604
    .local v20, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 1605
    .local v10, curPos:I
    const/16 v19, 0x0

    .line 1610
    .local v19, nextPos:I
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    .line 1611
    .local v8, boxId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    .line 1612
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1617
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1620
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1622
    const/4 v2, 0x1

    if-ge v15, v2, :cond_2

    .line 1623
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1627
    :cond_2
    const/4 v2, 0x1

    if-eq v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1628
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 1629
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1633
    :cond_4
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "curPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1636
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    if-ge v10, v15, :cond_5

    .line 1638
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1648
    :cond_5
    move/from16 v19, v10

    .line 1650
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nextPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    if-eqz p1, :cond_8

    .line 1653
    if-nez v10, :cond_7

    .line 1654
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1655
    add-int/lit8 v19, v15, -0x1

    .line 1660
    :goto_2
    const v21, 0x7f040004

    .line 1661
    .local v21, startSlideAnim:I
    const v12, 0x7f040005

    .line 1675
    .local v12, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1676
    .local v18, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 1686
    .local v16, nextMsgId:J
    const/4 v14, -0x1

    .line 1687
    .local v14, mmsMsgType:I
    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1688
    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1689
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 1690
    const/16 v2, 0x82

    if-ne v14, v2, :cond_d

    .line 1691
    if-eqz p1, :cond_b

    .line 1692
    if-nez v19, :cond_a

    .line 1693
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1694
    add-int/lit8 v19, v15, -0x1

    .line 1708
    :goto_5
    add-int/lit8 v20, v20, 0x1

    .line 1709
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1710
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    goto :goto_4

    .line 1642
    .end local v12           #endSlideAnim:I
    .end local v14           #mmsMsgType:I
    .end local v16           #nextMsgId:J
    .end local v18           #nextMsgType:Ljava/lang/String;
    .end local v21           #startSlideAnim:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1643
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1657
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1658
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 1663
    :cond_8
    add-int/lit8 v2, v15, -0x1

    if-ne v10, v2, :cond_9

    .line 1664
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1665
    const/16 v19, 0x0

    .line 1670
    :goto_6
    const v21, 0x7f040002

    .line 1671
    .restart local v21       #startSlideAnim:I
    const v12, 0x7f040003

    .restart local v12       #endSlideAnim:I
    goto :goto_3

    .line 1667
    .end local v12           #endSlideAnim:I
    .end local v21           #startSlideAnim:I
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1668
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1677
    .restart local v12       #endSlideAnim:I
    .restart local v21       #startSlideAnim:I
    :catch_0
    move-exception v11

    .line 1678
    .local v11, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode total count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current position :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1696
    .end local v11           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v14       #mmsMsgType:I
    .restart local v16       #nextMsgId:J
    .restart local v18       #nextMsgType:Ljava/lang/String;
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1697
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 1700
    :cond_b
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    .line 1701
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1702
    const/16 v19, 0x0

    goto :goto_5

    .line 1704
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1705
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1715
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1717
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    .line 1719
    const/4 v13, 0x0

    .line 1720
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1721
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : sms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1723
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1724
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1726
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_e

    .line 1727
    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    :cond_e
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1751
    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "startActivity"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 1753
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1754
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 1729
    :cond_f
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1730
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : mms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1732
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1735
    .restart local v13       #intent:Landroid/content/Intent;
    :goto_8
    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1736
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 1734
    :cond_10
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v13       #intent:Landroid/content/Intent;
    goto :goto_8
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 641
    return-void
.end method

.method private updateActionBarTextSize()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 499
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 503
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 505
    .local v1, mIsLandscape:Z
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 509
    if-eqz v1, :cond_3

    .line 510
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v4, 0x4188

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 503
    .end local v1           #mIsLandscape:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 513
    .restart local v1       #mIsLandscape:Z
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v4, 0x4198

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 514
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v4, 0x4160

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 672
    .local v0, action:I
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 673
    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v3, :cond_0

    .line 674
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    :goto_0
    return v2

    .line 679
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 700
    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 701
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 708
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 681
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v3, :cond_1

    .line 683
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 692
    .end local v1           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    .line 693
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-nez v2, :cond_1

    .line 695
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    iget v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(II)V

    goto :goto_1

    .line 703
    :cond_3
    if-nez v0, :cond_1

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    goto :goto_1

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .parameter "contactList"

    .prologue
    const/4 v4, 0x1

    .line 461
    const-string v2, ""

    .line 462
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 463
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 464
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0132

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v2

    .line 471
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 476
    :cond_2
    const-string v3, "#CMAS#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 477
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 483
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 484
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getContactListNumber(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 3
    .parameter "contactList"

    .prologue
    .line 492
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 493
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, addr:Ljava/lang/String;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 1885
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1887
    .local v1, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1888
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1889
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 1890
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1893
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1871
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1873
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1878
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v1

    .line 1874
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 1875
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 1877
    :cond_1
    const-string v1, "Mms/SmsViewerActivity"

    const-string v2, "mRecipients is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRTLDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 950
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 951
    .local v2, order:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 952
    .local v0, dateFormatRTL:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 953
    .local v1, dateRTL:Ljava/lang/String;
    return-object v1
.end method

.method public hasName()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1897
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1900
    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1901
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 1902
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v2

    .line 1905
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return v2
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 1938
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1923
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return v0

    .line 1926
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExistsInDB()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1910
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1912
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1913
    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1914
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    .line 1918
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 724
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 730
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_0
    if-eqz v0, :cond_1

    .line 738
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 739
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 740
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 744
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 659
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 660
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    .line 662
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 663
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 664
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->updateActionBarTextSize()V

    .line 667
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    .line 185
    const v0, 0x7f0e0222

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsViewerLayout:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageStatusIconsArea;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initialize()V

    .line 197
    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    .line 202
    const-string v0, "Direct"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 208
    :cond_0
    new-instance v0, Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v0}, Lcom/android/mms/ui/TextSizeController;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    .line 211
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 215
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->createDirectCallingManager()V

    .line 217
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->setScrollTop()V

    .line 219
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 220
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 620
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 621
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 622
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 625
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/RelativeLayout;

    .line 631
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 633
    :cond_1
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 960
    sparse-switch p1, :sswitch_data_0

    .line 1011
    :cond_0
    const-string v3, "VOL"

    const-string v4, "vol up, SUPER!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    .line 965
    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 967
    const/16 v4, 0xa8

    if-ne p1, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    const/16 v5, 0x221

    if-ne v4, v5, :cond_1

    .line 971
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 972
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 976
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 980
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    goto :goto_0

    .line 988
    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :sswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    const/16 v4, 0xa9

    if-ne p1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    const/16 v5, 0x222

    if-ne v4, v5, :cond_1

    .line 994
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 995
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 997
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 999
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1000
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1001
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1003
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    goto :goto_0

    .line 960
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1019
    sparse-switch p1, :sswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1022
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    goto :goto_0

    .line 1028
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1037
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0x1d

    const/4 v0, 0x1

    .line 1064
    const-string v1, "Mms/SmsViewerActivity"

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

    .line 1066
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_3

    .line 1074
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    .line 1075
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1076
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1093
    :cond_0
    :goto_0
    return v0

    .line 1068
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    .line 1080
    :cond_1
    const/4 v0, 0x0

    .line 1081
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1084
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1085
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v1, :cond_0

    .line 1086
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    .line 1093
    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1066
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0}, Lcom/android/mms/util/DirectCallingManager;->pause()V

    .line 608
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1051
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 1058
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 548
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "type"

    aput-object v4, v2, v9

    const/4 v4, 0x2

    const-string v5, "address"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "error_code"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "group_id"

    aput-object v5, v2, v4

    .line 557
    .local v2, PROJECTION_Sms:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v4

    if-nez v4, :cond_1

    .line 559
    const-string v4, "Mms/SmsViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume(), isWapPush="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    iget-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-ne v4, v9, :cond_4

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms-sms/wap-push-messages/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v7, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 570
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v10, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 573
    iget-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v4, :cond_1

    move-object v4, v3

    move-object v5, v3

    .line 574
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 575
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 577
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 588
    .end local v0           #mContentResolver:Landroid/content/ContentResolver;
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v3, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 593
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 594
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 596
    :cond_3
    return-void

    .line 568
    .restart local v0       #mContentResolver:Landroid/content/ContentResolver;
    :cond_4
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v7, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 581
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 523
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->addRecipientsListener()V

    .line 528
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    .line 529
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    .line 530
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    .line 532
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;)V

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Mms/SmsViewerActivity"

    const-string v2, "NumberFormatException !!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 614
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->removeRecipientsListener()V

    .line 615
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 644
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$3;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method

.method public setScrollTop()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 1794
    const v0, 0x7f0e0220

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->scrollTo(Landroid/widget/ScrollView;I)V

    .line 1797
    return-void
.end method

.method public updateMessageLockIcon(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 1312
    return-void
.end method

.method public viewContactDetailORList(Ljava/util/ArrayList;)V
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 360
    if-nez p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.contacts"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.jcontacts"

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 367
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->isExistsInDB()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x2408

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.jcontacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 374
    const-string v4, "com.android.jcontacts"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 380
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "getPhonemuber address is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_5
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "Activity not found do not anyting!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 390
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-nez v4, :cond_7

    .line 391
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 395
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

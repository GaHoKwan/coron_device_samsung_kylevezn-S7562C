.class public Lcom/android/mms/ui/BoxListViewActivity;
.super Landroid/app/Activity;
.source "BoxListViewActivity.java"


# static fields
.field public static final FOLDER_VIEW_SPLIT_MODE:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field private static final MMSVIEWER:I = 0x65

.field protected static final MMS_NOTI_TYPE:I = 0xd

.field protected static final MMS_TYPE:I = 0xc

.field protected static final NONE_TYPE:I = 0x0

.field private static final SMSVIEWER:I = 0x66

.field protected static final SMS_TYPE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BoxListViewActivity"

.field public static sisOnPreLaunch:Z


# instance fields
.field private mBoxList:Lcom/android/mms/ui/BoxListFrame;

.field private mComposeMessage:Landroid/view/View;

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mIsViewerOnly:Z

.field public mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

.field public mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

.field public mMsgType:I

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mOptionMenuCount:I

.field mOptionSelectResult:Z

.field private mRightScreen:Landroid/widget/FrameLayout;

.field public mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private onViewerClose:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListViewActivity;->sisOnPreLaunch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    .line 74
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mComposeMessage:Landroid/view/View;

    .line 75
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 76
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    .line 77
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 81
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 82
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    .line 83
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 90
    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    .line 109
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1269
    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$4;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BoxListViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BoxListViewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/BoxListViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BoxListViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    return v0
.end method

.method private calcSplitMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1210
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    if-ne v1, v0, :cond_0

    .line 1229
    :goto_0
    return v0

    .line 1213
    :cond_0
    const/4 v0, 0x0

    .line 1214
    .local v0, splitMode:I
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 1215
    const/4 v0, 0x2

    .line 1222
    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1227
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():unknown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_1

    .line 1218
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1223
    :pswitch_0
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :pswitch_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :pswitch_2
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    :pswitch_3
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 940
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 944
    :goto_0
    return-object v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    .prologue
    .line 891
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "move to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->moveTaskToBack(Z)Z

    .line 904
    :goto_0
    return-void

    .line 897
    :cond_0
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initBoxList()Lcom/android/mms/ui/BoxListFrame;
    .locals 2

    .prologue
    .line 284
    const v1, 0x7f0e0059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListFrame;

    .line 285
    .local v0, boxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/BoxListFrame;->setActivity(Landroid/app/Activity;)V

    .line 287
    return-object v0
.end method

.method private initComposeMessage()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "initComposeMessage"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 237
    .local v0, inflater:Landroid/view/LayoutInflater;
    return-void
.end method

.method private initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;
    .locals 5

    .prologue
    .line 269
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initMmsSingleViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const v3, 0x7f0e005a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 272
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 274
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030060

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e01ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 275
    .local v1, mmsSingleView:Lcom/android/mms/ui/MmsSinglePageFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->setActivity(Landroid/app/Activity;)V

    .line 276
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    .line 278
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setBackgroundColor(I)V

    .line 280
    return-object v1
.end method

.method private initMmsViewer()Lcom/android/mms/ui/SlideshowFrame;
    .locals 5

    .prologue
    .line 255
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initMmsViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const v3, 0x7f0e005a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 257
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030087

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e021a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowFrame;

    .line 260
    .local v1, mmsView:Lcom/android/mms/ui/SlideshowFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SlideshowFrame;->setActivity(Landroid/app/Activity;)V

    .line 261
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    .line 263
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setBackgroundColor(I)V

    .line 265
    return-object v1
.end method

.method private initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;
    .locals 5

    .prologue
    .line 240
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initSmsViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const v3, 0x7f0e005a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 242
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 244
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03008a

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SmsViewFrame;

    .line 245
    .local v1, smsView:Lcom/android/mms/ui/SmsViewFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SmsViewFrame;->setActivity(Landroid/app/Activity;)V

    .line 246
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 248
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    .line 250
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setBackgroundColor(I)V

    .line 251
    return-object v1
.end method

.method private initSplitManager()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 967
    const-string v3, "Mms/BoxListViewActivity"

    const-string v6, "initSplitManager()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const v3, 0x7f0e005d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    .line 970
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    move v3, v4

    .line 1063
    :goto_0
    return v3

    .line 973
    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    .line 976
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/mms/ui/BoxListViewActivity$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BoxListViewActivity$2;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1003
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/mms/ui/BoxListViewActivity$3;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/BoxListViewActivity$3;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1023
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_2
    const/4 v2, 0x0

    .line 1025
    .local v2, useSplitView:Z
    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1026
    const/4 v2, 0x0

    .line 1028
    :cond_3
    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 1030
    const/4 v1, 0x0

    .line 1035
    .local v1, splitMode:I
    if-eqz v2, :cond_7

    .line 1036
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v3, :cond_6

    .line 1037
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v3, :cond_5

    .line 1038
    const/4 v1, 0x1

    .line 1052
    :cond_4
    :goto_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1053
    .local v0, display:Landroid/view/Display;
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSplitManager width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    new-instance v3, Lcom/android/mms/ui/SplitManager;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mRightScreen:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v3, v6, v7, v8, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 1055
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 1057
    if-nez v5, :cond_9

    .line 1058
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1061
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v3, v5

    .line 1063
    goto/16 :goto_0

    .line 1040
    .end local v0           #display:Landroid/view/Display;
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 1042
    :cond_6
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v3, :cond_4

    .line 1043
    const/4 v1, 0x1

    goto :goto_1

    .line 1047
    :cond_7
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-nez v3, :cond_8

    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1048
    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    .line 1060
    .restart local v0       #display:Landroid/view/Display;
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private isIntentForList(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_0
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentForList(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return v1
.end method

.method private isIntentForViewer(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 202
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, className:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 206
    const/4 v2, 0x1

    .line 219
    .end local v1           #className:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentForViewer(),return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v2

    .line 215
    :cond_1
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 947
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 907
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 908
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 909
    :cond_0
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_0
    return v7

    .line 914
    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 915
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 918
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 919
    .local v3, launcherInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 920
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 921
    const-string v7, "Mms/BoxListViewActivity"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/4 v7, 0x1

    goto :goto_0

    .line 927
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshSplitManager(Z)V
    .locals 6
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v5, 0x0

    .line 1234
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    const/4 v1, 0x0

    .line 1241
    .local v1, useSplitView:Z
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    if-ne v2, v1, :cond_4

    .line 1242
    if-nez p1, :cond_0

    .line 1245
    if-eqz v1, :cond_3

    .line 1246
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1247
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    .line 1249
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1250
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 1253
    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, splitMode:I
    if-eqz v1, :cond_6

    .line 1256
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1257
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_5

    .line 1258
    const/4 v0, 0x2

    .line 1263
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 1260
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 848
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 849
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    new-instance v1, Lcom/android/mms/ui/BoxListViewActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListViewActivity$1;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 871
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/BoxListViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 872
    const/4 v1, 0x1

    return v1
.end method

.method private showEmptyScreen(IZ)V
    .locals 5
    .parameter "type"
    .parameter "show"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1173
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    packed-switch p1, :pswitch_data_0

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1176
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_0

    .line 1179
    if-eqz p2, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    .line 1184
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 1185
    if-eqz p2, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    goto :goto_1

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    .line 1197
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1200
    if-eqz p2, :cond_3

    .line 1201
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    .line 1203
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    .line 1174
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocusOfBoxListIfNeeded()V
    .locals 2

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->clearFocus()V

    .line 1419
    :cond_0
    return-void
.end method

.method protected clearViewer()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1078
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1079
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 1083
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    .line 1087
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1089
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getActionBarHeight()I
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, mActionBarHeight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 468
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action bar height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v0
.end method

.method public getCurrentViewMsgId()J
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    .line 1401
    :goto_0
    return-wide v0

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    goto :goto_0

    .line 1401
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "prefKey"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x0

    .line 1422
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1423
    .local v0, mFromSearchView:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1424
    const/4 v1, 0x1

    .line 1426
    :cond_0
    return v1
.end method

.method public getNextSplitMode()I
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const/4 v0, 0x2

    .line 1074
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 1357
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1358
    .local v0, result:I
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, mStatusBarHeight:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 458
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 459
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status bar height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 462
    return v0
.end method

.method public getXpositon()I
    .locals 4

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getXpositon()I

    move-result v0

    .line 1364
    .local v0, result:I
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpositon,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 5

    .prologue
    .line 831
    const/4 v2, 0x0

    .line 834
    .local v2, isMultiWindowMode:Z
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    .line 835
    .local v0, MW:Landroid/sec/multiwindow/MultiWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 836
    const/4 v2, 0x1

    .line 844
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return v2

    .line 838
    .restart local v0       #MW:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 840
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :catch_0
    move-exception v1

    .line 841
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return v0
.end method

.method public notifyBoxDataChanged(Z)V
    .locals 1
    .parameter "deleteMode"

    .prologue
    .line 1369
    if-eqz p1, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_3

    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    goto :goto_0

    .line 1387
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->close()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 667
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 671
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v0, :sswitch_data_0

    .line 687
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 678
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SmsViewFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 682
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SlideshowFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 671
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onBoxListDeleteMode()V
    .locals 2

    .prologue
    .line 952
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public onBoxListMoveMode()V
    .locals 2

    .prologue
    .line 958
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListMoveMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 561
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged(),newConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move v0, v2

    .line 564
    .local v0, isLandscape:Z
    :goto_0
    const/4 v1, 0x0

    .line 565
    .local v1, refreshList:Z
    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eq v3, v0, :cond_2

    .line 566
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 585
    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v2, :cond_1

    .line 586
    :cond_0
    const/4 v1, 0x1

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->configurationChanged(Landroid/content/res/Configuration;Z)V

    .line 598
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 601
    return-void

    .line 563
    .end local v0           #isLandscape:Z
    .end local v1           #refreshList:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 692
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected,item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BoxListFrame;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const/4 v0, 0x1

    .line 699
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 113
    const-string v3, "Mms/BoxListViewActivity"

    const-string v5, "onCreate()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder view : intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initBoxList()Lcom/android/mms/ui/BoxListFrame;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    .line 130
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    .line 135
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v3, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, key:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 147
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v3, :cond_5

    .line 150
    const/4 v0, 0x0

    .line 151
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 178
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->registerMultiWindowBroadcastReciver()Z

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 125
    goto :goto_0

    .line 158
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v3, :cond_7

    .line 160
    const/4 v0, 0x0

    .line 161
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 165
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v3, :cond_3

    .line 169
    const/4 v0, 0x0

    .line 170
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 174
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onDestroy()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onDestroy()V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onDestroy()V

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 428
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->unregisterMultiWindowBroadcastReciver()Z

    .line 430
    :cond_4
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 729
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 744
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 751
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-nez v2, :cond_4

    .line 756
    if-ne p1, v4, :cond_3

    .line 757
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v0, v1

    .line 758
    goto :goto_0

    :cond_3
    move v0, v1

    .line 761
    goto :goto_0

    .line 766
    :cond_4
    if-ne p1, v4, :cond_5

    .line 767
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "onKeyUp():KEYCODE_BACK"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 796
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 801
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 805
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 809
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 817
    :cond_9
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    if-eqz v1, :cond_a

    if-ne p1, v4, :cond_a

    .line 818
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    if-eqz v1, :cond_a

    .line 820
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->handleMoveTaskToBack()V

    goto/16 :goto_0

    .line 827
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 526
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 530
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListViewActivity;->isIntentForList(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    :cond_0
    const-string v2, "StatusBarNoti"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 544
    .local v0, mStatusBarNoti:Z
    const-string v2, "notifyFailed"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 545
    .local v1, notifyFailed:Z
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",notifyFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-eqz v0, :cond_2

    .line 548
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    .line 556
    :cond_1
    :goto_0
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void

    .line 550
    :cond_2
    if-eqz v1, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 640
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v1, :sswitch_data_0

    .line 662
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 643
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 649
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 654
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 632
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    .line 635
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 387
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 605
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BoxListFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 622
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    .line 625
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    .line 627
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 344
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 349
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "conversationList"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    .line 383
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onResume()V

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    .line 382
    :cond_2
    :goto_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onResume()V

    goto :goto_1

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 308
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 318
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    .line 319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 324
    :cond_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->startSearchView()V

    .line 723
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStart()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    .line 303
    :cond_2
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    .line 413
    :cond_2
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 436
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 437
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 438
    .local v3, y:I
    const/4 v1, 0x0

    .line 440
    .local v1, result:Z
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 441
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/SmsViewFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v4

    .line 445
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 446
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eq v5, v4, :cond_0

    .line 450
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 704
    const-string v0, "Mms/BoxListViewActivity"

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

    .line 705
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 707
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlideshowFrame;->onWindowFocusChanged(Z)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method protected removeViewer(I)V
    .locals 6
    .parameter "msgType"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0e005a

    const/4 v3, 0x0

    .line 1293
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    packed-switch p1, :pswitch_data_0

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1300
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    .line 1303
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1304
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    .line 1305
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    .line 1306
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    .line 1307
    if-eqz v0, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1309
    :cond_1
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1310
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    .line 1314
    .end local v0           #vg:Landroid/view/ViewGroup;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_0

    .line 1317
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1318
    .restart local v0       #vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    .line 1319
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onStop()V

    .line 1321
    if-eqz v0, :cond_2

    .line 1322
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1323
    :cond_2
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    .line 1324
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1326
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    .line 1327
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #vg:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1328
    .restart local v0       #vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    .line 1329
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    .line 1331
    if-eqz v0, :cond_3

    .line 1332
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1333
    :cond_3
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 1334
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestFocusOnViewer()Z
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-nez v0, :cond_0

    .line 1407
    const/4 v0, 0x1

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startNotiViewer(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 1142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1143
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1146
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    .line 1147
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1149
    :cond_1
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1150
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1151
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 1152
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 1153
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    .line 1159
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_2

    .line 1160
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1161
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1164
    :cond_2
    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 1168
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    .line 1170
    return-void
.end method

.method protected startViewer(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "msgType"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1092
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 1093
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1097
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    const-string v1, "sms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1098
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    .line 1099
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1100
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1101
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 1102
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 1103
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    .line 1109
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1111
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1114
    :cond_1
    const/16 v1, 0x66

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 1137
    :cond_2
    :goto_0
    return-void

    .line 1116
    :cond_3
    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    .line 1118
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1119
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 1120
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, v3, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1121
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    .line 1122
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    .line 1128
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_4

    .line 1129
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1130
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1133
    :cond_4
    const/16 v1, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    goto :goto_0
.end method

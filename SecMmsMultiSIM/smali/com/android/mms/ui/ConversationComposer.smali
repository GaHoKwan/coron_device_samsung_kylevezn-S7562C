.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# static fields
.field private static final CLASS_COMPOSEMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field private static final CLASS_FORWARDMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ForwardMessageActivity"

.field private static final CLASS_REPLYMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ReplyMessageActivity"

.field private static final CURRENT_STEP_OF_ACTIVITY_CREATING:I = 0x0

.field private static final CURRENT_STEP_OF_ACTIVITY_ONNEWINTENT:I = 0x1

.field private static final DEBUG_MSG:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field public static final INTENT_TYPE_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field public static final NOTI_INTENT_BLOCK_SIP:Ljava/lang/String; = "needBlockSIPforNoti"

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationComposer"

.field private static final URI_CONVERSATIONS:Ljava/lang/String; = "content://mms-sms/conversations/"


# instance fields
.field private CloseComposerForThreadsDelete:Z

.field public activityCreated:Z

.field private mCmasViewer:Lcom/android/mms/ui/CMASViewer;

.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEmptyScreen:Landroid/view/View;

.field private mFolderViewInvoked:Z

.field mFolderViewInvoking:Z

.field private mForceShowComposer:Z

.field private mFromFolderView:Z

.field private mFromNestedSearchView:Z

.field private mFromSearchView:Z

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsCmasViewer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;

.field private mRightScreen:Landroid/view/View;

.field public mSipHandler:Lcom/android/mms/ui/SipHandler;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private mVto:Landroid/view/ViewTreeObserver;

.field private onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

.field private savedSplitMode:I

.field public taskMovedToBack:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    .line 132
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->savedSplitMode:I

    .line 157
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 166
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 168
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    .line 170
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;

    .line 413
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1845
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$6;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    .line 1869
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$7;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    .line 2045
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$8;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    .line 2082
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$9;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method private addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6
    .parameter "id"
    .parameter "list"
    .parameter "composer"

    .prologue
    .line 2335
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2336
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2338
    .local v2, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_0

    .line 2340
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0e00ca

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationListFragment;

    .line 2341
    .local v3, listFrag:Lcom/android/mms/ui/ConversationListFragment;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 2342
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 2343
    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2344
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2345
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2349
    .end local v3           #listFrag:Lcom/android/mms/ui/ConversationListFragment;
    :cond_0
    if-eqz p3, :cond_1

    .line 2351
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0e00cc

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2352
    .local v0, composerFrag:Lcom/android/mms/ui/ComposeMessageFragment;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 2353
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 2354
    invoke-virtual {v2, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2355
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2356
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2359
    .end local v0           #composerFrag:Lcom/android/mms/ui/ComposeMessageFragment;
    :cond_1
    return-void
.end method

.method private calcSplitMode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1900
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 1963
    :goto_0
    return v0

    .line 1904
    :cond_0
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 1905
    goto :goto_0

    .line 1908
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    if-eqz v3, :cond_5

    .line 1910
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1911
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    .line 1912
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1913
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1915
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_4

    .line 1916
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    :cond_4
    move v0, v2

    .line 1917
    goto :goto_0

    .line 1922
    :cond_5
    const/4 v1, -0x1

    .line 1923
    .local v1, state:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1924
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    .line 1926
    :cond_6
    const/4 v0, 0x0

    .line 1927
    .local v0, splitMode:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 1928
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1929
    const/4 v0, 0x2

    .line 1947
    :cond_7
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1961
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():unknown"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1930
    :cond_8
    if-nez v1, :cond_9

    .line 1931
    const/4 v0, 0x1

    goto :goto_1

    .line 1933
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-ne v3, v2, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1934
    const/4 v0, 0x1

    goto :goto_1

    .line 1936
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1937
    const/4 v0, 0x2

    goto :goto_1

    .line 1942
    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    .line 1949
    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1952
    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1955
    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1958
    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1947
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 11
    .parameter "intent"
    .parameter "action"
    .parameter "savedInstanceState"
    .parameter "currentStepOfActivity"

    .prologue
    const/high16 v10, 0x3400

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, type:Ljava/lang/String;
    const/4 v2, 0x0

    .line 472
    .local v2, isFolderView:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z

    move-result v5

    .line 473
    .local v5, mIsIntentFromAnotherProcessWithConversationUri:Z
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isFailedNotiIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 474
    .local v1, isFailedNoti:Z
    const-string v9, "fromWidget"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 475
    .local v3, isFromWidget:Z
    const-string v9, "from_noti_wappush"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 477
    .local v4, isPushMessageNoti:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 478
    const/4 v2, 0x1

    .line 482
    :cond_0
    if-eqz v2, :cond_d

    .line 494
    if-eqz p2, :cond_4

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 496
    if-nez p4, :cond_1

    .line 499
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v0, intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 502
    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 504
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 509
    :cond_2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 511
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    .line 613
    .end local v0           #intent_box:Landroid/content/Intent;
    :goto_0
    return v7

    .line 526
    :cond_4
    if-eqz v5, :cond_9

    .line 529
    if-nez p4, :cond_5

    .line 532
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    if-eqz v1, :cond_7

    .line 535
    if-nez p4, :cond_6

    .line 538
    :cond_6
    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 546
    :cond_7
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 550
    if-eqz v4, :cond_8

    .line 551
    const-string v8, "from_noti_wappush"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 568
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_9
    if-eqz v1, :cond_b

    .line 570
    if-nez p4, :cond_a

    .line 573
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 575
    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 589
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_b
    if-eqz v3, :cond_e

    .line 590
    if-nez p2, :cond_c

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 593
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 599
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_c
    if-eqz p2, :cond_e

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto/16 :goto_0

    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_d
    move v7, v8

    .line 611
    goto/16 :goto_0

    :cond_e
    move v7, v8

    .line 613
    goto/16 :goto_0
.end method

.method private checkNotiIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1199
    const-string v2, "noti"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    const-string v2, "thread_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1205
    .local v0, thread_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1207
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1208
    const-string v2, "needBlockSIPforNoti"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1213
    .end local v0           #thread_id:J
    :cond_0
    :goto_0
    return-void

    .line 1210
    .restart local v0       #thread_id:J
    :cond_1
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private composerRequestsClosing()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1736
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "composerRequestsClosing()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 1740
    .local v0, splitMode:I
    const-string v1, "FromSearchView"

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1741
    const/4 v0, -0x1

    .line 1744
    :cond_0
    if-ne v0, v5, :cond_5

    .line 1746
    const-string v1, "FromSearchView"

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1747
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    if-ne v1, v4, :cond_2

    .line 1749
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1753
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v1, :cond_4

    .line 1754
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    .line 1795
    :cond_3
    :goto_0
    return-void

    .line 1756
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 1763
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1764
    if-nez v0, :cond_a

    .line 1766
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1767
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 1769
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1780
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_9

    .line 1782
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 1783
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 1784
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1786
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1787
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1792
    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1793
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1772
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    if-ne v1, v4, :cond_7

    .line 1775
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 1776
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1777
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    goto :goto_1
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 680
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMultiWindowInstance()Z
    .locals 2

    .prologue
    .line 176
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    .prologue
    .line 1880
    const/4 v0, -0x1

    .line 1882
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    .line 1884
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1886
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1895
    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    return v0

    .line 1890
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
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
    .line 1560
    const/4 v1, 0x0

    .line 1561
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1566
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1570
    :goto_0
    return-object v1

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 5

    .prologue
    .line 1576
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1577
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    .line 1578
    .local v2, useSplitView:Z
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1579
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 1580
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    .line 1594
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #useSplitView:Z
    :goto_0
    return-void

    .line 1581
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #useSplitView:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "move to back"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1590
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #useSplitView:Z
    :catch_0
    move-exception v0

    .line 1592
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "Exception."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1587
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #useSplitView:Z
    :cond_1
    :try_start_1
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "finish"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private hideSoftInputKeyboard()V
    .locals 2

    .prologue
    .line 2544
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2545
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 2546
    return-void
.end method

.method private initCmasViewer()Lcom/android/mms/ui/CMASViewer;
    .locals 5

    .prologue
    .line 854
    const v3, 0x7f0e00cb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 855
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 857
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/CMASViewer;

    .line 858
    .local v0, cmasviewer:Lcom/android/mms/ui/CMASViewer;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setConversationList(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 859
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/CMASViewer;->setActivity(Landroid/app/Activity;)V

    .line 860
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 861
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 862
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 863
    return-object v0
.end method

.method private initSplitManager()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1597
    const-string v6, "Mms/ConversationComposer"

    const-string v9, "initSplitManager()"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const v6, 0x7f0e005d

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    .line 1600
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v6, :cond_0

    move v6, v7

    .line 1701
    :goto_0
    return v6

    .line 1603
    :cond_0
    iput-boolean v7, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 1606
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1633
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1634
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1651
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    .line 1652
    .local v3, useSplitView:Z
    const-string v6, "FromSearchView"

    invoke-virtual {p0, v6, v7}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1653
    const/4 v3, 0x0

    .line 1655
    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 1657
    const/4 v2, 0x0

    .line 1662
    .local v2, splitMode:I
    if-eqz v3, :cond_a

    .line 1663
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1664
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_7

    .line 1665
    :cond_3
    const/4 v2, 0x1

    .line 1679
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 1680
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1681
    .local v0, attr:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1682
    .local v4, width:I
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1684
    .local v1, height:I
    if-gtz v4, :cond_5

    .line 1685
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1687
    :cond_5
    if-gtz v1, :cond_6

    .line 1688
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1691
    :cond_6
    const-string v6, "Mms/ConversationComposer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initSplitManager width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    new-instance v6, Lcom/android/mms/ui/SplitManager;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v6, v9, v10, v11, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 1693
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 1695
    if-ne v3, v8, :cond_c

    .line 1696
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1699
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v2, v7}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v6, v8

    .line 1701
    goto/16 :goto_0

    .line 1667
    .end local v0           #attr:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #height:I
    .end local v4           #width:I
    .end local v5           #window:Landroid/view/Window;
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    .line 1669
    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_4

    .line 1670
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1674
    :cond_a
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v6, :cond_4

    .line 1675
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1698
    .restart local v0       #attr:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #height:I
    .restart local v4       #width:I
    .restart local v5       #window:Landroid/view/Window;
    :cond_c
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private isFailedNotiIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intentInvokingConversationComposer"

    .prologue
    .line 618
    const-string v1, "isFailedNoti"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 620
    .local v0, isFailedNoti:Z
    return v0
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, result:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const/4 v0, 0x1

    .line 727
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return v0

    .line 707
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    const/4 v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromFolderView(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 719
    const/4 v0, 0x1

    .line 724
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForCmas(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 687
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_0
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    :cond_1
    const/4 v1, 0x1

    .line 691
    :cond_2
    return v1
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 818
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 821
    .local v2, result:Z
    if-nez v0, :cond_6

    .line 822
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, className:Ljava/lang/String;
    const-string v4, "cmas"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 849
    .end local v1           #className:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 828
    .restart local v1       #className:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_4

    .line 829
    const/4 v2, 0x1

    .line 838
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 839
    const-string v4, "conversationList"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 840
    const/4 v2, 0x0

    .line 848
    .end local v1           #className:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentForComposer(),return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 849
    goto :goto_0

    .line 830
    .restart local v1       #className:Ljava/lang/String;
    :cond_4
    const-class v4, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 835
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 844
    .end local v1           #className:Ljava/lang/String;
    :cond_6
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 845
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private isIntentForContact(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 795
    .local v2, intentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 796
    .local v4, scheme:Ljava/lang/String;
    const/4 v1, 0x0

    .line 797
    .local v1, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 799
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 803
    :cond_0
    if-eqz v2, :cond_1

    .line 804
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 807
    :cond_1
    if-eqz v1, :cond_2

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "smsto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 810
    const/4 v3, 0x1

    .line 813
    :cond_2
    const-string v5, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentForContact(),return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return v3
.end method

.method private static isIntentForConversations(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 664
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 665
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 668
    .local v0, retVal:Z
    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, uriString:Ljava/lang/String;
    const-string v3, "content://mms-sms/conversations/"

    const-string v4, "content://mms-sms/conversations/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 675
    .end local v2           #uriString:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 697
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 698
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 640
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 642
    .local v2, retVal:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForConversations(Landroid/content/Intent;)Z

    move-result v1

    .line 643
    .local v1, mIsIntentForConversations:Z
    const-string v4, "fromFolderView"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 654
    .local v0, mFromFolderView:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 655
    const/4 v2, 0x1

    .line 659
    :cond_0
    return v2
.end method

.method private static isIntentFromFolderView(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 735
    const-string v2, "conversationList"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 738
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 783
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

.method private static isIntentFromRecvNotibar(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 760
    const-string v3, "isFromRecvNoti"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 761
    .local v0, isRecvNoti:Z
    if-ne v0, v1, :cond_1

    .line 762
    if-eqz p0, :cond_0

    const/high16 v3, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/high16 v3, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/high16 v3, 0x2000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 771
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 768
    goto :goto_0

    :cond_1
    move v1, v2

    .line 771
    goto :goto_0
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 778
    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 788
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 789
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1533
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 1534
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1535
    :cond_0
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :goto_0
    return v7

    .line 1540
    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1541
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1544
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

    .line 1545
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

    .line 1546
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1547
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const/4 v7, 0x1

    goto :goto_0

    .line 1553
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 743
    const-string v5, "thread_id"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 744
    .local v1, tempThread_id:J
    const-string v5, "isFailedNoti"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 746
    .local v0, isFailedNoti:Z
    if-ne v0, v4, :cond_0

    .line 747
    cmp-long v5, v1, v6

    if-lez v5, :cond_1

    const/high16 v5, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/high16 v5, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 752
    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 7
    .parameter "logMsg"

    .prologue
    .line 2432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2433
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 2434
    .local v3, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 2435
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 2437
    .local v1, methodName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2438
    const-string v5, "Mms/ConversationComposer"

    invoke-static {v5, p0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    return-void
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method private removeComposer()V
    .locals 5

    .prologue
    .line 1798
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v1, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e00cc

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1805
    .local v0, details:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_0

    .line 1807
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$5;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 1820
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1821
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 1822
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1824
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5
    .parameter "list"
    .parameter "composer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2366
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2367
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2369
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 2370
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2371
    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 2372
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2373
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2374
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 2376
    :cond_0
    if-eqz p2, :cond_1

    .line 2377
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2378
    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 2379
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2380
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2381
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2383
    :cond_1
    return-void
.end method

.method private setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 4
    .parameter "intent_box"
    .parameter "notifyFailed"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 623
    move-object v0, p1

    .line 625
    .local v0, intentRet:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 626
    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    :goto_0
    return-object v0

    .line 630
    :cond_0
    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showEmptyScreen(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1829
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    if-eqz p1, :cond_2

    .line 1835
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1841
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 870
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 871
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    const v0, 0x7f0e00ca

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 879
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 2146
    :cond_0
    return-void
.end method

.method public canUseSplitMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1985
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeSearchView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2443
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2444
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->closeSearchView(Z)V

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 2448
    :cond_1
    return-void
.end method

.method public finishCmasViewer(Z)Z
    .locals 6
    .parameter "isDeleted"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1496
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "Finish CMAS Viewer"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 1498
    .local v0, useSplitView:Z
    const-string v2, "FromSearchView"

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1499
    const/4 v0, 0x0

    .line 1503
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    .line 1508
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 1509
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_3

    .line 1510
    if-eqz p1, :cond_4

    .line 1511
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-nez v0, :cond_3

    .line 1513
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1527
    :cond_3
    :goto_0
    return v1

    .line 1516
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 1519
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1521
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1522
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1523
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCMASViewerIsVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2411
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    .line 2412
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2414
    :cond_0
    return v0
.end method

.method public getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method public getComposerFocusStates()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2149
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 2150
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasFocus:Z

    .line 2155
    :cond_0
    return v0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "prefKey"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x0

    .line 2489
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "history_searchView"

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2490
    .local v0, mFromSearchView:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 2492
    .local v1, useSplitView:Z
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFromSearchView() entered, useSplitView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    if-nez v1, :cond_1

    .line 2496
    const-string v3, "history_searchView"

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 2502
    :cond_0
    :goto_0
    return v2

    .line 2499
    :cond_1
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getIsSplitViewMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1975
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 1980
    :cond_0
    :goto_0
    return v1

    .line 1978
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1980
    .local v0, splitMode:I
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNextSplitMode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1709
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v1, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return v0

    .line 1713
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v1, :cond_2

    .line 1715
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1728
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1729
    const/4 v0, 0x2

    goto :goto_0

    .line 1731
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 2135
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2136
    .local v0, result:I
    const-string v1, "Mms/ConversationComposer"

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

    .line 2137
    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowInstance:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightScreenVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2464
    const/4 v0, -0x1

    .line 2466
    .local v0, splitMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v3, :cond_0

    .line 2467
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2469
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2470
    if-eq v0, v2, :cond_2

    .line 2482
    :cond_1
    :goto_0
    return v1

    .line 2473
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    .line 2476
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :cond_4
    if-eqz v0, :cond_1

    move v1, v2

    .line 2480
    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 2451
    const/4 v0, 0x0

    .line 2452
    .local v0, ComposeSearchMode:Z
    const/4 v1, 0x0

    .line 2453
    .local v1, ConversationSearchMode:Z
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_0

    .line 2454
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isSearchMode()Z

    move-result v0

    .line 2456
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_1

    .line 2457
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    .line 2459
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    .prologue
    .line 1705
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public isSplitModeActive()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2299
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 2300
    const/4 v0, 0x1

    .line 2301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 2313
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    if-nez p1, :cond_1

    .line 2315
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2318
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 2320
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 2323
    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 2324
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    goto :goto_0

    .line 2325
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2326
    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2327
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2328
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2330
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    goto :goto_0
.end method

.method public onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/CMASViewer;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 2420
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1217
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1218
    const-string v4, "Mms/ConversationComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged(),newConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_1

    move v0, v2

    .line 1222
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v4, v0, :cond_0

    .line 1223
    const-string v4, "Mms/ConversationComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 1227
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    .line 1232
    .local v1, splitMode:I
    if-ne v1, v7, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1233
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 1234
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1242
    .end local v1           #splitMode:I
    :cond_0
    return-void

    .end local v0           #isLandscape:Z
    :cond_1
    move v0, v3

    .line 1220
    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 2427
    :cond_0
    return-void
.end method

.method public onConversationDeleteMode()V
    .locals 2

    .prologue
    .line 2115
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2119
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2121
    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    .line 2309
    :cond_0
    return-void
.end method

.method public onConversationMoveMode()V
    .locals 2

    .prologue
    .line 2125
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationMoveMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2129
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2131
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 262
    invoke-super {p0, v13}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const-string v8, "Mms/ConversationComposer"

    const-string v11, "onCreate"

    invoke-static {v8, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v8, "Mms/ConversationComposer"

    const-string v11, "onCreate start"

    invoke-static {v8, v11}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 267
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, action:Ljava/lang/String;
    const-string v8, "Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, ConversationListOn:Z
    const/4 v0, 0x0

    .line 272
    .local v0, ComposeMessageOn:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v7

    .line 274
    .local v7, useSplitView:Z
    const v8, 0x7f030021

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 278
    invoke-static {v5}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromRecvNotibar(Landroid/content/Intent;)Z

    move-result v4

    .line 279
    .local v4, fromRecvNotibar:Z
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 284
    invoke-direct {p0, v5, v2, p1, v10}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    .line 285
    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    if-eqz v8, :cond_1

    .line 286
    const-string v8, "kkahn/Mms/ConversationComposer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Invoking Folder View by : checkFolderViewInvoke] mFolderViewInvoking="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_1
    return-void

    .end local v4           #fromRecvNotibar:Z
    :cond_0
    move v8, v10

    .line 276
    goto :goto_0

    .line 291
    .restart local v4       #fromRecvNotibar:Z
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 292
    if-eqz v2, :cond_3

    const-string v8, "android.intent.action.SENDTO"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    :cond_2
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 296
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 297
    const-string v8, "fromFolderView"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v8, "exit_on_sent"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    :cond_3
    const v8, 0x7f0e00c9

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    .line 305
    const v8, 0x7f0e00cb

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 306
    const v8, 0x7f0e003c

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    .line 312
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 315
    invoke-static {v5}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v4, :cond_5

    .line 316
    :cond_4
    const-string v8, "Mms/ConversationComposer"

    const-string v11, "ConversationListOn true"

    invoke-static {v8, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const v8, 0x7f0e00ca

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v11, v5}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v8, v11, v13}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 318
    const/4 v1, 0x1

    .line 319
    if-eqz v4, :cond_5

    .line 320
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 324
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v8, :cond_e

    .line 325
    :cond_6
    const-string v8, "Mms/ConversationComposer"

    const-string v11, "ComposeMessageOn true"

    invoke-static {v8, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const v8, 0x7f0e00cc

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v11, v5}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v8, v13, v11}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 327
    const/4 v0, 0x1

    .line 332
    :cond_7
    :goto_2
    if-eqz v7, :cond_9

    .line 333
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->isIntentForContact(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "FromSearchActivity"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v9, :cond_f

    .line 335
    :cond_8
    const-string v8, "FromSearchView"

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 336
    const/4 v7, 0x0

    .line 347
    :cond_9
    :goto_3
    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    move v8, v9

    :goto_4
    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 349
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 351
    const-string v8, "fromFolderView"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v9, :cond_a

    .line 352
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 353
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 358
    :cond_a
    if-eqz v1, :cond_b

    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, key:Ljava/lang/String;
    if-eqz p1, :cond_b

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 362
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 365
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #key:Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_12

    .line 366
    const/4 v3, 0x0

    .line 367
    .restart local v3       #bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 368
    .restart local v6       #key:Ljava/lang/String;
    if-eqz p1, :cond_c

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 369
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 370
    invoke-static {v3, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    .line 372
    :cond_c
    if-eqz v3, :cond_d

    .line 373
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 375
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_d
    invoke-direct {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 394
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #key:Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    .line 395
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 398
    new-instance v8, Lcom/android/mms/ui/SipHandler;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v8, p0, v9}, Lcom/android/mms/ui/SipHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    .line 399
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v8}, Lcom/android/mms/ui/SipHandler;->registerReceiver()V

    .line 403
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->createMultiWindowInstance()Z

    .line 404
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->registerMultiWindowBroadcastReciver()Z

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    .line 407
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 409
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "onCreate end"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :cond_e
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    goto/16 :goto_2

    .line 338
    :cond_f
    const-string v8, "FromNestedSearchActivity"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v9, :cond_10

    .line 339
    const-string v8, "FromSearchView"

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 340
    const/4 v7, 0x0

    .line 341
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    goto/16 :goto_3

    .line 344
    :cond_10
    const-string v8, "FromSearchView"

    invoke-virtual {p0, v8, v10}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_11
    move v8, v10

    .line 347
    goto/16 :goto_4

    .line 378
    :cond_12
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v8, :cond_15

    .line 380
    const/4 v3, 0x0

    .line 381
    .restart local v3       #bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 382
    .restart local v6       #key:Ljava/lang/String;
    if-eqz p1, :cond_13

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 383
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 385
    :cond_13
    if-eqz v3, :cond_14

    .line 386
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 388
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_14
    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v8, v13, v5}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 389
    invoke-direct {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5

    .line 392
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #key:Ljava/lang/String;
    :cond_15
    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2206
    packed-switch p1, :pswitch_data_0

    .line 2216
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2208
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1007
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1008
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 1011
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    .line 1013
    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->unregisterReceiver()V

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1019
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->unregisterMultiWindowBroadcastReciver()Z

    .line 1022
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    if-nez v0, :cond_4

    .line 1023
    const-string v0, "FromSearchView"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1030
    :cond_5
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1351
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1352
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 1357
    :cond_0
    const/16 v1, 0x18

    if-eq v1, p1, :cond_1

    const/16 v1, 0x19

    if-eq v1, p1, :cond_1

    const/16 v1, 0xa8

    if-eq v1, p1, :cond_1

    const/16 v1, 0xa9

    if-ne v1, p1, :cond_2

    .line 1359
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1372
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1380
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return v2

    .line 1384
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 1385
    goto :goto_0

    .line 1390
    :cond_2
    if-ne p1, v6, :cond_16

    .line 1391
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "onKeyUp():KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1396
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1397
    .local v0, splitMode:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v4

    if-eq v4, v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_9

    .line 1401
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->getAnimationEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1402
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    goto :goto_0

    .line 1404
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1405
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_0

    .line 1406
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1407
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_0

    .line 1408
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1409
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    goto/16 :goto_0

    .line 1415
    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v4

    if-eq v4, v2, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eq v4, v2, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isSaveMode()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1424
    :cond_c
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1425
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 1426
    :cond_d
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1427
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 1429
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1430
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1431
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 1433
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1434
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isSaveMode()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1435
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSaveModeLayout(ZZ)V

    .line 1438
    :cond_10
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1439
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 1442
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-ne v4, v2, :cond_0

    .line 1443
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    goto/16 :goto_0

    .line 1450
    :cond_12
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v4, :cond_14

    if-ne v0, v2, :cond_14

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    .line 1451
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1452
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 1456
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1454
    :cond_13
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    .line 1461
    :cond_14
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 1462
    const-string v4, "FromSearchView"

    invoke-virtual {p0, v4, v3}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_15

    if-eq v0, v2, :cond_18

    .line 1463
    :cond_15
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 1475
    .end local v0           #splitMode:I
    :cond_16
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1482
    :cond_17
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_1b

    if-ne p1, v6, :cond_1b

    .line 1483
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_1b

    .line 1484
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 1485
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto/16 :goto_0

    .line 1464
    .restart local v0       #splitMode:I
    :cond_18
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isForwardedMessage()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1465
    :cond_19
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 1467
    .local v1, useSplitView:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1a

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1469
    :cond_1a
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_2

    .line 1491
    .end local v0           #splitMode:I
    .end local v1           #useSplitView:Z
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1040
    const-string v6, "Mms/ConversationComposer"

    const-string v7, "\tonNewIntent()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1054
    const-string v6, "Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    .line 1056
    .local v5, useSplitView:Z
    const-string v6, "FromSearchView"

    invoke-virtual {p0, v6, v10}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1057
    const/4 v5, 0x0

    .line 1059
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    .line 1062
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v6, :cond_1

    .line 1063
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-interface {v6}, Landroid/view/Menu;->close()V

    .line 1067
    :cond_1
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1068
    const-string v6, "QuickSearch"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, from:Ljava/lang/String;
    const-string v6, "query"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, mSearchWord:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1073
    if-eqz v2, :cond_3

    const-string v6, "QuickCommand"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 1075
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_3

    .line 1078
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    .line 1196
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #mSearchWord:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1086
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1087
    const-string v6, "Mms/ConversationComposer"

    const-string v7, "isIntentForApplication(), just bring to front"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1095
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-eqz v6, :cond_5

    .line 1096
    const-string v6, "Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent(), mFolderViewInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",so return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, p1, v0, v11, v9}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    .line 1104
    const-string v6, "kkahn/Mms/ConversationComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFolderViewInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-nez v6, :cond_2

    .line 1112
    .end local v0           #action:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .line 1115
    .local v1, forList:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1116
    :cond_7
    const/4 v1, 0x1

    .line 1118
    :cond_8
    if-eqz v1, :cond_a

    .line 1119
    const-string v6, "Mms/ConversationComposer"

    const-string v7, "isIntentForList(), show list"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_f

    const-string v6, "delete_threads"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1123
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v6, :cond_9

    .line 1124
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 1125
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    .line 1127
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6, v9, v9, v9}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayoutForOnNewIntent(ZZZ)V

    .line 1142
    :goto_1
    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 1145
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1147
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v4

    .line 1149
    .local v4, tempAnimationEnabled:Z
    if-nez v1, :cond_b

    .line 1150
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 1153
    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v6, :cond_13

    .line 1154
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1160
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_c

    .line 1161
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->dismissDeleteConfirmDialog()V

    .line 1164
    :cond_c
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v6

    if-ne v6, v9, :cond_d

    .line 1165
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6, v10, v9, v10}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayoutForOnNewIntent(ZZZ)V

    .line 1168
    :cond_d
    if-nez v1, :cond_e

    .line 1169
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 1195
    .end local v4           #tempAnimationEnabled:Z
    :cond_e
    :goto_3
    const-string v6, "Mms/ConversationComposer"

    const-string v7, "onNewIntent()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1129
    :cond_f
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_11

    const-string v6, "start_search"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1130
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v6, :cond_10

    .line 1131
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 1132
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    .line 1134
    :cond_10
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto :goto_1

    .line 1137
    :cond_11
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v6, :cond_12

    .line 1138
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 1140
    :cond_12
    const v6, 0x7f0e00ca

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v7, p1}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v6, v7, v11}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1

    .line 1156
    .restart local v4       #tempAnimationEnabled:Z
    :cond_13
    const v6, 0x7f0e00cc

    new-instance v7, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v7, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v6, v11, v7}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_2

    .line 1171
    .end local v4           #tempAnimationEnabled:Z
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1172
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 1173
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v6, :cond_15

    .line 1174
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_3

    .line 1176
    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    .line 1177
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v6, v11, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1178
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v6}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 1179
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v6}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_3

    .line 1191
    :cond_16
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v6, :cond_e

    .line 1192
    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2515
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(),item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 2535
    :goto_0
    return v1

    .line 2519
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2521
    .local v0, splitMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2522
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2523
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 2527
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2525
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2531
    goto :goto_0

    .line 2517
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 983
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 991
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 2223
    packed-switch p1, :pswitch_data_0

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2225
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->resetShowDialogTime(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2238
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const/4 v0, -0x1

    .line 2241
    .local v0, splitMode:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2244
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2245
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2248
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isRightScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2249
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)V

    .line 2252
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 2253
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V

    .line 2256
    :cond_3
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 2257
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 458
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2295
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 948
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 960
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 966
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 967
    .local v0, isAnimationEnable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    .line 975
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    .line 979
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 913
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 917
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 919
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 920
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 923
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 927
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 929
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1269
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1274
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 1276
    if-ne v0, v2, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v2

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 1289
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1290
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1301
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto :goto_0

    .line 1292
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1293
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_1

    .line 1294
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1295
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_1

    .line 1296
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1297
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 885
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\tonStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 887
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 888
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 890
    .local v0, useSplitView:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    if-ne v1, v4, :cond_1

    .line 893
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 909
    :cond_0
    return-void

    .line 895
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    .line 899
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 900
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    .line 902
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 995
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->savedSplitMode:I

    .line 1003
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 1036
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    .line 2403
    :goto_0
    return-void

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 2397
    :cond_1
    if-eqz p1, :cond_2

    .line 2399
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->hideSoftInputKeyboard()V

    .line 2402
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2160
    const-string v1, "cmas"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2161
    .local v0, isCmas:Ljava/lang/Boolean;
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of isCmas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2164
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 2166
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2167
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2171
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_1

    .line 2172
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    .line 2181
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    .line 2195
    :goto_1
    return-void

    .line 2174
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    .line 2175
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, v6, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2176
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 2177
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_0

    .line 2184
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_3

    .line 2185
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 2186
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 2188
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_4

    .line 2189
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 2191
    :cond_4
    const v1, 0x7f0e00cc

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v1, v6, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2192
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startMotionTutorialDialog()V

    goto :goto_1
.end method

.method public refreshSplitManager(Z)V
    .locals 7
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v6, 0x0

    .line 1990
    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 1996
    .local v1, useSplitView:Z
    const-string v2, "FromSearchView"

    invoke-virtual {p0, v2, v6}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1997
    const/4 v1, 0x0

    .line 2000
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getFirstItemId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 2004
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2005
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v6, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2006
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 2011
    :cond_4
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v2, v1, :cond_6

    .line 2013
    if-nez p1, :cond_0

    .line 2017
    if-eqz v1, :cond_5

    .line 2018
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2019
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2023
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 2021
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1

    .line 2025
    :cond_6
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 2026
    const/4 v0, 0x0

    .line 2027
    .local v0, splitMode:I
    if-eqz v1, :cond_9

    .line 2028
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2029
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2030
    const/4 v0, 0x2

    .line 2036
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 2038
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    .line 2040
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2041
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto/16 :goto_0

    .line 2032
    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method public removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "list"
    .parameter "composer"
    .parameter "value"

    .prologue
    .line 2362
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2363
    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2271
    const/4 v0, 0x0

    .line 2273
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 2285
    const/4 v0, 0x0

    .line 2287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requestSplitModeOnConverationList(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2281
    :goto_0
    return-void

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2263
    const/4 v0, 0x0

    .line 2265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setActionBarHomeAsUp(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1968
    .local v0, actionbar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1969
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1970
    return-void
.end method

.method public setConversationSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 2097
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2103
    :goto_0
    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setFromSearchView(Ljava/lang/String;Z)V
    .locals 4
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 2506
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "setFromSearchView() entered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "history_searchView"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2508
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2510
    return-void
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 2106
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 2112
    :goto_0
    return-void

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

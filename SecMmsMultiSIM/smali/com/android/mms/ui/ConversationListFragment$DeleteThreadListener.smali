.class public Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThreadListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationList.DeleteThreadListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"
    .parameter "threadIdList"

    .prologue
    const/4 v1, 0x0

    .line 2281
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2282
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    .line 2283
    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 2284
    iput-object p5, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 2286
    if-eqz p6, :cond_0

    .line 2287
    invoke-virtual {p6}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    .line 2292
    :goto_0
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 2293
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 2294
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 2298
    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$2800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;-><init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2702(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    .line 2299
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->initDeleteActionAnimation()V

    .line 2302
    return-void

    .line 2289
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2267
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 2267
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteActionAnimationStart([I)V
    .locals 2
    .parameter "delItem"

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->readyDeleteActionAnimMultiThread([I)V

    .line 2447
    return-void
.end method

.method private deleteRun()V
    .locals 5

    .prologue
    .line 2450
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    const-string v2, "deleteRun() start"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    .line 2511
    .local v0, deleteRun:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 2513
    return-void
.end method

.method private initDeleteActionAnimation()V
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2802(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 2414
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->setOnMsgDeleteActionAnimation(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;)V

    .line 2438
    return-void
.end method

.method private isAnimatableThread(J)Z
    .locals 4
    .parameter "threadID"

    .prologue
    const/4 v2, 0x1

    .line 2395
    const/4 v0, 0x0

    .line 2397
    .local v0, isAnimatable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2398
    const/4 v0, 0x1

    .line 2404
    :goto_0
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnimatableThread threadID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAnimatable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    return v0

    .line 2399
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-ne v1, v2, :cond_1

    .line 2400
    const/4 v0, 0x1

    goto :goto_0

    .line 2402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2327
    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick(),whichButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-nez v7, :cond_2

    .line 2330
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    .line 2388
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 2389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2391
    return-void

    .line 2332
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->createDeleteActionThreadAnim()Landroid/view/animation/Animation;

    .line 2334
    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 2337
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2339
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2341
    .local v2, deleteCount:I
    const/4 v3, -0x1

    .line 2342
    .local v3, messagePosition:I
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v7

    new-array v1, v7, [I

    .line 2344
    .local v1, delItem:[I
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2346
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2347
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2349
    .local v5, threadID:J
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2357
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2358
    if-lez v2, :cond_5

    .line 2359
    new-array v4, v2, [I

    .line 2360
    .local v4, realDelItem:[I
    invoke-static {v1, v11, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2361
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    .line 2365
    .end local v4           #realDelItem:[I
    .end local v5           #threadID:J
    :cond_5
    if-nez v2, :cond_1

    .line 2367
    array-length v7, v1

    if-lez v7, :cond_6

    .line 2368
    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeleteThreadListener onClick() deleteCount == 0 delItem.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    .line 2372
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2373
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    goto/16 :goto_0

    .line 2352
    .restart local v5       #threadID:J
    :cond_7
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2355
    add-int/lit8 v2, v2, 0x1

    .line 2356
    add-int/lit8 v7, v2, -0x1

    aput v3, v1, v7

    goto :goto_1

    .line 2375
    .end local v5           #threadID:J
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v7, v11, v12, v11}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto/16 :goto_0

    .line 2379
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #delItem:[I
    .end local v2           #deleteCount:I
    .end local v3           #messagePosition:I
    :cond_9
    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2380
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    goto/16 :goto_0

    .line 2382
    :cond_a
    new-array v1, v12, [I

    .line 2383
    .restart local v1       #delItem:[I
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v7

    aput v7, v1, v11

    .line 2384
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    goto/16 :goto_0
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .parameter "deleteDraftMessages"

    .prologue
    .line 2306
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 2307
    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 2313
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 2314
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .parameter "handler"

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 2319
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .parameter "hasLockedMessages"

    .prologue
    .line 2323
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 2324
    return-void
.end method

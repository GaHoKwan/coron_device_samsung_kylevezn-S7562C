.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static DRAFT_TEXT_COLOR:I = 0x0

.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static THREAD_STATUS_TEXT_COLOR:I


# instance fields
.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mDateFormatContentObserver:Landroid/database/ContentObserver;

.field private mShouldShowViewMore:Z

.field private mTimeFormatContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    .line 473
    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$2;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 85
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    .line 88
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 89
    const-string v1, "Mms/WidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsFactory intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    .line 103
    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->notifyDataChanged()V

    return-void
.end method

.method private addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "text"
    .parameter "color"

    .prologue
    .line 249
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 251
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    :cond_0
    return-object v0
.end method

.method private getConversationCount()I
    .locals 3

    .prologue
    .line 234
    const-string v0, "Mms/WidgetService"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    monitor-exit v1

    .line 240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x7f0e024d

    .line 407
    const-string v2, "Mms/WidgetService"

    const-string v3, "getViewMoreConversationsView"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03009f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 416
    .local v1, view:Landroid/widget/RemoteViews;
    const v2, 0x7f0e024e

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 417
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 418
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0a04d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, convIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const-string v2, "fromWidget"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    :cond_0
    const v2, 0x7f0e024c

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 428
    return-object v1
.end method

.method private notifyDataChanged()V
    .locals 3

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 484
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0e024a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 486
    return-void
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v2, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 157
    .local v2, projection:[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date DESC,_id DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, order:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 153
    .end local v2           #projection:[Ljava/lang/String;
    .end local v5           #order:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 161
    :cond_1
    const-string v5, "date DESC,_id DESC"

    .restart local v5       #order:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    const-string v3, "Mms/WidgetService"

    const-string v4, "getCount"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 217
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 218
    monitor-exit v4

    .line 222
    :goto_0
    return v1

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v0

    .line 221
    .local v0, count:I
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 222
    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v1, v0

    monitor-exit v4

    goto :goto_0

    .line 223
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #count:I
    :cond_2
    move v3, v1

    .line 221
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 450
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const v3, 0x7f0e024d

    .line 433
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03009f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 436
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0e024e

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 438
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 440
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .parameter "position"

    .prologue
    .line 262
    const-string v7, "Mms/WidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getViewAt position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 265
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v8

    .line 398
    :goto_0
    return-object v5

    .line 270
    :cond_1
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 274
    const-string v7, "Mms/WidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to move to position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v8

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 278
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-static {v7, v9}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 282
    .local v1, conv:Lcom/android/mms/data/Conversation;
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f03009f

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 285
    .local v5, remoteViews:Landroid/widget/RemoteViews;
    const v7, 0x7f0e024e

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    const v7, 0x7f0e024d

    const/16 v9, 0x8

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 304
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_5

    .line 305
    :cond_3
    const v7, 0x7f0e00d9

    const/16 v9, 0x8

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 317
    .local v4, recipients:Lcom/android/mms/data/ContactList;
    const-string v7, ", "

    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, from:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 319
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 320
    const v7, 0x7f0e00dc

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0188

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 354
    :goto_2
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_b

    .line 355
    const v7, 0x7f0e00a2

    const/16 v9, 0x8

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 361
    :goto_3
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v6

    .line 362
    .local v6, unreadCount:I
    if-lez v6, :cond_c

    .line 363
    const v7, 0x7f0e00d7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const v7, 0x7f0e00d7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 368
    :goto_4
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 369
    const v7, 0x7f0e00d6

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v10, 0x7f0a000e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 370
    const v7, 0x7f0e00d6

    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 386
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, clickIntent:Landroid/content/Intent;
    const-string v7, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const/high16 v7, 0x3400

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 391
    const-string v7, "thread_id"

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v0, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 392
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 393
    const-string v7, "fromWidget"

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    :cond_4
    const v7, 0x7f0e024c

    invoke-virtual {v5, v7, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 398
    monitor-exit v8

    goto/16 :goto_0

    .line 307
    .end local v0           #clickIntent:Landroid/content/Intent;
    .end local v2           #from:Ljava/lang/String;
    .end local v4           #recipients:Lcom/android/mms/data/ContactList;
    .end local v6           #unreadCount:I
    :cond_5
    const v7, 0x7f0e00d9

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    const v7, 0x7f0e00d9

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 323
    .restart local v2       #from:Ljava/lang/String;
    .restart local v4       #recipients:Lcom/android/mms/data/ContactList;
    :cond_6
    const v7, 0x7f0e00dc

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 327
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_8

    .line 328
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, number:Ljava/lang/String;
    const-string v7, "CBmessages"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 331
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0a0132

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .end local v3           #number:Ljava/lang/String;
    :cond_8
    :goto_6
    const-string v7, "#CMAS#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 338
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    :cond_9
    const v7, 0x7f0e00dc

    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 332
    .restart local v3       #number:Ljava/lang/String;
    :cond_a
    const-string v7, "Pushmessage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 333
    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0a01bb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 357
    .end local v3           #number:Ljava/lang/String;
    :cond_b
    const v7, 0x7f0e00a2

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 358
    const v7, 0x7f0e00a2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 366
    .restart local v6       #unreadCount:I
    :cond_c
    const v7, 0x7f0e00d7

    const/16 v9, 0x8

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 371
    :cond_d
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 372
    const v7, 0x7f0e00d6

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0184

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    const v7, 0x7f0e00d6

    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->DRAFT_TEXT_COLOR:I

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_5

    .line 375
    :cond_e
    const v7, 0x7f0e00d6

    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->THREAD_STATUS_TEXT_COLOR:I

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 377
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 378
    const v7, 0x7f0e00d6

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0183

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 379
    :cond_f
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 380
    const v7, 0x7f0e00d6

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v10, 0x7f0a00c8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 382
    :cond_10
    const v7, 0x7f0e00d6

    const-string v9, ""

    invoke-virtual {v5, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    const-string v2, "Mms/WidgetService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 111
    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, dateFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, timeFormatUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "Mms/WidgetService"

    const-string v1, "onDataSetChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "Mms/WidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mDateFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mTimeFormatContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3
    .parameter "updated"

    .prologue
    .line 459
    const-string v0, "Mms/WidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate from Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0e024a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 462
    return-void
.end method

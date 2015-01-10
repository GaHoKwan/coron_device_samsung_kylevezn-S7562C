.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri; = null

.field private static final SEARCH_QUERY_TOKEN:I = 0x1fa4

.field private static final TAG:Ljava/lang/String; = "Mms/SearchActivity"


# instance fields
.field private final ViewKeyListener:Landroid/view/View$OnKeyListener;

.field public mBubbleStartIdx:I

.field mBubbleTitle:Ljava/lang/String;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

.field mSearchString:Ljava/lang/String;

.field public mThreadStartIdx:I

.field mThreadTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "messages/bystring"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 74
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    .line 88
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 364
    new-instance v0, Lcom/android/mms/ui/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$4;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 507
    new-instance v0, Lcom/android/mms/ui/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$5;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    return-void
.end method

.method private getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 442
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, searchString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    .line 456
    :goto_0
    return-object v2

    .line 446
    :cond_0
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 451
    .local v1, searchUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 452
    const-string v2, "pattern"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    .line 456
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 460
    if-nez p1, :cond_0

    const-string v0, ""

    .line 461
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSeparatorInfo(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, thread_count:I
    const/4 v2, 0x0

    .line 542
    .local v2, message_count:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 544
    .local v1, cursorCount:I
    if-gtz v1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 549
    :cond_1
    const-string v4, "listorder"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 550
    .local v0, ListOrder:I
    if-nez v0, :cond_7

    .line 551
    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    if-ne v4, v7, :cond_2

    .line 552
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 553
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DJTASHA] mSearchThreadStratId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 566
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 569
    .end local v0           #ListOrder:I
    :cond_4
    if-lez v3, :cond_5

    .line 570
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    .line 572
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DJTASHA] mThreadTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_5
    if-lez v2, :cond_6

    .line 576
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    .line 578
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DJTASHA] mBubbleTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget v5, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity;->mThreadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/ui/SearchListAdapter;->setThreadInfo(JLjava/lang/String;)V

    .line 582
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget v5, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/ui/SearchListAdapter;->setBubbleInfo(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 558
    .restart local v0       #ListOrder:I
    :cond_7
    if-ne v0, v8, :cond_3

    .line 559
    iget v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    if-ne v4, v7, :cond_8

    .line 560
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 561
    const-string v4, "Mms/SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DJTASHA] mSearchMessageStratIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 467
    const-string v0, "Mms/SearchActivity"

    const-string v1, "show progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 8
    .parameter "_searchString"

    .prologue
    const/16 v1, 0x1fa4

    .line 482
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    const-string v0, "Mms/SearchActivity"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    const-string v0, "Mms/SearchActivity"

    const-string v2, "startQuery"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "pattern"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 494
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "thread_id<>?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->showProgressDialog()V

    goto :goto_0
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 477
    const-string v0, "Mms/SearchActivity"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v7, 0x42

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 244
    const-string v3, "Mms/SearchActivity"

    const-string v4, "onCreate(), intent=xxxx"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v3, 0x7f030079

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    .line 254
    iput v5, p0, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    .line 255
    iput v5, p0, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    .line 257
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 263
    .local v1, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    new-instance v3, Lcom/android/mms/ui/SearchListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SearchListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SearchListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V

    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    invoke-virtual {p0, v3}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 289
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    if-eqz v2, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 357
    const-string v3, ""

    const v4, 0x7f0a01e4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 358
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 360
    const-string v3, "Mms/SearchActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 294
    :cond_2
    if-eqz v1, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->ViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 586
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 588
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 431
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 432
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    .line 434
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 517
    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    .line 527
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 529
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 594
    const-string v0, "Mms/SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() : item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 603
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 598
    :pswitch_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setHighlightMsgID(J)V

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 600
    const/4 v0, 0x1

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 402
    const-string v1, "Mms/SearchActivity"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 406
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 409
    :cond_0
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 410
    .local v0, emptyText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 411
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 415
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->hideProgressDialog()V

    .line 426
    return-void
.end method

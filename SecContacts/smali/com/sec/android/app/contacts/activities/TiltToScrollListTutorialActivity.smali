.class public Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "TiltToScrollListTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x6dt 0x6t 0x2t 0x7ft
        0x6et 0x6t 0x2t 0x7ft
        0x6ft 0x6t 0x2t 0x7ft
        0x70t 0x6t 0x2t 0x7ft
        0x71t 0x6t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 149
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mRetryDialog:Landroid/app/AlertDialog;

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 159
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 165
    new-instance v0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 552
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    return-void
.end method

.method private setActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 283
    .local v1, actionBar:Landroid/app/ActionBar;
    const/16 v0, 0x1e

    .line 291
    .local v0, MASK:I
    const/4 v3, 0x0

    .line 293
    .local v3, newFlags:I
    or-int/lit8 v3, v3, 0x8

    .line 295
    or-int/lit8 v3, v3, 0x2

    .line 297
    or-int/lit8 v3, v3, 0x10

    .line 301
    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 307
    const v4, 0x7f0d03eb

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 313
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040179

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 315
    .local v2, infoView:Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private setFastScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    const v3, 0x7f090170

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 390
    .local v2, twIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "dummy"

    aput-object v4, v3, v5

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 392
    .local v0, cursor:Landroid/database/MatrixCursor;
    new-array v3, v6, [Ljava/lang/String;

    const v4, 0x7f0d0017

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 398
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0d0008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 416
    .local v1, twCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    .line 426
    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 428
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 430
    return-void

    .line 408
    .end local v1           #twCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0d02a3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .restart local v1       #twCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    goto :goto_1
.end method

.method private setListView()V
    .locals 2

    .prologue
    .line 376
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    return-void
.end method

.method private setSearchView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 348
    const v3, 0x7f09016a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, createButton:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    const v3, 0x7f090169

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 354
    .local v1, customSearchView:Landroid/widget/SearchView;
    const v3, 0x7f090190

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 356
    .local v2, menuButton:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 362
    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 364
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 366
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 368
    const v3, 0x7f0d01df

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 532
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    .line 536
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationImage:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 500
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    .line 508
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f0400dd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setContentView(I)V

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setActionBar()V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setSearchView()V

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setListView()V

    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setFastScroll()V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->unregisterTiltMotion()V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 217
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 227
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 231
    .local v0, currentRotation:I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCurrentOrientationModeForTiltMotion(I)V

    .line 251
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->registerTiltMotion()V

    .line 253
    return-void

    .line 237
    :cond_2
    if-ne v0, v3, :cond_3

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCurrentOrientationModeForTiltMotion(I)V

    goto :goto_0

    .line 243
    :cond_3
    if-ne v0, v5, :cond_1

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setCurrentOrientationModeForTiltMotion(I)V

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 444
    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 450
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 452
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04008a

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 454
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 456
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0901e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 460
    const v4, 0x7f0d03ea

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 462
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 464
    const v4, 0x7f0d03e9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 466
    const v4, 0x7f0d03e7

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 470
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 472
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 482
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->startAnimation()V

    .line 484
    return-void
.end method

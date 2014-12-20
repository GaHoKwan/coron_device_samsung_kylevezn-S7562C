.class Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;
.super Ljava/lang/Object;
.source "ParentControlLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mCancelButton:Landroid/widget/Button;

.field private mEight:Landroid/widget/Button;

.field private mFive:Landroid/widget/Button;

.field private mFour:Landroid/widget/Button;

.field private mNine:Landroid/widget/Button;

.field private mOne:Landroid/widget/Button;

.field private mSeven:Landroid/widget/Button;

.field private mSix:Landroid/widget/Button;

.field private mThree:Landroid/widget/Button;

.field private mTwo:Landroid/widget/Button;

.field private mZero:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const v0, 0x1020379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/Button;

    .line 418
    const v0, 0x1020370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/Button;

    .line 419
    const v0, 0x1020371

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/Button;

    .line 420
    const v0, 0x1020372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/Button;

    .line 421
    const v0, 0x1020373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/Button;

    .line 422
    const v0, 0x1020374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/Button;

    .line 423
    const v0, 0x1020375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/Button;

    .line 424
    const v0, 0x1020376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/Button;

    .line 425
    const v0, 0x1020377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/Button;

    .line 426
    const v0, 0x1020378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/Button;

    .line 427
    const v0, 0x10202a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mCancelButton:Landroid/widget/Button;

    .line 428
    const v0, 0x1020353

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/Button;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/Button;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/Button;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/Button;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/Button;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/Button;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/Button;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/Button;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/Button;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/Button;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 472
    const/4 v0, -0x1

    .line 473
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mZero:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 474
    const/4 v0, 0x0

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mOne:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 476
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mTwo:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 478
    const/4 v0, 0x2

    goto :goto_0

    .line 479
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mThree:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 480
    const/4 v0, 0x3

    goto :goto_0

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFour:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 482
    const/4 v0, 0x4

    goto :goto_0

    .line 483
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mFive:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 484
    const/4 v0, 0x5

    goto :goto_0

    .line 485
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSix:Landroid/widget/Button;

    if-ne p1, v1, :cond_7

    .line 486
    const/4 v0, 0x6

    goto :goto_0

    .line 487
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mSeven:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 488
    const/4 v0, 0x7

    goto :goto_0

    .line 489
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mEight:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 490
    const/16 v0, 0x8

    goto :goto_0

    .line 491
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mNine:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 492
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mBackButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->handleBackButton()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$400(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->resetPIN()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$500(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 465
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$600(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;I)V

    goto :goto_0
.end method

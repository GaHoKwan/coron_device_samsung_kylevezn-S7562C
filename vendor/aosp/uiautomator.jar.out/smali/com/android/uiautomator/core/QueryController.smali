.class Lcom/android/uiautomator/core/QueryController;
.super Ljava/lang/Object;
.source "QueryController.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLastActivityName:Ljava/lang/String;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastTraversedText:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLogIndent:I

.field private mLogParentIndent:I

.field private mPatternCounter:I

.field private mPatternIndexer:I

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 3
    .parameter "bridge"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    .line 41
    iput-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mLastPackageName:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 47
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 53
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 54
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 60
    new-instance v0, Lcom/android/uiautomator/core/QueryController$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController$1;-><init>(Lcom/android/uiautomator/core/QueryController;)V

    invoke-virtual {p1, v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->addAccessibilityEventListener(Lcom/android/uiautomator/core/UiAutomatorBridge$AccessibilityEventListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    return-object p1
.end method

.method private findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .parameter "subSelector"
    .parameter "fromNode"
    .parameter "index"
    .parameter "originalPattern"

    .prologue
    .line 410
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    if-nez v5, :cond_0

    move-object v4, p2

    .line 483
    :goto_0
    return-object v4

    .line 421
    :cond_0
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 422
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 428
    move-object p1, p4

    .line 430
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 458
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 459
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 460
    .local v2, hasNullChild:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_8

    .line 461
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 462
    .local v1, childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_7

    .line 463
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "AccessibilityNodeInfo returned a null child (%d of %d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-nez v2, :cond_2

    .line 466
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "parent = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_2
    const/4 v2, 0x1

    .line 460
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    .end local v0           #childCount:I
    .end local v1           #childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2           #hasNullChild:Z
    .end local v3           #i:I
    :cond_4
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 438
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 439
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 440
    if-nez p1, :cond_1

    .line 441
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: A child selector without content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v4, 0x0

    goto :goto_0

    .line 444
    :cond_5
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 446
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 447
    if-nez p1, :cond_6

    .line 448
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: A parent selector without content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 451
    :cond_6
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 452
    if-nez p2, :cond_1

    .line 453
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 471
    .restart local v0       #childCount:I
    .restart local v1       #childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2       #hasNullChild:Z
    .restart local v3       #i:I
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 479
    .local v4, retNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 483
    .end local v1           #childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4           #retNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12
    .parameter "subSelector"
    .parameter "fromNode"
    .parameter "index"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 297
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, p2

    .line 352
    :goto_0
    return-object v4

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    iget v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 307
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 308
    if-nez p1, :cond_3

    .line 309
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error: A child selector without content"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 310
    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    iget v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 314
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 315
    if-nez p1, :cond_2

    .line 316
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error: A parent selector without content"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 317
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 322
    if-nez p2, :cond_3

    move-object v4, v5

    .line 323
    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 328
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 329
    .local v2, hasNullChild:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 330
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 331
    .local v1, childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_6

    .line 332
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "AccessibilityNodeInfo returned a null child (%d of %d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-nez v2, :cond_4

    .line 335
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "parent = %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_4
    const/4 v2, 0x1

    .line 329
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 340
    :cond_6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 347
    invoke-direct {p0, p1, v1, v3}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 348
    .local v4, retNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_5

    goto/16 :goto_0

    .end local v1           #childNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4           #retNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_7
    move-object v4, v5

    .line 352
    goto/16 :goto_0
.end method

.method private formatLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v0, l:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, space:I
    :goto_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    if-ge v1, v2, :cond_0

    .line 515
    const-string v2, ". . "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    if-lez v2, :cond_1

    .line 517
    const-string v2, ". . [%d]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 519
    :cond_1
    const-string v2, ". . [%d]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private initializeNewSearch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 116
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 117
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 118
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 119
    return-void
.end method

.method private translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .parameter "selector"
    .parameter "fromNode"
    .parameter "isCounting"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2, v5}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 228
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    .line 234
    :goto_0
    if-nez p2, :cond_3

    .line 271
    :cond_0
    :goto_1
    return-object v0

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/uiautomator/core/QueryController;->translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 244
    if-eqz p3, :cond_4

    .line 245
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Counted %d instances of: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    :cond_4
    if-eqz p2, :cond_0

    .line 260
    :cond_5
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 261
    :cond_6
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 262
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 265
    :cond_8
    if-eqz p2, :cond_0

    .line 270
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Matched selector: %s <<==>> [%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 271
    goto :goto_1
.end method

.method private translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .parameter "subSelector"
    .parameter "fromNode"
    .parameter "isCounting"

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    if-eqz p3, :cond_0

    .line 385
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 391
    :goto_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 392
    if-nez p1, :cond_1

    .line 393
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Pattern portion of the selector is null or not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_1
    return-object v0

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getInstance()I

    move-result v1

    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    goto :goto_0

    .line 398
    :cond_1
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p1}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_2
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Selector must have a pattern selector defined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter "selector"
    .parameter "fromNode"

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 109
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter "selector"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .parameter "selector"
    .parameter "isCounting"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 146
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    .line 151
    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 153
    .local v0, rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 154
    sget-object v2, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Cannot proceed when root node is null. Aborted search"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    monitor-exit v3

    .line 160
    :goto_0
    return-object v2

    .line 159
    :cond_0
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 160
    .local v1, uiSelector:Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {p0, v1, v0, p2}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 161
    .end local v0           #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1           #uiSelector:Lcom/android/uiautomator/core/UiSelector;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->getRootAccessibilityNodeInfoInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 496
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 507
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 95
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    monitor-exit v1

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    monitor-exit v1

    .line 100
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 1
    .parameter "selector"

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 131
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    return v0
.end method

.method protected getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    .line 170
    const/4 v0, 0x4

    .line 171
    .local v0, maxRetry:I
    const-wide/16 v3, 0xfa

    .line 172
    .local v3, waitInterval:J
    const/4 v1, 0x0

    .line 173
    .local v1, rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .local v5, x:I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 174
    iget-object v6, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v6}, Landroid/accessibilityservice/UiTestAutomationBridge;->getRootAccessibilityNodeInfoInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 183
    .end local v1           #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v2, rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    return-object v2

    .line 178
    .end local v2           #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1       #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 179
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got null root node from accessibility - Retrying..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v6, 0xfa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 173
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 183
    .end local v1           #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2       #rootNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1
.end method

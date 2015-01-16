.class public Lcom/android/uiautomator/core/UiObject;
.super Ljava/lang/Object;
.source "UiObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final SWIPE_MARGIN_LIMIT:I = 0x5

.field protected static final WAIT_FOR_SELECTOR_POLL:J = 0x3e8L

.field protected static final WAIT_FOR_SELECTOR_TIMEOUT:J = 0x2710L

.field protected static final WAIT_FOR_WINDOW_TMEOUT:J = 0x157cL


# instance fields
.field private mSelector:Lcom/android/uiautomator/core/UiSelector;

.field private final mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 53
    iput-object p1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    .line 54
    return-void
.end method

.method private getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .parameter "node"

    .prologue
    .line 280
    move-object v0, p1

    .line 281
    .local v0, parent:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 287
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 3
    .parameter "node"

    .prologue
    .line 248
    if-nez p1, :cond_1

    .line 249
    const/4 v0, 0x0

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 254
    .local v0, nodeRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;->getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 258
    .local v2, scrollableParentNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_0

    .line 264
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 265
    .local v1, parentRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "cs"

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    const-string v0, ""

    .line 713
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearTextField()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 476
    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v3, v4}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 477
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 478
    new-instance v3, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 480
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 481
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/InteractionController;->longTap(II)Z

    .line 483
    new-instance v2, Lcom/android/uiautomator/core/UiObject;

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v3}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    const-string v4, "Select all"

    invoke-virtual {v3, v4}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 484
    .local v2, selectAll:Lcom/android/uiautomator/core/UiObject;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiObject;->click()Z

    .line 487
    :cond_1
    const-wide/16 v3, 0xfa

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 489
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v3

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 490
    return-void
.end method

.method public click()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 302
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 303
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 306
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->click(II)Z

    move-result v2

    return v2
.end method

.method public clickAndWaitForNewWindow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 318
    const-wide/16 v0, 0x157c

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->clickAndWaitForNewWindow(J)Z

    move-result v0

    return v0
.end method

.method public clickAndWaitForNewWindow(J)Z
    .locals 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 335
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 336
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 337
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 340
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForNewWindow(IIJ)Z

    move-result v2

    return v2
.end method

.method public clickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 381
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 382
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 383
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 386
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->click(II)Z

    move-result v2

    return v2
.end method

.method public clickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 351
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 352
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 353
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 356
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->click(II)Z

    move-result v2

    return v2
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 707
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v0

    return v0
.end method

.method protected findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .parameter "timeout"

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->isInWatcherContext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 158
    :cond_0
    return-object v2

    .line 143
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 144
    .local v3, startMills:J
    const-wide/16 v0, 0x0

    .line 145
    .local v0, currentMills:J
    :cond_2
    :goto_0
    cmp-long v5, v0, p1

    if-gtz v5, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 147
    if-nez v2, :cond_0

    .line 150
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->runWatchers()V

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 153
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_2

    .line 154
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 653
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 654
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 655
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 658
    .local v1, nodeRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 660
    return-object v1
.end method

.method public getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .parameter "selector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getChildCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 120
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 121
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    return v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 442
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 443
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 444
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .parameter "selector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 624
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 625
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 626
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    return-object v0
.end method

.method public final getSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 426
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 427
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 428
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, retVal:Ljava/lang/String;
    sget-object v2, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getText() = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v1
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 639
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 640
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 641
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public isCheckable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 526
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 527
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 528
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    return v1
.end method

.method public isChecked()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 498
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 499
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 500
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    return v1
.end method

.method public isClickable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 554
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 555
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 556
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    return v1
.end method

.method public isEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 540
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 541
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 542
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public isFocusable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 582
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 583
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 584
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    return v1
.end method

.method public isFocused()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 568
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 569
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 570
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    return v1
.end method

.method public isLongClickable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 610
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 611
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 612
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    return v1
.end method

.method public isScrollable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 596
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 597
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 598
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    return v1
.end method

.method public isSelected()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 512
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 513
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    return v1
.end method

.method public longClick()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 396
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 397
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 398
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 401
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTap(II)Z

    move-result v2

    return v2
.end method

.method public longClickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 366
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 367
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 368
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 371
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTap(II)Z

    move-result v2

    return v2
.end method

.method public longClickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 411
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 412
    .local v0, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 413
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 416
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTap(II)Z

    move-result v2

    return v2
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->clearTextField()V

    .line 462
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->sendText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeDown(I)Z
    .locals 7
    .parameter "steps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 194
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeLeft(I)Z
    .locals 7
    .parameter "steps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 215
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeRight(I)Z
    .locals 7
    .parameter "steps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 235
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeUp(I)Z
    .locals 7
    .parameter "steps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 173
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public waitForExists(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitUntilGone(J)Z
    .locals 8
    .parameter "timeout"

    .prologue
    const-wide/16 v6, 0x0

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 687
    .local v2, startMills:J
    const-wide/16 v0, 0x0

    .line 688
    .local v0, currentMills:J
    :cond_0
    :goto_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_2

    .line 689
    invoke-virtual {p0, v6, v7}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 690
    const/4 v4, 0x1

    .line 695
    :goto_1
    return v4

    .line 691
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 692
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    .line 693
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 695
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

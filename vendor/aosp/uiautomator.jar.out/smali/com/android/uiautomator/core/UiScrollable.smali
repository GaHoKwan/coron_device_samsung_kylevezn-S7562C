.class public Lcom/android/uiautomator/core/UiScrollable;
.super Lcom/android/uiautomator/core/UiCollection;
.source "UiScrollable.java"


# static fields
.field private static final DEFAULT_SWIPE_DEADZONE_PCT:D = 0.1

.field private static final FLING_STEPS:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SCROLL_STEPS:I = 0x37

.field private static mMaxSearchSwipes:I


# instance fields
.field private mIsVerticalList:Z

.field private mSwipeDeadZonePercentage:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/uiautomator/core/UiScrollable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x1e

    sput v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiCollection;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 43
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 56
    return-void
.end method


# virtual methods
.method protected exists(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 1
    .parameter "selector"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flingBackward()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public flingForward()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public flingToBeginning(I)Z
    .locals 1
    .parameter "maxSwipes"

    .prologue
    .line 428
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public flingToEnd(I)Z
    .locals 1
    .parameter "maxSwipes"

    .prologue
    .line 466
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 1
    .parameter "childPattern"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/uiautomator/core/UiScrollable;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .parameter "childPattern"
    .parameter "text"
    .parameter "allowScrollSearch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p2, :cond_1

    .line 118
    if-eqz p3, :cond_0

    .line 119
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for description= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .parameter "childPattern"
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 141
    .local v0, patternSelector:Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 1
    .parameter "childPattern"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/uiautomator/core/UiScrollable;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 3
    .parameter "childPattern"
    .parameter "text"
    .parameter "allowScrollSearch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p2, :cond_1

    .line 178
    if-eqz p3, :cond_0

    .line 179
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0

    .line 183
    :cond_1
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for text= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSearchSwipes()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    return v0
.end method

.method public getSwipeDeadZonePercentage()D
    .locals 2

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    return-wide v0
.end method

.method public scrollBackward()Z
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public scrollBackward(I)Z
    .locals 13
    .parameter "steps"

    .prologue
    .line 355
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollBackward() on selector = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-wide/16 v9, 0x2710

    invoke-virtual {p0, v9, v10}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 357
    .local v6, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 361
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 362
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, downX:I
    const/4 v2, 0x0

    .line 366
    .local v2, downY:I
    const/4 v3, 0x0

    .line 367
    .local v3, upX:I
    const/4 v4, 0x0

    .line 371
    .local v4, upY:I
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v9, v0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 373
    .local v8, swipeAreaAdjust:I
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    const-string v5, "scrollToBegining() using vertical scroll"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 376
    iget v0, v7, Landroid/graphics/Rect;->top:I

    add-int v2, v0, v8

    .line 377
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 378
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v8

    .line 389
    :goto_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    move-result v0

    goto :goto_0

    .line 380
    .end local v8           #swipeAreaAdjust:I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v9, v0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 381
    .restart local v8       #swipeAreaAdjust:I
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    const-string v5, "scrollToBegining() using hotizontal scroll"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int v1, v0, v8

    .line 385
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 386
    iget v0, v7, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v8

    .line 387
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_1
.end method

.method public scrollDescriptionIntoView(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 194
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollForward()Z
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public scrollForward(I)Z
    .locals 13
    .parameter "steps"

    .prologue
    .line 291
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollForward() on selector = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-wide/16 v9, 0x2710

    invoke-virtual {p0, v9, v10}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 293
    .local v6, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    .line 297
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, downX:I
    const/4 v2, 0x0

    .line 302
    .local v2, downY:I
    const/4 v3, 0x0

    .line 303
    .local v3, upX:I
    const/4 v4, 0x0

    .line 307
    .local v4, upY:I
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v9, v0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 310
    .local v8, swipeAreaAdjust:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 311
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v8

    .line 312
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 313
    iget v0, v7, Landroid/graphics/Rect;->top:I

    add-int v4, v0, v8

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    move-result v0

    goto :goto_0

    .line 315
    .end local v8           #swipeAreaAdjust:I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v9, v0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 318
    .restart local v8       #swipeAreaAdjust:I
    iget v0, v7, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v8

    .line 319
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 320
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int v3, v0, v8

    .line 321
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_1
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 4
    .parameter "selector"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    sget v3, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(I)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    sget v3, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    if-ge v0, v3, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public scrollTextIntoView(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 235
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(I)Z
    .locals 1
    .parameter "maxSwipes"

    .prologue
    .line 418
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(II)Z
    .locals 4
    .parameter "maxSwipes"
    .parameter "steps"

    .prologue
    .line 401
    sget-object v1, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToBeginning() on selector = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 404
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 403
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public scrollToEnd(I)Z
    .locals 1
    .parameter "maxSwipes"

    .prologue
    .line 456
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public scrollToEnd(II)Z
    .locals 2
    .parameter "maxSwipes"
    .parameter "steps"

    .prologue
    .line 441
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 442
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 441
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAsHorizontalList()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 70
    return-void
.end method

.method public setAsVerticalList()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 63
    return-void
.end method

.method public setMaxSearchSwipes(I)V
    .locals 0
    .parameter "swipes"

    .prologue
    .line 247
    sput p1, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    .line 248
    return-void
.end method

.method public setSwipeDeadZonePercentage(D)V
    .locals 0
    .parameter "swipeDeadZonePercentage"

    .prologue
    .line 474
    iput-wide p1, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 475
    return-void
.end method

.class public abstract Lcom/sec/android/touchwiz/widget/TwCompoundButton;
.super Landroid/widget/Button;
.source "TwCompoundButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$1;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final CHECK_ANIMATION_DURATION:I = 0x190

.field private static final PRESSED_STATE:I = 0x10100a7


# instance fields
.field protected TW_AIR_VIEW_WINSET:Z

.field private mAssociatedTextView:Landroid/widget/TextView;

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mCheckBoxAnimationEnabled:Z

.field private mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkAnimating:Z

.field private mCheckMarkAnimationCurrentValue:F

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

.field mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    .line 67
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 69
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->TW_AIR_VIEW_WINSET:Z

    .line 70
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->TW_AIR_VIEW_WINSET:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    .line 97
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->TW_AIR_VIEW_WINSET:Z

    if-eqz v3, :cond_1

    .line 106
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_1
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 112
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    const-string v3, "checkbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMarkDrawable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", checkRectangleDrawable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 412
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 414
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 418
    .local v2, myDrawableState:[I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 422
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 424
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 429
    const-string v0, ""

    .line 430
    .local v0, drawableStates:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 431
    aget v3, v2, v1

    sget-object v4, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_1

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "myDrawableState[i] == CHECKED_STATE_SET[0] -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_1
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "myDrawableState[i] == PRESSED_STATE -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 438
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 442
    :cond_3
    const-string v3, "checkbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawableStateChanged(), mydrawableState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0           #drawableStates:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #myDrawableState:[I
    :cond_4
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 455
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 152
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 157
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationEnd(Landroid/animation/Animator;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    .line 169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationStart(Landroid/animation/Animator;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "valueAnim"

    .prologue
    .line 137
    const-string v0, "checkbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimatedFraction()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    .line 144
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 396
    add-int/lit8 v3, p1, 0x1

    invoke-super {p0, v3}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 397
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mergeDrawableStates([I[I)[I

    .line 400
    :cond_0
    const-string v1, ""

    .line 401
    .local v1, drawableStates:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_1
    const-string v3, "checkbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDrawableState(), extraSpace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drawableState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v7

    and-int/lit8 v5, v7, 0x70

    .line 329
    .local v5, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 331
    .local v3, height:I
    const/4 v6, 0x0

    .line 333
    .local v6, y:I
    sparse-switch v5, :sswitch_data_0

    .line 342
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {v1, v9, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v1, checkBoxBounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 354
    .local v4, saveCount:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 355
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 357
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 358
    .local v2, clippedRect:Landroid/graphics/Rect;
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    if-eqz v7, :cond_0

    .line 359
    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 361
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 363
    :cond_0
    const-string v7, "checkbox"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fullRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", clippedRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 366
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 374
    .end local v1           #checkBoxBounds:Landroid/graphics/Rect;
    .end local v2           #clippedRect:Landroid/graphics/Rect;
    .end local v3           #height:I
    .end local v4           #saveCount:I
    .end local v5           #verticalGravity:I
    .end local v6           #y:I
    :cond_1
    :goto_1
    return-void

    .line 335
    .restart local v3       #height:I
    .restart local v5       #verticalGravity:I
    .restart local v6       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v6, v7, v3

    .line 336
    goto/16 :goto_0

    .line 338
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    goto/16 :goto_0

    .line 370
    .restart local v1       #checkBoxBounds:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v8, v6, v3

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 310
    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 311
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 312
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 317
    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 319
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 320
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 514
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    .line 516
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 517
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 519
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 503
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFreezesText(Z)V

    .line 504
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 506
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 508
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    .line 509
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->toggle()V

    .line 132
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAssociatedTextView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->TW_AIR_VIEW_WINSET:Z

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    .line 389
    if-eqz p1, :cond_0

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setStrikeThroughAnimationEnabled(Z)V

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 299
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 305
    return-void

    :cond_2
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public setCheckBoxAnimationEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->TW_AIR_VIEW_WINSET:Z

    if-eqz v0, :cond_0

    .line 227
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    .line 229
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onAssociatedCheckBoxChecked(Z)V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 193
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 203
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_3

    .line 204
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 209
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_4

    .line 223
    :cond_3
    :goto_0
    return-void

    .line 213
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    .line 214
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    .line 221
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    goto :goto_0

    .line 192
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .line 239
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    .line 250
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

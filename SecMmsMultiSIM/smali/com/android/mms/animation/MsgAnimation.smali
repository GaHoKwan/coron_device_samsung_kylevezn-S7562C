.class public Lcom/android/mms/animation/MsgAnimation;
.super Ljava/lang/Object;
.source "MsgAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlpha(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/AlphaAnimation;
    .locals 2
    .parameter "duration"
    .parameter "interpolator"
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    const/4 v1, 0x1

    .line 47
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 48
    .local v0, alpah:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 50
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 52
    return-object v0
.end method

.method public static createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;
    .locals 5
    .parameter "duration"
    .parameter "interpolator"
    .parameter "target"
    .parameter "value"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p5, v2, v3

    aput p6, v2, v4

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 87
    .local v1, pvhY:Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 88
    .local v0, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    return-object v0
.end method

.method public static createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;
    .locals 5
    .parameter "duration"
    .parameter "interpolator"
    .parameter "target"
    .parameter "value"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p5, v2, v3

    aput p6, v2, v4

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 97
    .local v1, pvhY:Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 98
    .local v0, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    return-object v0
.end method

.method public static createRotate(JLandroid/view/animation/Interpolator;FFIFIF)Landroid/view/animation/RotateAnimation;
    .locals 7
    .parameter "duration"
    .parameter "interpolator"
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 38
    .local v0, rotate:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    return-object v0
.end method

.method public static createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .parameter "duration"
    .parameter "interpolator"
    .parameter "fromXScale"
    .parameter "toXScale"
    .parameter "fromYScale"
    .parameter "toYScale"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    .line 75
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 77
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 79
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 80
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    return-object v0
.end method

.method public static createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .parameter "duration"
    .parameter "interpolator"
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    .line 23
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 25
    .local v0, slideX:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    return-object v0
.end method

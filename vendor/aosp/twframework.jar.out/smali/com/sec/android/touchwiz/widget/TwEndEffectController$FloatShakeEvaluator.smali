.class public Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;
.super Ljava/lang/Object;
.source "TwEndEffectController.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwEndEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatShakeEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHAKE_REPEAT_COUNT:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 9
    .parameter "fraction"
    .parameter "leftMostPoint"
    .parameter "rightMostPoint"

    .prologue
    .line 293
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float v5, v7, v8

    .line 294
    .local v5, singleCycleLength:F
    const/high16 v7, 0x4100

    mul-float v6, v5, v7

    .line 296
    .local v6, totalLength:F
    mul-float v0, v6, p1

    .line 297
    .local v0, currentPoint:F
    const/4 v4, 0x0

    .line 299
    .local v4, returnVal:F
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v1, v0, v7

    .line 300
    .local v1, currentPointShiftedLeft:F
    div-float v7, v1, v5

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 301
    .local v2, cycleCount:I
    rem-float v3, v1, v5

    .line 303
    .local v3, remainder:F
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_0

    .line 304
    neg-float v4, v0

    .line 313
    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    return-object v7

    .line 307
    :cond_0
    rem-int/lit8 v7, v2, 0x2

    if-nez v7, :cond_1

    .line 308
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float v4, v7, v3

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float v4, v7, v3

    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 281
    check-cast p2, Ljava/lang/Float;

    .end local p2
    check-cast p3, Ljava/lang/Float;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController$FloatShakeEvaluator;->evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$5;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 3
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 520
    const/4 v0, 0x0

    .line 522
    .local v0, ret:F
    if-eqz p1, :cond_1

    .line 523
    sub-float/2addr p2, v2

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    .line 532
    :goto_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    .line 533
    const/high16 v0, 0x3f80

    .line 537
    :cond_0
    :goto_1
    return v0

    .line 525
    :cond_1
    const/high16 v1, 0x3f00

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 526
    const/high16 v1, 0x4000

    mul-float/2addr v1, p2

    sub-float p2, v1, v2

    mul-float v1, p2, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    add-float v0, v1, v2

    goto :goto_0

    .line 528
    :cond_2
    const/high16 v1, 0x3fc0

    sub-float/2addr p2, v1

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    goto :goto_0

    .line 534
    :cond_3
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 535
    const/4 v0, 0x0

    goto :goto_1
.end method

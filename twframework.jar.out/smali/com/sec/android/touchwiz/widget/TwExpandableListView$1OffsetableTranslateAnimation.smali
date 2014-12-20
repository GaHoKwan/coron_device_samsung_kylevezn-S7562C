.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
.super Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetableTranslateAnimation"
.end annotation


# instance fields
.field fromXDelta:F

.field fromYDelta:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field toXDelta:F

.field toYDelta:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFJJLandroid/view/animation/Interpolator;ZZZ)V
    .locals 10
    .parameter
    .parameter "_fromXDelta"
    .parameter "_fromYDelta"
    .parameter "_toXDelta"
    .parameter "_toYDelta"
    .parameter "_startOffset"
    .parameter "_duration"
    .parameter "_i"
    .parameter "_fillBefore"
    .parameter "_fillEnabled"
    .parameter "_fillAfter"

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    .line 2028
    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;JJLandroid/view/animation/Interpolator;ZZZ)V

    .line 2029
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    .line 2030
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    .line 2031
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    .line 2032
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    .line 2033
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;J)V
    .locals 1
    .parameter
    .parameter "other"
    .parameter "offset"

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 2036
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)V

    .line 2037
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    .line 2038
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    .line 2039
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    .line 2040
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    .line 2041
    return-void
.end method


# virtual methods
.method makeTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 5

    .prologue
    .line 2044
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2046
    .local v0, ret:Landroid/view/animation/TranslateAnimation;
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2047
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2048
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2049
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 2050
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2051
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2052
    return-object v0
.end method

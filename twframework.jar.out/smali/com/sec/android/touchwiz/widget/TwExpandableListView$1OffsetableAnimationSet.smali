.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetableAnimationSet"
.end annotation


# instance fields
.field final fillAfter:Z

.field final fillBefore:Z

.field final fillEnabled:Z

.field final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;JZ)V
    .locals 5
    .parameter
    .parameter "other"
    .parameter "offset"
    .parameter "parent"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    iget-boolean v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillBefore:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillBefore:Z

    .line 2077
    iget-boolean v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillEnabled:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillEnabled:Z

    .line 2078
    iget-boolean v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillAfter:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillAfter:Z

    .line 2079
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    .line 2080
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2082
    const/4 v1, 0x0

    .line 2083
    .local v1, oa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2084
    iget-object v3, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #oa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;

    .line 2085
    .restart local v1       #oa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
    instance-of v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 2086
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    .line 2087
    .local v2, ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    invoke-direct {v4, p1, v2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    .end local v2           #ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2090
    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ZZZ)V
    .locals 1
    .parameter
    .parameter "_fillBefore"
    .parameter "_fillEnabled"
    .parameter "_fillAfter"

    .prologue
    .line 2066
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillBefore:Z

    .line 2068
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillEnabled:Z

    .line 2069
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillAfter:Z

    .line 2070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    .line 2071
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2072
    return-void
.end method


# virtual methods
.method add(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)Z
    .locals 5
    .parameter "oa"
    .parameter "offset"

    .prologue
    .line 2094
    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2095
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    .line 2096
    .local v0, oaa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {v3, v4, v0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2101
    .end local v0           #oaa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    :goto_0
    return v2

    .line 2097
    :cond_0
    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 2098
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    .line 2099
    .local v1, ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {v3, v4, v1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2101
    .end local v1           #ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method makeAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 6

    .prologue
    .line 2105
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2106
    .local v4, ret:Landroid/view/animation/AnimationSet;
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillBefore:Z

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 2107
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillEnabled:Z

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2108
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->fillAfter:Z

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 2110
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;

    .line 2111
    .local v1, oa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
    instance-of v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    if-eqz v5, :cond_1

    move-object v2, v1

    .line 2112
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    .line 2113
    .local v2, oaa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->makeAlphaAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2109
    .end local v2           #oaa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2114
    :cond_1
    instance-of v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 2115
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    .line 2116
    .local v3, ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->makeTranslateAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2119
    .end local v1           #oa:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
    .end local v3           #ota:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    :cond_2
    return-object v4
.end method

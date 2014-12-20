.class Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationStateData"
.end annotation


# static fields
.field static final ANIMATION_ABORTED:I = 0x4

.field static final ANIMATION_ABORT_TRIGGERED:I = 0x3

.field static final ANIMATION_ADDED:I = 0x7

.field static final ANIMATION_FINISHED:I = 0x2

.field static final ANIMATION_INVALID:I = -0x1

.field static final ANIMATION_IN_PROGRESS:I = 0x1

.field static final ANIMATION_POST_SCROLL:I = 0x6

.field static final ANIMATION_PRE_SCROLL:I = 0x5

.field static final ANIMATION_TRIGGERED:I = 0x0

.field static final ANIMATION_TYPE_COLLAPSE:I = 0x1

.field static final ANIMATION_TYPE_EXPAND:I = 0x0

.field static final ANIMATION_TYPE_INVALID:I = -0x1


# instance fields
.field fullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field initiallyFullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field public isExpandOrCollapseAll:Z

.field public isIndicatorAnimationOver:Z

.field public isItemAnimationOver:Z

.field public isTranslationOver:Z

.field public mAnimationState:I

.field public mAnimationType:I

.field public mCollapsingGroup:I

.field public mExpandingGroup:I

.field public mFirstItem:I

.field public mLastItem:I

.field public mNumberOfAnimationItems:I

.field public mNumberOfItems:I

.field public mVisibleGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2219
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2165
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2170
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2172
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2207
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2213
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2215
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2217
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2220
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2221
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2222
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2223
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2224
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2225
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2226
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2227
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2228
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2229
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2230
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2232
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2234
    :cond_0
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2236
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2238
    :cond_1
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2240
    return-void
.end method


# virtual methods
.method public finishAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2276
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2277
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2278
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2279
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2280
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2281
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2282
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2283
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2284
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2285
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2286
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2288
    :cond_0
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2289
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2291
    :cond_1
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2294
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2295
    :cond_2
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2298
    return-void
.end method

.method public getCurrentAnimationState()I
    .locals 1

    .prologue
    .line 2301
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2246
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2247
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2248
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2249
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2250
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2251
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2252
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2253
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2254
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2255
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2256
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2258
    :cond_0
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2259
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2261
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2263
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2264
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2265
    :cond_2
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2267
    return-void
.end method

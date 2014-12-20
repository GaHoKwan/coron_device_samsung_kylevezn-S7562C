.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    }
.end annotation


# static fields
.field public static final ITEM_ANIMATION_FADE:I = 0x4

.field public static final ITEM_ANIMATION_HORIZONTAL_SLIDE:I = 0x1

.field public static final ITEM_ANIMATION_MAX:I = 0x5

.field public static final ITEM_ANIMATION_NONE:I = 0x0

.field public static final ITEM_ANIMATION_VERTICAL_DROPDOWN:I = 0x3

.field public static final ITEM_ANIMATION_VERTICAL_SLIDE:I = 0x2

.field private static final ITEM_DNDITEMANIMATION_DURATION:I = 0x12c

.field private static final ITEM_INIT_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TwAnimatedListView"


# instance fields
.field private DEBUG_ANIMATION_FLAG:Z

.field private mAnimationType:I

.field private mCurIxdex:[J

.field private mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

.field private mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

.field private mDeleteDelay:I

.field private mDeleteDuration:I

.field private mDeleteItemList:Ljava/util/ArrayList;

.field private mDuration:I

.field private mFlexibleViews:Ljava/util/ArrayList;

.field private mIndexOffset:[I

.field private mInsertDelay:I

.field private mInsertDuration:I

.field private mIsAnimating:Z

.field private mIsDrawingDeleteView:Z

.field private mIsDrawingInsertView:Z

.field private mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

.field protected mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

.field private mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

.field private mMaxAlpha:I

.field private mMinAlpha:I

.field private mPrevIndex:[J

.field private mPrevPosition:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTrans:Landroid/view/animation/Transformation;

.field private mTranslateDelay:I

.field private mUseCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1012
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1015
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1016
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1019
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1054
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    .line 1056
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    .line 1020
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    .line 1022
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    .line 1023
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    .line 1024
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1025
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1026
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1027
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    .line 1028
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    .line 1029
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    .line 1030
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    .line 1031
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    .line 1032
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 1033
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    .line 1034
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    .line 1035
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    .line 1036
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 1037
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    .line 1038
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    .line 1039
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    .line 1040
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method private drawDeleteItem(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v16, v0

    .line 1286
    .local v16, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v17, v0

    .line 1287
    .local v17, minAlpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_6

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1289
    .local v11, deletePos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v15

    .line 1290
    .local v15, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-nez v15, :cond_1

    .line 1287
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 1292
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v10

    .line 1293
    .local v10, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v12

    .line 1294
    .local v12, drawingTime:J
    if-eqz v10, :cond_0

    .line 1296
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_5

    .line 1297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 1298
    .local v20, save:I
    sub-int v2, v16, v17

    int-to-float v3, v2

    move-object v2, v15

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v7, v16, v2

    .line 1301
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_4

    .line 1302
    instance-of v2, v15, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_3

    move-object v9, v15

    .line 1303
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 1304
    .local v9, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v18

    .line 1305
    .local v18, p:Landroid/graphics/Paint;
    if-nez v18, :cond_2

    .line 1306
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1307
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1308
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    .line 1309
    .local v19, pt:Landroid/graphics/Paint;
    if-eqz v19, :cond_3

    .line 1310
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1311
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1317
    .end local v9           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v18           #p:Landroid/graphics/Paint;
    .end local v19           #pt:Landroid/graphics/Paint;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1319
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1315
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1316
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    .line 1321
    .end local v7           #alpha:I
    .end local v20           #save:I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1322
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_1

    .line 1327
    .end local v10           #child:Landroid/view/View;
    .end local v11           #deletePos:I
    .end local v12           #drawingTime:J
    .end local v14           #i:I
    .end local v15           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v16           #maxAlpha:I
    .end local v17           #minAlpha:I
    :cond_6
    return-void
.end method

.method private drawInsertItem(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 1235
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1236
    .local v14, first:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1237
    .local v11, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v17, v0

    .line 1238
    .local v17, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v18, v0

    .line 1239
    .local v18, minAlpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v2, :cond_6

    .line 1240
    add-int v2, v14, v11

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_0
    if-lt v15, v14, :cond_6

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v2, v2, v15

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 1240
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 1243
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v16

    .line 1244
    .local v16, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v16, :cond_0

    .line 1246
    sub-int v2, v15, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1247
    .local v10, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v12

    .line 1248
    .local v12, drawingTime:J
    if-eqz v10, :cond_0

    .line 1250
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_5

    .line 1251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1252
    .local v21, save:I
    sub-int v2, v17, v18

    int-to-float v3, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v7, v18, v2

    .line 1255
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_4

    .line 1256
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_3

    move-object/from16 v9, v16

    .line 1257
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 1258
    .local v9, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    .line 1259
    .local v19, p:Landroid/graphics/Paint;
    if-nez v19, :cond_2

    .line 1260
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1261
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1262
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 1263
    .local v20, pt:Landroid/graphics/Paint;
    if-eqz v20, :cond_3

    .line 1264
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1265
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1271
    .end local v9           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v19           #p:Landroid/graphics/Paint;
    .end local v20           #pt:Landroid/graphics/Paint;
    :cond_3
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1273
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1269
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1270
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    .line 1275
    .end local v7           #alpha:I
    .end local v21           #save:I
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_1

    .line 1281
    .end local v10           #child:Landroid/view/View;
    .end local v12           #drawingTime:J
    .end local v15           #i:I
    .end local v16           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_6
    return-void
.end method

.method private drawKeepView(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1161
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v4

    .line 1162
    .local v4, drawingTime:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v10

    .line 1163
    .local v10, pos:[Ljava/lang/Object;
    if-eqz v10, :cond_1

    array-length v0, v10

    if-lez v0, :cond_1

    .line 1164
    move-object v6, v10

    .line 1165
    .local v6, arr$:[Ljava/lang/Object;
    array-length v8, v6

    .line 1166
    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 1167
    aget-object v9, v6, v7

    .line 1168
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1169
    .local v2, position:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v3

    .line 1170
    .local v3, keepView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 1171
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z

    .line 1166
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1175
    .end local v2           #position:I
    .end local v3           #keepView:Landroid/view/View;
    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private findItemOffsetPos()V
    .locals 11

    .prologue
    const v10, 0x7fffffff

    .line 1330
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v6, :cond_c

    .line 1331
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v0, v6

    .line 1332
    .local v0, curLen:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v6

    .line 1333
    .local v5, prevLen:I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_3

    .line 1334
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1335
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 1336
    const/4 v4, 0x0

    .line 1337
    .local v4, match:Z
    const/4 v3, 0x0

    .line 1339
    .local v3, j:I
    :goto_1
    if-lt v3, v5, :cond_1

    .line 1348
    :goto_2
    if-nez v4, :cond_0

    .line 1349
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aput v10, v6, v7

    .line 1335
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    add-int/lit8 v9, v5, -0x1

    sub-int/2addr v9, v3

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1342
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    sub-int v8, v2, v3

    aput v8, v6, v7

    .line 1343
    const/4 v4, 0x1

    .line 1344
    goto :goto_2

    .line 1346
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1347
    goto :goto_1

    .line 1353
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_3
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1354
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v0, :cond_7

    .line 1355
    const/4 v4, 0x0

    .line 1356
    .restart local v4       #match:Z
    const/4 v3, 0x0

    .line 1358
    .restart local v3       #j:I
    :goto_4
    if-lt v3, v5, :cond_5

    .line 1367
    :goto_5
    if-nez v4, :cond_4

    .line 1368
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aput v10, v6, v2

    .line 1354
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1360
    :cond_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v8, v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1361
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    sub-int v7, v2, v3

    aput v7, v6, v2

    .line 1362
    const/4 v4, 0x1

    .line 1363
    goto :goto_5

    .line 1365
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1366
    goto :goto_4

    .line 1372
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_7
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    .line 1373
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    .line 1376
    :goto_6
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_7
    if-ge v3, v5, :cond_c

    .line 1377
    const/4 v1, 0x0

    .line 1378
    .local v1, exist:Z
    const/4 v2, 0x0

    .line 1380
    :goto_8
    if-lt v2, v0, :cond_a

    .line 1388
    :goto_9
    if-nez v1, :cond_8

    .line 1389
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1375
    .end local v1           #exist:Z
    .end local v3           #j:I
    :cond_9
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    .line 1382
    .restart local v1       #exist:Z
    .restart local v3       #j:I
    :cond_a
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 1383
    const/4 v1, 0x1

    .line 1384
    goto :goto_9

    .line 1386
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 1387
    goto :goto_8

    .line 1392
    .end local v0           #curLen:I
    .end local v1           #exist:Z
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #prevLen:I
    :cond_c
    return-void
.end method

.method private getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "delay"

    .prologue
    .line 2249
    const/4 v0, 0x0

    .line 2250
    .local v0, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz p2, :cond_0

    .line 2251
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v0           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2252
    .restart local v0       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2253
    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2254
    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    .line 2255
    neg-int v1, p2

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2256
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    .line 2257
    iput p3, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2259
    :cond_0
    return-object v0
.end method

.method private getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 1195
    if-eqz p2, :cond_2

    .line 1196
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    .line 1197
    .local v0, ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;->getDeleteAnimationDuration()J

    move-result-wide v1

    .line 1198
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    .line 1199
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    .line 1200
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 1202
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->start(JII)V

    .line 1205
    .end local v0           #ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 1179
    if-eqz p2, :cond_2

    .line 1180
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    .line 1181
    .local v0, ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;->getInsertAnimationDuration()J

    move-result-wide v1

    .line 1182
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    .line 1183
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    .line 1184
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    .line 1185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 1186
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;->start(JII)V

    .line 1189
    .end local v0           #ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 11
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2296
    const/4 v5, 0x0

    .line 2297
    .local v5, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    if-eqz v8, :cond_1

    .line 2298
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2299
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v8, 0x1

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2300
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2366
    :cond_0
    :goto_0
    return-object v5

    .line 2302
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    .line 2303
    .local v6, retainView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2304
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2305
    .local v3, first:I
    if-eqz v6, :cond_0

    .line 2306
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2307
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2308
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2309
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2314
    :pswitch_0
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2315
    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_0

    .line 2319
    :pswitch_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2320
    .local v7, slideHeight:I
    add-int/lit8 v4, p1, -0x1

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_3

    .line 2321
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2320
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2323
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2324
    .local v1, delView:Landroid/view/View;
    if-nez v1, :cond_4

    .line 2329
    .end local v1           #delView:Landroid/view/View;
    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v8, v8

    if-ge v4, v8, :cond_6

    .line 2330
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2329
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2326
    .restart local v1       #delView:Landroid/view/View;
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_2

    .line 2332
    .end local v1           #delView:Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2333
    .restart local v1       #delView:Landroid/view/View;
    if-nez v1, :cond_7

    .line 2338
    .end local v1           #delView:Landroid/view/View;
    :cond_6
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2339
    neg-int v8, v7

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_0

    .line 2335
    .restart local v1       #delView:Landroid/view/View;
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_4

    .line 2343
    .end local v1           #delView:Landroid/view/View;
    .end local v4           #i:I
    .end local v7           #slideHeight:I
    :pswitch_2
    const/4 v2, 0x0

    .line 2344
    .local v2, dropHeight:I
    if-eqz v6, :cond_9

    .line 2345
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2346
    add-int/lit8 v4, p1, -0x1

    .restart local v4       #i:I
    :goto_5
    if-lt v4, v3, :cond_9

    .line 2347
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2346
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 2349
    :cond_8
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2350
    .restart local v1       #delView:Landroid/view/View;
    if-nez v1, :cond_a

    .line 2356
    .end local v1           #delView:Landroid/view/View;
    .end local v4           #i:I
    :cond_9
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2357
    neg-int v8, v2

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_0

    .line 2352
    .restart local v1       #delView:Landroid/view/View;
    .restart local v4       #i:I
    :cond_a
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    goto :goto_6

    .line 2361
    .end local v1           #delView:Landroid/view/View;
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_3
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_0

    .line 2309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 11
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v8, 0x0

    const v10, 0x7fffffff

    const/4 v9, 0x0

    .line 2194
    const/4 v5, 0x0

    .line 2195
    .local v5, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    if-eqz v7, :cond_0

    .line 2196
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2197
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v7, 0x1

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2198
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2245
    :goto_0
    return-object v5

    .line 2200
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2201
    .local v3, first:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2202
    .local v1, childCount:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2203
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2204
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2205
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2206
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 2211
    :pswitch_0
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2212
    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2213
    neg-int v7, v0

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_0

    .line 2217
    :pswitch_1
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2218
    .local v6, slideHeight:I
    add-int/lit8 v4, p1, -0x1

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_1

    .line 2219
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2218
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2221
    :cond_1
    add-int/lit8 v4, p1, 0x1

    .line 2222
    :goto_2
    add-int v7, v3, v1

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_2

    .line 2223
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2225
    :cond_2
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2226
    neg-int v7, v6

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2227
    iput v6, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_0

    .line 2231
    .end local v4           #i:I
    .end local v6           #slideHeight:I
    :pswitch_2
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2232
    .local v2, dropHeight:I
    add-int/lit8 v4, p1, -0x1

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v3, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_3

    .line 2233
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 2232
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2235
    :cond_3
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2236
    neg-int v7, v2

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2237
    iput v2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_0

    .line 2241
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_3
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_0

    .line 2206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 2
    .parameter "startX"
    .parameter "deltaX"
    .parameter "startY"
    .parameter "deltaY"
    .parameter "delay"

    .prologue
    .line 2264
    const/4 v0, 0x0

    .line 2265
    .local v0, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    .line 2266
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v0           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2267
    .restart local v0       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2268
    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2269
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    .line 2270
    neg-int v1, p3

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2271
    iput p4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    .line 2272
    iput p5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2274
    :cond_1
    return-object v0
.end method

.method private getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 5
    .parameter "data"
    .parameter "startTime"
    .parameter "child"

    .prologue
    .line 2278
    if-eqz p1, :cond_2

    .line 2279
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 2280
    .local v0, ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 2281
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    if-nez v1, :cond_1

    .line 2282
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 2285
    :goto_0
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->move(IIII)V

    .line 2286
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->delay(I)V

    .line 2287
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 2288
    invoke-virtual {v0, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->createDrawingCache(Landroid/view/View;)V

    .line 2291
    .end local v0           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    :goto_1
    return-object v0

    .line 2284
    .restart local v0       #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_1
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    goto :goto_0

    .line 2291
    .end local v0           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1433
    return-void
.end method

.method protected addFlexibleView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 2160
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2162
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    return-void
.end method

.method protected changeItemIndex(II)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1117
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v4, :cond_1

    .line 1141
    :cond_0
    return-void

    .line 1119
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v1, v4

    .line 1120
    .local v1, length:I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 1122
    sub-int v2, p2, p1

    .line 1123
    .local v2, size:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [J

    .line 1124
    .local v3, tempIds:[J
    if-lez v2, :cond_3

    .line 1125
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1126
    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    sub-int v4, p2, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 1129
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_0

    .line 1130
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p1

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1133
    .end local v0           #i:I
    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 1134
    add-int/lit8 v0, p2, 0x1

    .restart local v0       #i:I
    :goto_2
    if-gt v0, p1, :cond_4

    .line 1135
    sub-int v4, v0, p2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1137
    :cond_4
    move v0, p2

    :goto_3
    if-gt v0, p1, :cond_0

    .line 1138
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p2

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_1

    .line 1145
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-nez v0, :cond_0

    .line 1146
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    .line 1147
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-nez v0, :cond_1

    .line 1148
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    .line 1150
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1151
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepView(Landroid/graphics/Canvas;)V

    .line 1152
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_3

    .line 1153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-eqz v0, :cond_2

    .line 1154
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    .line 1155
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-eqz v0, :cond_3

    .line 1156
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    .line 1158
    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1059
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1060
    .local v1, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 1061
    .local v2, pos:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 1062
    .local v0, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2

    .line 1063
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 1079
    :goto_0
    return v3

    .line 1065
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1067
    .local v4, save:I
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1068
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1069
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 1072
    .end local v4           #save:I
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1073
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0

    .line 1077
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1078
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method protected drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1088
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1089
    .local v1, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 1090
    .local v2, pos:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 1091
    .local v0, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2

    .line 1092
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 1112
    :goto_0
    return v3

    .line 1095
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1096
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1098
    .local v4, save:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1099
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1100
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1101
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 1105
    .end local v3           #retVal:Z
    .end local v4           #save:I
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0

    .line 1110
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1111
    .restart local v3       #retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method protected drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z
    .locals 6
    .parameter "canvas"
    .parameter "position"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v5, 0x0

    .line 1210
    if-eqz p3, :cond_1

    .line 1211
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 1212
    .local v1, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_1

    .line 1213
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 1214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1215
    .local v3, save:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1216
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 1217
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1218
    .local v2, p:Landroid/graphics/Paint;
    if-nez v2, :cond_0

    .line 1219
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1221
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #p:Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1222
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1223
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1231
    .end local v1           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v3           #save:I
    :cond_1
    :goto_0
    return v5

    .line 1226
    .restart local v1       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_2
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1227
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method public getCustomItemDeleteDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method public getCustomItemInsertDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method public getDeleteAnimationDelay()I
    .locals 1

    .prologue
    .line 2468
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    return v0
.end method

.method public getDeleteAnimationDuration()I
    .locals 1

    .prologue
    .line 2495
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    return v0
.end method

.method protected getFlexibleViewCount()I
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertAnimationDelay()I
    .locals 1

    .prologue
    .line 2459
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    return v0
.end method

.method public getInsertAnimationDuration()I
    .locals 1

    .prologue
    .line 2486
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    return v0
.end method

.method public getItemAnimationDuration()I
    .locals 1

    .prologue
    .line 2450
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    return v0
.end method

.method public getItemAnimationListener()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method public getItemAnimationType()I
    .locals 1

    .prologue
    .line 2420
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    return v0
.end method

.method public getTranslateAnimationDelay()I
    .locals 1

    .prologue
    .line 2477
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    return v0
.end method

.method public isAnimationDrawingCacheEnable()Z
    .locals 1

    .prologue
    .line 2503
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method public isAnimationOnDataChangeEnabled()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    return v0
.end method

.method public isDrawDeleteAnimationFront()Z
    .locals 1

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    return v0
.end method

.method public isDrawInsertAnimationFront()Z
    .locals 1

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 68

    .prologue
    .line 1439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v21, v0

    .line 1440
    .local v21, dataChanged:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    .line 1441
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1443
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1444
    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v5, :cond_1

    .line 1445
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v22

    .line 1446
    .local v22, dataCount:I
    move/from16 v0, v22

    new-array v5, v0, [J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1447
    const/16 v37, 0x0

    .local v37, i:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 1448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v5, v37

    .line 1447
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 1451
    .end local v22           #dataCount:I
    .end local v37           #i:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v33

    .line 1452
    .local v33, first:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 1453
    .local v15, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    move/from16 v54, v0

    .line 1454
    .local v54, prevFirst:I
    if-eqz v21, :cond_55

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_55

    .line 1455
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1456
    .local v13, animation:Landroid/util/SparseArray;
    new-instance v57, Landroid/util/SparseArray;

    invoke-direct/range {v57 .. v57}, Landroid/util/SparseArray;-><init>()V

    .line 1457
    .local v57, retainAnimation:Landroid/util/SparseArray;
    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    .line 1458
    .local v25, deleteAnimation:Landroid/util/SparseArray;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    move/from16 v40, v0

    .line 1459
    .local v40, insertDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    move/from16 v27, v0

    .line 1460
    .local v27, deleteDelay:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 1461
    .local v10, translateDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    move/from16 v28, v0

    .line 1462
    .local v28, deleteDuration:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    move/from16 v41, v0

    .line 1463
    .local v41, insertDuration:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->findItemOffsetPos()V

    .line 1464
    sub-int v34, v33, v54

    .line 1465
    .local v34, firstPositionOffset:I
    move/from16 v37, v33

    .restart local v37       #i:I
    :goto_1
    add-int v5, v33, v15

    move/from16 v0, v37

    if-ge v0, v5, :cond_12

    .line 1466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2

    .line 1467
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1465
    :goto_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 1470
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v48, v5, v34

    .line 1471
    .local v48, offset:I
    const/4 v9, 0x0

    .line 1472
    .local v9, HEIGHT:I
    if-lez v48, :cond_a

    .line 1473
    if-nez v34, :cond_5

    .line 1474
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_4

    .line 1475
    move/from16 v66, v37

    .local v66, x:I
    :goto_3
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_5

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    .line 1477
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1475
    :cond_3
    add-int/lit8 v66, v66, 0x1

    goto :goto_3

    .line 1481
    .end local v66           #x:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1482
    .local v56, prevView:Landroid/view/View;
    if-eqz v56, :cond_6

    .line 1483
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1548
    .end local v56           #prevView:Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 1485
    .restart local v56       #prevView:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v60, v33, v5

    .line 1486
    .local v60, screenOffset:I
    if-ltz v60, :cond_8

    move/from16 v0, v60

    if-ge v0, v15, :cond_8

    .line 1487
    move/from16 v66, v33

    .restart local v66       #x:I
    :goto_5
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    .line 1488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_7

    .line 1489
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1487
    :cond_7
    add-int/lit8 v66, v66, 0x1

    goto :goto_5

    .line 1493
    .end local v66           #x:I
    :cond_8
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1494
    .local v16, childView:Landroid/view/View;
    if-lez v60, :cond_9

    .line 1495
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1496
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v5, v5, v60

    sub-int/2addr v9, v5

    goto :goto_4

    .line 1498
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v9, v5

    .line 1499
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    move/from16 v0, v60

    neg-int v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_4

    .line 1504
    .end local v16           #childView:Landroid/view/View;
    .end local v56           #prevView:Landroid/view/View;
    .end local v60           #screenOffset:I
    :cond_a
    if-gez v48, :cond_5

    .line 1505
    if-nez v34, :cond_10

    .line 1506
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_c

    .line 1507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1509
    .local v38, i$:Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1511
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1512
    .local v52, position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1513
    .local v51, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v5

    move/from16 v0, v51

    if-gt v0, v5, :cond_b

    move/from16 v0, v51

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    .line 1514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1515
    .local v59, retainView:Landroid/view/View;
    if-eqz v59, :cond_b

    .line 1516
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_6

    .line 1520
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v59           #retainView:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1521
    .restart local v56       #prevView:Landroid/view/View;
    if-eqz v56, :cond_d

    .line 1522
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    goto/16 :goto_4

    .line 1523
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 1524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 1525
    .local v64, v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 1526
    .local v65, v2:Landroid/view/View;
    if-eqz v64, :cond_e

    if-eqz v65, :cond_e

    .line 1527
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1528
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1530
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1532
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1533
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1534
    .restart local v51       #pos:I
    move/from16 v0, v51

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    sub-int v5, v37, v48

    move/from16 v0, v51

    if-ge v0, v5, :cond_f

    .line 1535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1536
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_f

    .line 1537
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_7

    .line 1543
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v56           #prevView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_10
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_8
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_5

    .line 1544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_11

    .line 1545
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1543
    :cond_11
    add-int/lit8 v66, v66, 0x1

    goto :goto_8

    .line 1551
    .end local v9           #HEIGHT:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v47

    .line 1552
    .local v47, list:[Ljava/lang/Object;
    if-eqz v47, :cond_23

    .line 1553
    move-object/from16 v14, v47

    .line 1554
    .local v14, arr$:[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v46, v0

    .line 1555
    .local v46, len$:I
    const/16 v38, 0x0

    .local v38, i$:I
    :goto_9
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_1b

    .line 1556
    aget-object v43, v14, v38

    .line 1557
    .local v43, item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1558
    .local v58, retainPos:I
    const/16 v37, 0x0

    .line 1560
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-lt v0, v5, :cond_14

    .line 1555
    :cond_13
    :goto_b
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1562
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-le v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_1a

    .line 1564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1565
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_13

    .line 1568
    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_17

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v9, v5, v6

    .line 1570
    .restart local v9       #HEIGHT:I
    add-int v66, v33, v15

    .restart local v66       #x:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_16

    .line 1571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1573
    .local v36, hiddenView:Landroid/view/View;
    if-eqz v36, :cond_15

    .line 1574
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v9, v5

    .line 1570
    :cond_15
    add-int/lit8 v66, v66, 0x1

    goto :goto_c

    .line 1577
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_16
    if-eqz v9, :cond_13

    .line 1578
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    .line 1584
    .end local v9           #HEIGHT:I
    .end local v66           #x:I
    :cond_17
    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    .line 1586
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v9, v5

    .line 1587
    .restart local v9       #HEIGHT:I
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_d
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1590
    .restart local v36       #hiddenView:Landroid/view/View;
    if-eqz v36, :cond_18

    .line 1591
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v9, v5

    .line 1587
    :cond_18
    add-int/lit8 v66, v66, 0x1

    goto :goto_d

    .line 1594
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_19
    if-eqz v9, :cond_13

    .line 1595
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 1601
    .end local v9           #HEIGHT:I
    .end local v59           #retainView:Landroid/view/View;
    .end local v66           #x:I
    :cond_1a
    add-int/lit8 v37, v37, 0x1

    .line 1602
    goto/16 :goto_a

    .line 1605
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    :cond_1b
    if-eqz v34, :cond_23

    .line 1606
    move-object/from16 v14, v47

    .line 1607
    array-length v0, v14

    move/from16 v46, v0

    .line 1608
    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_23

    .line 1609
    aget-object v43, v14, v38

    .line 1610
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1611
    .restart local v58       #retainPos:I
    const/16 v31, 0x0

    .line 1612
    .local v31, exist:Z
    move/from16 v37, v33

    .line 1614
    :goto_f
    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_1d

    .line 1623
    :goto_10
    move/from16 v0, v58

    move/from16 v1, v33

    if-ge v0, v1, :cond_1c

    if-eqz v31, :cond_1f

    .line 1608
    :cond_1c
    :goto_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_e

    .line 1616
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-le v5, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_1e

    .line 1618
    const/16 v31, 0x1

    .line 1619
    goto :goto_10

    .line 1621
    :cond_1e
    add-int/lit8 v37, v37, 0x1

    .line 1622
    goto :goto_f

    .line 1625
    :cond_1f
    const/4 v9, 0x0

    .line 1626
    .restart local v9       #HEIGHT:I
    move/from16 v66, v58

    .restart local v66       #x:I
    :goto_12
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_22

    .line 1627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_21

    .line 1626
    :cond_20
    :goto_13
    add-int/lit8 v66, v66, 0x1

    goto :goto_12

    .line 1629
    :cond_21
    sub-int v5, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1630
    .local v18, currentView:Landroid/view/View;
    if-eqz v18, :cond_20

    .line 1631
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_13

    .line 1634
    .end local v18           #currentView:Landroid/view/View;
    :cond_22
    if-eqz v9, :cond_1c

    .line 1635
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    .line 1641
    .end local v9           #HEIGHT:I
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v31           #exist:Z
    .end local v38           #i$:I
    .end local v43           #item:Ljava/lang/Object;
    .end local v46           #len$:I
    .end local v58           #retainPos:I
    .end local v66           #x:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_24

    .line 1642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1644
    .local v38, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1652
    .end local v38           #i$:Ljava/util/Iterator;
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_29

    .line 1653
    if-nez v34, :cond_28

    .line 1654
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_25

    .line 1655
    const-string v5, "TwAnimatedListView.ItemAnimation"

    const-string v6, "[stack bottom] no first position changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_25
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    .line 1912
    .local v62, time:J
    const/16 v37, 0x0

    :goto_16
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_4f

    .line 1913
    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1914
    .local v45, key:I
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1915
    .local v20, data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_26

    .line 1916
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_0

    .line 1912
    :cond_26
    :goto_17
    add-int/lit8 v37, v37, 0x1

    goto :goto_16

    .line 1646
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    .end local v62           #time:J
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_27
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1647
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1648
    .restart local v51       #pos:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    .line 1657
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_25

    .line 1658
    const-string v5, "TwAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stack bottom] first position changed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1662
    :cond_29
    if-nez v34, :cond_2d

    .line 1663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 1664
    .restart local v64       #v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 1665
    .restart local v65       #v2:Landroid/view/View;
    if-eqz v64, :cond_25

    if-eqz v65, :cond_25

    .line 1666
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v49, v5, v6

    .line 1667
    .local v49, offsetY:I
    if-eqz v49, :cond_25

    .line 1668
    move/from16 v44, v33

    .local v44, k:I
    :goto_18
    add-int v5, v33, v15

    move/from16 v0, v44

    if-ge v0, v5, :cond_2b

    .line 1669
    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1670
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_2a

    .line 1668
    :goto_19
    add-int/lit8 v44, v44, 0x1

    goto :goto_18

    .line 1672
    :cond_2a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 1675
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    :cond_2b
    const/16 v44, 0x0

    :goto_1a
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_25

    .line 1676
    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 1677
    .local v24, delPos:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1679
    .local v23, delData:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v23, :cond_2c

    .line 1680
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_1

    .line 1675
    :cond_2c
    :goto_1b
    add-int/lit8 v44, v44, 0x1

    goto :goto_1a

    .line 1683
    :pswitch_0
    move/from16 v0, v49

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_1b

    .line 1691
    .end local v23           #delData:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v24           #delPos:I
    .end local v44           #k:I
    .end local v49           #offsetY:I
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_2d
    const/16 v30, 0x0

    .line 1692
    .local v30, distortion:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v55

    .line 1693
    .local v55, prevFirstView:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1694
    .local v17, curFirstView:Landroid/view/View;
    if-eqz v55, :cond_2e

    if-eqz v17, :cond_2e

    .line 1695
    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v30, v5, v6

    .line 1696
    :cond_2e
    move/from16 v67, v33

    .local v67, z:I
    :goto_1c
    add-int v5, v33, v15

    move/from16 v0, v67

    if-ge v0, v5, :cond_38

    .line 1697
    if-nez v47, :cond_30

    .line 1696
    :cond_2f
    :goto_1d
    add-int/lit8 v67, v67, 0x1

    goto :goto_1c

    .line 1699
    :cond_30
    const/16 v35, 0x0

    .line 1700
    .local v35, found:Z
    move-object/from16 v14, v47

    .line 1701
    .restart local v14       #arr$:[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v46, v0

    .line 1702
    .restart local v46       #len$:I
    const/16 v38, 0x0

    .line 1704
    .local v38, i$:I
    :goto_1e
    move/from16 v0, v38

    move/from16 v1, v46

    if-lt v0, v1, :cond_32

    .line 1725
    :cond_31
    :goto_1f
    if-nez v35, :cond_2f

    .line 1727
    const/16 v48, 0x0

    .line 1728
    .restart local v48       #offset:I
    const/16 v66, 0x0

    .line 1730
    .restart local v66       #x:I
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-lt v0, v5, :cond_34

    .line 1739
    :goto_21
    if-eqz v48, :cond_2f

    .line 1741
    move/from16 v0, v30

    neg-int v9, v0

    .line 1742
    .restart local v9       #HEIGHT:I
    if-lez v48, :cond_36

    .line 1743
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_22
    move/from16 v0, v48

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_37

    .line 1744
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1743
    add-int/lit8 v44, v44, 0x1

    goto :goto_22

    .line 1706
    .end local v9           #HEIGHT:I
    .end local v44           #k:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_32
    aget-object v43, v14, v38

    .line 1707
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1708
    .restart local v58       #retainPos:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v67

    if-le v5, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_33

    .line 1710
    const/16 v35, 0x1

    .line 1711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1712
    .restart local v59       #retainView:Landroid/view/View;
    sub-int v5, v67, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1713
    .restart local v18       #currentView:Landroid/view/View;
    if-eqz v59, :cond_31

    if-eqz v18, :cond_31

    .line 1714
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v61, v5, v6

    .line 1715
    .local v61, slideOffsetY:I
    if-eqz v61, :cond_31

    .line 1716
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1f

    .line 1723
    .end local v18           #currentView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    .end local v61           #slideOffsetY:I
    :cond_33
    add-int/lit8 v38, v38, 0x1

    .line 1724
    goto/16 :goto_1e

    .line 1732
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    .restart local v48       #offset:I
    .restart local v66       #x:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-le v5, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v67

    if-le v5, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_35

    .line 1734
    sub-int v5, v67, v33

    sub-int v6, v66, v54

    sub-int v48, v5, v6

    .line 1735
    goto/16 :goto_21

    .line 1737
    :cond_35
    add-int/lit8 v66, v66, 0x1

    .line 1738
    goto/16 :goto_20

    .line 1747
    .restart local v9       #HEIGHT:I
    :cond_36
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_23
    move/from16 v0, v48

    neg-int v5, v0

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_37

    .line 1748
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/lit8 v6, v15, -0x1

    sub-int v6, v6, v44

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1747
    add-int/lit8 v44, v44, 0x1

    goto :goto_23

    .line 1752
    :cond_37
    if-eqz v9, :cond_2f

    .line 1753
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1d

    .line 1756
    .end local v9           #HEIGHT:I
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v35           #found:Z
    .end local v38           #i$:I
    .end local v44           #k:I
    .end local v46           #len$:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_38
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_15

    .line 1761
    :pswitch_1
    const/16 v19, 0x0

    .local v19, d:I
    :goto_24
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_3e

    .line 1762
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1763
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1765
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez v20, :cond_3a

    .line 1761
    :cond_39
    :goto_25
    add-int/lit8 v19, v19, 0x1

    goto :goto_24

    .line 1767
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1768
    .restart local v59       #retainView:Landroid/view/View;
    add-int/lit8 v11, v45, -0x1

    .line 1769
    .local v11, anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .line 1770
    .local v32, f:I
    :goto_26
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3b

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 1771
    add-int/lit8 v11, v11, -0x1

    .line 1770
    add-int/lit8 v32, v32, -0x1

    goto :goto_26

    .line 1773
    :cond_3b
    if-eqz v59, :cond_39

    .line 1774
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1775
    .local v12, anchorView:Landroid/view/View;
    const/16 v53, 0x0

    .line 1776
    .local v53, prevAnchorView:Landroid/view/View;
    move/from16 v50, v54

    .line 1778
    .local v50, p:I
    :goto_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v50

    if-lt v0, v5, :cond_3c

    .line 1787
    :goto_28
    if-eqz v12, :cond_39

    if-eqz v53, :cond_39

    .line 1788
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v48, v5, v6

    .line 1789
    .restart local v48       #offset:I
    move/from16 v0, v48

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_25

    .line 1780
    .end local v48           #offset:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v50

    if-le v5, v0, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v50

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    .line 1782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v53

    .line 1783
    goto :goto_28

    .line 1785
    :cond_3d
    add-int/lit8 v50, v50, 0x1

    .line 1786
    goto :goto_27

    .line 1794
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v50           #p:I
    .end local v53           #prevAnchorView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    :cond_3e
    const/16 v19, 0x0

    :goto_29
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_25

    .line 1795
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1796
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_40

    .line 1797
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1799
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_40

    if-lez v34, :cond_40

    .line 1800
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1801
    .local v42, insertView:Landroid/view/View;
    if-eqz v42, :cond_40

    .line 1802
    add-int/lit8 v11, v45, -0x1

    .line 1803
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .line 1804
    .restart local v32       #f:I
    :goto_2a
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3f

    .line 1805
    add-int/lit8 v11, v11, -0x1

    .line 1804
    add-int/lit8 v32, v32, -0x1

    goto :goto_2a

    .line 1807
    :cond_3f
    move/from16 v0, v33

    if-ge v11, v0, :cond_41

    .line 1808
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    .line 1794
    .end local v11           #anchorPos:I
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v42           #insertView:Landroid/view/View;
    :cond_40
    :goto_2b
    add-int/lit8 v19, v19, 0x1

    goto :goto_29

    .line 1810
    .restart local v11       #anchorPos:I
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .restart local v32       #f:I
    .restart local v42       #insertView:Landroid/view/View;
    :cond_41
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 1812
    .local v39, insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 1813
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .line 1815
    .local v64, v:I
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_42

    .line 1826
    :goto_2d
    if-eqz v12, :cond_40

    if-eqz v39, :cond_40

    .line 1827
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 1829
    .local v29, delta:I
    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    .line 1830
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2b

    .line 1817
    .end local v29           #delta:I
    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-le v5, v0, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_43

    .line 1820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 1822
    goto :goto_2d

    .line 1824
    :cond_43
    add-int/lit8 v64, v64, 0x1

    .line 1825
    goto :goto_2c

    .line 1841
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v19           #d:I
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v45           #key:I
    .end local v64           #v:I
    :pswitch_2
    const/16 v19, 0x0

    .restart local v19       #d:I
    :goto_2e
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_48

    .line 1842
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1843
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1845
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez v20, :cond_45

    .line 1841
    :cond_44
    :goto_2f
    add-int/lit8 v19, v19, 0x1

    goto :goto_2e

    .line 1847
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1848
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_44

    .line 1849
    add-int/lit8 v11, v45, -0x1

    .line 1850
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .line 1851
    .restart local v32       #f:I
    :goto_30
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_46

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 1852
    add-int/lit8 v11, v11, -0x1

    .line 1851
    add-int/lit8 v32, v32, -0x1

    goto :goto_30

    .line 1854
    :cond_46
    move/from16 v0, v33

    if-ge v11, v0, :cond_47

    .line 1855
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2f

    .line 1857
    :cond_47
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1858
    .restart local v12       #anchorView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v26

    .line 1860
    .local v26, deleteBaseView:Landroid/view/View;
    if-eqz v12, :cond_44

    if-eqz v26, :cond_44

    .line 1861
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2f

    .line 1867
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v26           #deleteBaseView:Landroid/view/View;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v59           #retainView:Landroid/view/View;
    :cond_48
    const/16 v19, 0x0

    :goto_31
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_25

    .line 1868
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1869
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_4a

    .line 1867
    :cond_49
    :goto_32
    add-int/lit8 v19, v19, 0x1

    goto :goto_31

    .line 1871
    :cond_4a
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1872
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_49

    if-lez v34, :cond_49

    .line 1874
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1875
    .restart local v42       #insertView:Landroid/view/View;
    if-eqz v42, :cond_49

    .line 1876
    add-int/lit8 v11, v45, -0x1

    .line 1877
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .line 1878
    .restart local v32       #f:I
    :goto_33
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_4b

    .line 1879
    add-int/lit8 v11, v11, -0x1

    .line 1878
    add-int/lit8 v32, v32, -0x1

    goto :goto_33

    .line 1881
    :cond_4b
    move/from16 v0, v33

    if-ge v11, v0, :cond_4c

    .line 1882
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_32

    .line 1884
    :cond_4c
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 1885
    .restart local v39       #insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 1886
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .line 1888
    .restart local v64       #v:I
    :goto_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_4d

    .line 1898
    :goto_35
    if-eqz v12, :cond_49

    if-eqz v39, :cond_49

    .line 1899
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 1901
    .restart local v29       #delta:I
    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    .line 1902
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_32

    .line 1890
    .end local v29           #delta:I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-le v5, v0, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_4e

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 1894
    goto :goto_35

    .line 1896
    :cond_4e
    add-int/lit8 v64, v64, 0x1

    .line 1897
    goto :goto_34

    .line 1918
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v17           #curFirstView:Landroid/view/View;
    .end local v19           #d:I
    .end local v30           #distortion:I
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v55           #prevFirstView:Landroid/view/View;
    .end local v64           #v:I
    .end local v67           #z:I
    .restart local v62       #time:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_17

    .line 1923
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_17

    .line 1929
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_4f
    const/16 v37, 0x0

    :goto_36
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_52

    .line 1930
    move-object/from16 v0, v57

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1931
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1932
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_50

    .line 1933
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_3

    .line 1929
    :cond_50
    :goto_37
    add-int/lit8 v37, v37, 0x1

    goto :goto_36

    .line 1938
    :pswitch_5
    move/from16 v0, v45

    move/from16 v1, v33

    if-ge v0, v1, :cond_51

    .line 1939
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    .line 1944
    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    .line 1951
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    .line 1957
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_52
    const/16 v37, 0x0

    :goto_38
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_54

    .line 1958
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1959
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1960
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_53

    .line 1961
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_4

    .line 1957
    :cond_53
    :goto_39
    add-int/lit8 v37, v37, 0x1

    goto :goto_38

    .line 1963
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_39

    .line 1970
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_39

    .line 1976
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 1988
    .end local v10           #translateDelay:I
    .end local v13           #animation:Landroid/util/SparseArray;
    .end local v15           #childCount:I
    .end local v25           #deleteAnimation:Landroid/util/SparseArray;
    .end local v27           #deleteDelay:I
    .end local v28           #deleteDuration:I
    .end local v33           #first:I
    .end local v34           #firstPositionOffset:I
    .end local v37           #i:I
    .end local v40           #insertDelay:I
    .end local v41           #insertDuration:I
    .end local v47           #list:[Ljava/lang/Object;
    .end local v54           #prevFirst:I
    .end local v57           #retainAnimation:Landroid/util/SparseArray;
    .end local v62           #time:J
    :cond_55
    :goto_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1990
    .local v38, i$:Ljava/util/Iterator;
    :cond_56
    :goto_3b
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 1998
    return-void

    .line 1979
    .end local v38           #i$:Ljava/util/Iterator;
    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_58

    .line 1980
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1981
    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v5, :cond_59

    .line 1982
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1983
    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_55

    .line 1984
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    goto :goto_3a

    .line 1992
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_5a
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/view/View;

    .line 1993
    .local v64, v:Landroid/view/View;
    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_56

    .line 1995
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_3b

    .line 1916
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1680
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1756
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1933
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1961
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1396
    const/4 v0, 0x1

    .line 1398
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1416
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x1

    .line 1412
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1403
    const/4 v0, 0x1

    .line 1405
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeFlexibleView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2166
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 2167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2168
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 2171
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->forceFinish()V

    .line 2172
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v0, :cond_0

    .line 2173
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v0, :cond_1

    .line 2175
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v0, :cond_2

    .line 2177
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 2178
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2179
    return-void
.end method

.method public setAnimationAlpha(II)V
    .locals 1
    .parameter "minAlpha"
    .parameter "maxAlpha"

    .prologue
    const/16 v0, 0xff

    .line 2434
    if-lt p2, p1, :cond_1

    .line 2435
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2436
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    .line 2437
    :cond_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 2438
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2440
    :cond_1
    return-void
.end method

.method public setAnimationDrawingCacheEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2499
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    .line 2500
    return-void
.end method

.method public setAnimationMaxAlpha(I)V
    .locals 1
    .parameter "maxAlpha"

    .prologue
    .line 2429
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    if-lt p1, v0, :cond_0

    .line 2430
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2431
    :cond_0
    return-void
.end method

.method public setAnimationMinAlpha(I)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 2424
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 2425
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2426
    :cond_0
    return-void
.end method

.method public setAnimationOnDataChangeEnabled(Z)V
    .locals 0
    .parameter "enableAnimation"

    .prologue
    .line 2391
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    .line 2392
    return-void
.end method

.method public setCustomItemDeleteDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    .line 2371
    return-void
.end method

.method public setCustomItemInsertDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2186
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    .line 2187
    return-void
.end method

.method public setDeleteAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 2463
    if-ltz p1, :cond_0

    .line 2464
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    .line 2465
    :cond_0
    return-void
.end method

.method public setDeleteAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 2490
    if-lez p1, :cond_0

    .line 2491
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    .line 2492
    :cond_0
    return-void
.end method

.method public setDrawDeleteAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 2399
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    .line 2400
    return-void
.end method

.method public setDrawInsertAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 2407
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    .line 2408
    return-void
.end method

.method public setInsertAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 2454
    if-ltz p1, :cond_0

    .line 2455
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    .line 2456
    :cond_0
    return-void
.end method

.method public setInsertAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 2481
    if-lez p1, :cond_0

    .line 2482
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    .line 2483
    :cond_0
    return-void
.end method

.method public setItemAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 2443
    if-nez p1, :cond_0

    .line 2444
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    .line 2447
    :goto_0
    return-void

    .line 2446
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    goto :goto_0
.end method

.method public setItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2383
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    .line 2384
    return-void
.end method

.method public setItemAnimationType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2415
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 2416
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    .line 2417
    :cond_0
    return-void
.end method

.method protected setLocalItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2379
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    .line 2380
    return-void
.end method

.method public setTranslateAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 2472
    if-ltz p1, :cond_0

    .line 2473
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 2474
    :cond_0
    return-void
.end method

.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwListItemAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;
    }
.end annotation


# instance fields
.field private final TOTAL_ANIM_TIME:I

.field private firstPosition:I

.field public isMoveFlag:Z

.field private lasPosition:I

.field private listCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private loopIndex:I

.field private mAnimationCount:I

.field public mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

.field public mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

.field protected mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

.field protected mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

.field protected mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

.field protected mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

.field protected mContext:Landroid/content/Context;

.field protected mIsCheckGlobalAnimationEffect:Z

.field protected mIsWindowFocusChanged:Z

.field protected mListAdapter:Landroid/widget/ListAdapter;

.field private mStartAnimTime:J

.field protected mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

.field protected mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

.field protected mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

.field public moveView:Landroid/view/View;

.field public movedPosition:I

.field public movedYCoordinate:I

.field public moving_down:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 63
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 65
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 67
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 69
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 71
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 87
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 91
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 472
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 489
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 506
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 96
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 63
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 65
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 67
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 69
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 71
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 87
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 91
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 472
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 489
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 506
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 101
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 63
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 65
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 67
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 69
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 71
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 87
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 91
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 472
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 489
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 506
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 106
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->firstPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->lasPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private setCoordinates()V
    .locals 5

    .prologue
    .line 244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 246
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 247
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    .line 250
    .local v1, coord:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setTop(I)V

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setBottom(I)V

    .line 252
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v1           #coord:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userGetUseOverscrollEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userIsThisAnimatingForOverscrollListItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRunningAnimationEffectForOverscrollListItem(Landroid/graphics/Canvas;)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 277
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 280
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 284
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userRelease()V

    .line 175
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRelease()V

    .line 180
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRelease()V

    .line 185
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRelease()V

    .line 190
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRelease()V

    .line 195
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRelease()V

    .line 200
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 203
    :cond_5
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onDetachedFromWindow()V

    .line 204
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddLastItem()V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userSetWidthMeasureSpec(I)V

    .line 208
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onMeasure(II)V

    .line 209
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 143
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onWindowFocusChanged(Z)V

    .line 144
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "divider"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 139
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 259
    new-instance p1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;

    .end local p1
    invoke-direct {p1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    .line 270
    .restart local p1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 271
    return-void
.end method

.method public userCancelAnimationEffect()V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForOverscrollListItem()V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForDeleteItems()V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForAddItem()V

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    .line 295
    return-void
.end method

.method public userCancelAnimationEffectForAddItem()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userCancelAnimationEffectForAddItem()V

    .line 370
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userCancelAnimationEffectForDeleteItems()V

    .line 339
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForOverscrollListItem()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userCancelAnimationEffectForOverscrollListItem()V

    .line 305
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    .line 416
    :cond_0
    return-void
.end method

.method public userGetChildViewOnScreenByPosition(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 420
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 421
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 422
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 423
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    .line 427
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 420
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public userGetTimeIntervalAlphaEffectForAddItem()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userGetTimeIntervalAlphaEffectForAddItem()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalAlphaEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalAlphaEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalTransferEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I

    move-result v0

    goto :goto_0
.end method

.method public userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V
    .locals 1
    .parameter "headerViews"
    .parameter "moveViewResourceIds"
    .parameter "showViewResorceIds"
    .parameter "movingViewLength"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V

    .line 378
    :cond_0
    return-void
.end method

.method protected userInitListView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 114
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 115
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 116
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 117
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 119
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDividerHeight(I)V

    .line 123
    return-void
.end method

.method public userIsAnimationEffect()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    return v0
.end method

.method public userIsShownForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userIsShownForShowHeaderAndViewOfListItem()Z

    move-result v0

    goto :goto_0
.end method

.method public userSetOnAnimationEffectForAddItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForAddItemListener"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 494
    return-void
.end method

.method public userSetOnAnimationEffectForDeleteItemsListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForDeleteItemsListener"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 477
    return-void
.end method

.method public userSetOnAnimationEffectForShowHeaderAndViewOfListItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForShowHeaderAndViewOfListItemListener"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 511
    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByIndex(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 456
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 457
    .local v2, size:I
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 459
    .local v1, offsetY:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 460
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0           #i:I
    .end local v1           #offsetY:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 465
    .restart local v1       #offsetY:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 466
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    .end local v0           #i:I
    .end local v1           #offsetY:I
    :cond_1
    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 433
    const/4 v0, -0x1

    .line 434
    .local v0, clickedItemIndex:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 435
    .local v2, rc:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 436
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 437
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 438
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 440
    move v0, v1

    .line 445
    .end local v4           #view:Landroid/view/View;
    :cond_0
    if-gez v0, :cond_3

    .line 451
    .end local v0           #clickedItemIndex:I
    .end local v1           #i:I
    .end local v2           #rc:Landroid/graphics/Rect;
    .end local v3           #size:I
    :cond_1
    :goto_1
    return-void

    .line 436
    .restart local v0       #clickedItemIndex:I
    .restart local v1       #i:I
    .restart local v2       #rc:Landroid/graphics/Rect;
    .restart local v3       #size:I
    .restart local v4       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v4           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    goto :goto_1
.end method

.method public userSetTimeIntervalAlphaEffectForAddItem(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userSetTimeIntervalAlphaEffectForAddItem(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalAlphaEffectForDeleteItems(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalAlphaEffectForDeleteItems(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForDeleteItems(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalTransferEffectForDeleteItems(I)V

    .line 334
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public userSetUseAnimationEffectForOverscrollListItem(Z)V
    .locals 1
    .parameter "isUseOverscrollEffect"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userSetUseOverscrollEffect(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddFirstItem()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddFirstItem()V

    .line 344
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddItem(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddLastItem()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddLastItem()V

    .line 349
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForDeleteItems([I)V
    .locals 1
    .parameter "selectedIndeces"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStartAnimationEffectForDeleteItems([I)V

    .line 310
    :cond_0
    return-void
.end method

.method public userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V

    .line 410
    :cond_0
    return-void
.end method

.method public userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V

    .line 404
    :cond_0
    return-void
.end method

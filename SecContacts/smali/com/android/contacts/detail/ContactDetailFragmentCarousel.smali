.class public Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastX:F

.field private lastY:F

.field private final mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mAllowedHorizontalScrollLength:I

.field private mCurrentPage:I

.field private mEnableSwipe:Z

.field private mLastScrollPosition:I

.field private mLowerThreshold:I

.field private mMinFragmentWidth:I

.field private mStartScrollPosition:F

.field private final mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mUpperThreshold:I

.field private xDistance:F

.field private yDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 51
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 57
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 63
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 194
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 97
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04003a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    return-void
.end method

.method private getDesiredPage()I
    .locals 3

    .prologue
    .line 266
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid current page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToEdge()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v2, :cond_0

    move v0, v1

    .line 257
    .local v0, x:I
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 258
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 259
    return-void

    .line 256
    .end local v0           #x:I
    :cond_0
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0
.end method

.method private updateTouchInterceptors()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eq v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 218
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 213
    goto :goto_0

    :cond_3
    move v1, v2

    .line 216
    goto :goto_1
.end method


# virtual methods
.method public enableSwipe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    .line 168
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 175
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 178
    :cond_0
    return-void

    .line 169
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 237
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mStartScrollPosition:F

    .line 238
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 244
    .local v0, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 245
    .local v1, curY:F
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    .line 246
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    .line 247
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    .line 248
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    .line 249
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 250
    const/4 v2, 0x0

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 107
    .local v2, screenWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 111
    .local v1, screenHeight:I
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 112
    const v3, 0x3f59999a

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 113
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 115
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 116
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 120
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, child:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eqz v3, :cond_2

    .line 124
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 135
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_0
    invoke-static {v2, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 138
    return-void

    .line 130
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 223
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 283
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 288
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mStartScrollPosition:F

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 290
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mStartScrollPosition:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mStartScrollPosition:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_3
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mStartScrollPosition:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 299
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getDesiredPage()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 300
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    move v0, v1

    .line 301
    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "pageIndex"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 147
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 148
    return-void
.end method

.method public setFragmentViews(Lcom/android/contacts/widget/FrameLayoutWithOverlay;Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V
    .locals 2
    .parameter "about"
    .parameter "updates"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 155
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 157
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsMultiWindowPopup:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 255
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 176
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 96
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 97
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 98
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 99
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 100
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 104
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 119
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 120
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 121
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 128
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 131
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 134
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 135
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 136
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 139
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 146
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 194
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 195
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 197
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 203
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 204
    .local v2, animStyle:I
    const v7, 0x10301ea

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 216
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 217
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 220
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 224
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 225
    .local v5, count:I
    const/4 v4, -0x1

    .line 226
    .local v4, belowAnchorStateIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 227
    if-eq v6, v1, :cond_3

    .line 228
    move v4, v6

    .line 235
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 236
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void

    .line 226
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v5       #count:I
    .restart local v6       #i:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 239
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 96
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 97
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 98
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 99
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 100
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 103
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 104
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 119
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 120
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 128
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 131
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 134
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 135
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 136
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 139
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 146
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 315
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 318
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 319
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 320
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 321
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1114
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1115
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1116
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e4

    .line 1122
    :goto_0
    return v0

    .line 1116
    :cond_0
    const v0, 0x10301e3

    goto :goto_0

    .line 1120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1122
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1070
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1078
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1079
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1081
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1082
    or-int/lit8 p1, p1, 0x8

    .line 1083
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1084
    or-int/2addr p1, v2

    .line 1089
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1090
    or-int/lit8 p1, p1, 0x10

    .line 1092
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1093
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1095
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1096
    or-int/lit16 p1, p1, 0x200

    .line 1098
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1099
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1101
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1102
    or-int/lit16 p1, p1, 0x100

    .line 1104
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1105
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 1107
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1108
    or-int/lit8 p1, p1, 0x20

    .line 1110
    :cond_8
    return p1

    .line 1086
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1087
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .parameter "token"

    .prologue
    .line 1031
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1036
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x33

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1037
    iget v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1038
    iget v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1039
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1040
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1044
    :goto_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1045
    iget v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1046
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1047
    iget v4, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PopupWindow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1051
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1055
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v3

    .line 1056
    .local v3, windowMode:I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1057
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1059
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x200

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v5, :cond_0

    .line 1062
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1066
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #windowMode:I
    :cond_0
    return-object v2

    .line 1042
    :cond_1
    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 33
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1143
    .local v4, anchorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    add-int v30, v30, p3

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int v30, v30, v4

    add-int v30, v30, p4

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1147
    const/4 v12, 0x0

    .line 1149
    .local v12, onTop:Z
    const/16 v30, 0x33

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1152
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1153
    .local v9, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int v30, v30, v4

    add-int v19, v30, p4

    .line 1157
    .local v19, screenY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 1160
    .local v17, root:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1161
    .local v26, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v27, 0x0

    .line 1163
    .local v27, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v27, v26

    .line 1164
    check-cast v27, Landroid/view/WindowManager$LayoutParams;

    .line 1167
    :cond_0
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 1168
    .local v23, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 1171
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1175
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v30, v0

    add-int v30, v30, v19

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v31, v0

    add-int v30, v30, v31

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v30, v30, v31

    if-lez v30, :cond_5

    .line 1180
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v20

    .line 1182
    .local v20, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v21

    .line 1183
    .local v21, scrollY:I
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    add-int v30, v30, v20

    add-int v30, v30, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v31, v0

    add-int v31, v31, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v32

    add-int v31, v31, v32

    add-int v31, v31, p4

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1185
    .local v14, r:Landroid/graphics/Rect;
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v14, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1190
    .end local v14           #r:Landroid/graphics/Rect;
    .end local v20           #scrollX:I
    .end local v21           #scrollY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    add-int v30, v30, p3

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    add-int v30, v30, p4

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1197
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    sub-int v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v6, v30, p4

    .line 1198
    .local v6, bottomHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 1201
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1202
    .local v7, d:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getRawHeight()I

    move-result v15

    .line 1203
    .local v15, rawHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v30, v15, v30

    sub-int v6, v30, v4

    .line 1208
    .end local v7           #d:Landroid/view/Display;
    .end local v15           #rawHeight:I
    :cond_4
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    sub-int v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v30, v30, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    sub-int v31, v31, p4

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    const/4 v12, 0x1

    .line 1210
    :goto_0
    if-eqz v12, :cond_10

    .line 1211
    const/16 v30, 0x53

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1212
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    sub-int v30, v30, v31

    add-int v30, v30, p4

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1219
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v31, v0

    add-int v30, v30, v31

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v30, v30, v31

    if-lez v30, :cond_5

    .line 1220
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v31, v0

    add-int v30, v30, v31

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v8, v30, v31

    .line 1221
    .local v8, diff:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    sub-int v30, v30, v8

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1222
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    if-gtz v30, :cond_5

    .line 1223
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1229
    .end local v6           #bottomHeight:I
    .end local v8           #diff:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    .line 1230
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v10, v30, v31

    .line 1232
    .local v10, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    add-int v16, v30, v31

    .line 1233
    .local v16, right:I
    move/from16 v0, v16

    if-le v0, v10, :cond_6

    .line 1234
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    sub-int v31, v16, v10

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1237
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 1238
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1239
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1242
    :cond_7
    if-eqz v12, :cond_11

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int v30, v30, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v31, v0

    sub-int v13, v30, v31

    .line 1250
    .local v13, popupTop:I
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v13, v0, :cond_8

    .line 1251
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    add-int v30, v30, v13

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1253
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1261
    .end local v13           #popupTop:I
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    if-eqz v27, :cond_e

    .line 1264
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v25, v30, v31

    .line 1265
    .local v25, visibleDisplayFrameWidth:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v24, v30, v31

    .line 1267
    .local v24, visibleDisplayFrameHeight:I
    const/16 v28, 0x0

    .line 1268
    .local v28, xRootInScreen:I
    const/16 v29, 0x0

    .line 1269
    .local v29, yRootInScreen:I
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1271
    .local v18, rootLocation:[I
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1273
    const/16 v16, 0x0

    .line 1274
    const/4 v11, 0x0

    .line 1275
    .local v11, left:I
    const/16 v22, 0x0

    .line 1276
    .local v22, top:I
    const/4 v5, 0x0

    .line 1279
    .local v5, bottom:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x3

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 1280
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    .line 1293
    :cond_9
    :goto_3
    const/16 v30, 0x0

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v16, v30, p3

    .line 1294
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-le v0, v1, :cond_a

    .line 1295
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v31, v16, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1298
    :cond_a
    const/16 v30, 0x0

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v31, v0

    add-int v11, v30, v31

    .line 1299
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v11, v0, :cond_b

    .line 1300
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v31, v31, v11

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1304
    :cond_b
    const/16 v30, 0x33

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    add-int v30, v30, p4

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1307
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x30

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 1308
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    .line 1315
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    .line 1316
    const/16 v30, 0x1

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v5, v30, p4

    .line 1317
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v5, v0, :cond_d

    .line 1318
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v31, v5, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1319
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1322
    :cond_d
    const/16 v30, 0x1

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    add-int v22, v30, v31

    .line 1323
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 1324
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v31, v31, v22

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1341
    .end local v5           #bottom:I
    .end local v10           #displayFrameWidth:I
    .end local v11           #left:I
    .end local v16           #right:I
    .end local v18           #rootLocation:[I
    .end local v22           #top:I
    .end local v24           #visibleDisplayFrameHeight:I
    .end local v25           #visibleDisplayFrameWidth:I
    .end local v28           #xRootInScreen:I
    .end local v29           #yRootInScreen:I
    :cond_e
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    const/high16 v31, 0x1000

    or-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1343
    return v12

    .line 1208
    .restart local v6       #bottomHeight:I
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    add-int v30, v30, p4

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1257
    .end local v6           #bottomHeight:I
    .restart local v10       #displayFrameWidth:I
    .restart local v16       #right:I
    :cond_11
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1281
    .restart local v5       #bottom:I
    .restart local v11       #left:I
    .restart local v18       #rootLocation:[I
    .restart local v22       #top:I
    .restart local v24       #visibleDisplayFrameHeight:I
    .restart local v25       #visibleDisplayFrameWidth:I
    .restart local v28       #xRootInScreen:I
    .restart local v29       #yRootInScreen:I
    :cond_12
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x5

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 1282
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v31, v0

    sub-int v28, v30, v31

    goto/16 :goto_3

    .line 1283
    :cond_13
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1284
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    sub-int v30, v25, v30

    div-int/lit8 v30, v30, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v31, v0

    add-int v28, v30, v31

    goto/16 :goto_3

    .line 1309
    :cond_14
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x50

    const/16 v31, 0x50

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 1310
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    goto/16 :goto_4

    .line 1311
    :cond_15
    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x10

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 1312
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    sub-int v30, v24, v30

    div-int/lit8 v30, v30, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    add-int v29, v30, v31

    goto/16 :goto_4

    .line 1327
    :cond_16
    const/16 v30, 0x1

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v5, v30, p4

    .line 1328
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v5, v0, :cond_17

    .line 1329
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v31, v5, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1332
    :cond_17
    const/16 v30, 0x1

    aget v30, v18, v30

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v31, v0

    add-int v22, v30, v31

    .line 1333
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 1334
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v31, v31, v22

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    const/4 v9, 0x0

    .line 1348
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1353
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1357
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1358
    .local v5, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1360
    .local v6, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1361
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1364
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1365
    .local v4, visibleDisplayFrame:Landroid/graphics/Rect;
    iput v9, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1367
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1368
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1370
    if-eqz v6, :cond_3

    .line 1371
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v8

    .line 1372
    .local v3, systemUiVisibility:I
    and-int/lit8 v7, v3, 0x4

    if-nez v7, :cond_3

    .line 1373
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1376
    .end local v3           #systemUiVisibility:I
    :cond_3
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1377
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1378
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1379
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1381
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v7, :cond_4

    .line 1382
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1385
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1017
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1018
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 975
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 976
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 980
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 981
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 982
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 983
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 985
    const/4 v0, -0x2

    .line 990
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 991
    .local v3, popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 994
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1001
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1002
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1003
    return-void

    .line 999
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1816
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1818
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1819
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1820
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1821
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1824
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1825
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1826
    return-void
.end method

.method private setMultiWindowPopup(Z)V
    .locals 0
    .parameter "isMultiWindowPopup"

    .prologue
    .line 1389
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 1390
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1803
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1804
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1805
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1806
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1808
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1809
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1810
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1812
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1813
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 24
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1698
    .local v12, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_b

    :cond_2
    const/4 v11, 0x1

    .line 1699
    .local v11, needsUpdate:Z
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_c

    .line 1700
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1707
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager$LayoutParams;

    .line 1709
    .local v13, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1710
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_d

    .line 1711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1715
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_e

    .line 1716
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1722
    :cond_5
    :goto_4
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    .line 1723
    .local v21, x:I
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    .line 1725
    .local v22, y:I
    if-eqz p2, :cond_f

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1732
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v4, :cond_9

    .line 1733
    const/16 v23, 0x0

    .line 1734
    .local v23, yRootInScreen:I
    const/16 v16, 0x0

    .line 1735
    .local v16, top:I
    const/4 v10, 0x0

    .line 1737
    .local v10, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1739
    .local v14, root:Landroid/view/View;
    const/4 v4, 0x2

    new-array v15, v4, [I

    .line 1740
    .local v15, rootLocation:[I
    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1742
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 1743
    .local v19, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v20, 0x0

    .line 1745
    .local v20, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_6

    move-object/from16 v20, v19

    .line 1746
    check-cast v20, Landroid/view/WindowManager$LayoutParams;

    .line 1749
    :cond_6
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1750
    .local v17, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1752
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v18, v4, v5

    .line 1754
    .local v18, visibleDisplayFrameHeight:I
    if-eqz v20, :cond_9

    .line 1755
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_10

    .line 1756
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v23, v0

    .line 1763
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v4, :cond_12

    .line 1764
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    add-int v4, v4, p7

    add-int v10, v4, p4

    .line 1765
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_8

    .line 1766
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v4

    sub-int p7, p7, v4

    .line 1767
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1770
    :cond_8
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v16, v4, v5

    .line 1771
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 1772
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v16

    add-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1789
    .end local v10           #bottom:I
    .end local v14           #root:Landroid/view/View;
    .end local v15           #rootLocation:[I
    .end local v16           #top:I
    .end local v17           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v18           #visibleDisplayFrameHeight:I
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v20           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #yRootInScreen:I
    :cond_9
    :goto_7
    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_14

    :cond_a
    const/4 v9, 0x1

    :goto_8
    move-object/from16 v4, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1698
    .end local v11           #needsUpdate:Z
    .end local v13           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1701
    .restart local v11       #needsUpdate:Z
    :cond_c
    if-eqz v11, :cond_4

    .line 1703
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1704
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 1713
    .restart local v13       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 1718
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 1728
    .restart local v21       #x:I
    .restart local v22       #y:I
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4, v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto/16 :goto_5

    .line 1757
    .restart local v10       #bottom:I
    .restart local v14       #root:Landroid/view/View;
    .restart local v15       #rootLocation:[I
    .restart local v16       #top:I
    .restart local v17       #visibleDisplayFrame:Landroid/graphics/Rect;
    .restart local v18       #visibleDisplayFrameHeight:I
    .restart local v19       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v20       #wlp:Landroid/view/WindowManager$LayoutParams;
    .restart local v23       #yRootInScreen:I
    :cond_10
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_11

    .line 1758
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v23, v4, v5

    goto/16 :goto_6

    .line 1759
    :cond_11
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_7

    .line 1760
    iget v4, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v4, v18, v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v23, v4, v5

    goto/16 :goto_6

    .line 1775
    :cond_12
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v4, v5

    add-int v10, v4, p4

    .line 1776
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_13

    .line 1777
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v10, v5

    sub-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1780
    :cond_13
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v16, v4, v5

    .line 1781
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 1782
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v16

    add-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    .line 1789
    .end local v10           #bottom:I
    .end local v14           #root:Landroid/view/View;
    .end local v15           #rootLocation:[I
    .end local v16           #top:I
    .end local v17           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v18           #visibleDisplayFrameHeight:I
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v20           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #yRootInScreen:I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_8
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 931
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 932
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 934
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 939
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1495
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1498
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1501
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1506
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1508
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1513
    :cond_1
    return-void

    .line 1503
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1506
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1508
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1503
    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 14
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    .line 1440
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1441
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1444
    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1446
    .local v9, root:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1447
    .local v10, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 1449
    .local v11, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v12, v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_0

    move-object v11, v10

    .line 1450
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1451
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x200

    if-nez v12, :cond_4

    const/4 v6, 0x0

    .line 1452
    .local v6, isMultiWindowPopup:Z
    :goto_0
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 1455
    .end local v6           #isMultiWindowPopup:Z
    .end local v9           #root:Landroid/view/View;
    .end local v10           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1458
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1459
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1461
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1462
    .local v1, bottomEdge:I
    if-eqz p3, :cond_1

    .line 1463
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1464
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v1, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1466
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    sub-int v12, v1, v12

    sub-int v3, v12, p2

    .line 1467
    .local v3, distanceToBottom:I
    const/4 v12, 0x1

    aget v12, v0, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    add-int v4, v12, p2

    .line 1470
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1473
    .local v8, returnedHeight:I
    iget-boolean v12, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v12, :cond_2

    .line 1474
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    div-int/lit8 v5, v12, 0x2

    .line 1475
    .local v5, halfScreenSize:I
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1479
    .end local v5           #halfScreenSize:I
    :cond_2
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1480
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1481
    iget-object v12, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v8, v12

    .line 1484
    :cond_3
    return v8

    .line 1451
    .end local v0           #anchorPos:[I
    .end local v1           #bottomEdge:I
    .end local v3           #distanceToBottom:I
    .end local v4           #distanceToTop:I
    .end local v8           #returnedHeight:I
    .restart local v9       #root:Landroid/view/View;
    .restart local v10       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v11       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 632
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 633
    goto :goto_0

    .line 635
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 621
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 622
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 381
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 382
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 339
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 340
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 610
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 611
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 612
    return-void

    .line 611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 600
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 601
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 413
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 417
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 458
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 459
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 772
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 773
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 364
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 484
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 485
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 675
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 676
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 691
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 692
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1521
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1522
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 571
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 572
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 498
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 499
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 652
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 653
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 427
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 428
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 719
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 720
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 538
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 539
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 798
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 799
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 745
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 746
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 747
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 702
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 703
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 876
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 877
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 7
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v5, 0x1

    .line 894
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    if-eqz p1, :cond_2

    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 901
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 902
    .local v3, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 904
    .local v4, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v6, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    move-object v4, v3

    .line 905
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 906
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 907
    .local v0, isMultiWindowPopup:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 912
    .end local v0           #isMultiWindowPopup:Z
    .end local v2           #root:Landroid/view/View;
    .end local v3           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 914
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 915
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 918
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 920
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 922
    iget v5, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v5, :cond_3

    iget v5, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v5, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 923
    :cond_3
    iget v5, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v5, :cond_4

    iget v5, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v5, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 925
    :cond_4
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 927
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .end local v1           #p:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #root:Landroid/view/View;
    .restart local v3       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v0, v5

    .line 906
    goto :goto_1
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 846
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 847
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 849
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 850
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 852
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 853
    if-nez p2, :cond_2

    .line 854
    const/16 p2, 0x33

    .line 856
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 857
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 858
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 859
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 860
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 861
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 826
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1532
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1539
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1541
    .local v3, update:Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1542
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1543
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1544
    const/4 v3, 0x1

    .line 1547
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1548
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1549
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1550
    const/4 v3, 0x1

    .line 1553
    :cond_3
    if-eqz v3, :cond_0

    .line 1554
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1567
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1569
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1570
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1584
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1585
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1601
    if-eq p3, v7, :cond_0

    .line 1602
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1603
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1606
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1607
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1608
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1611
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1656
    :cond_2
    :goto_0
    return-void

    .line 1615
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1617
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1619
    .local v5, update:Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1620
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1621
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1622
    const/4 v5, 0x1

    .line 1625
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1626
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1627
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1628
    const/4 v5, 0x1

    .line 1631
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1632
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1633
    const/4 v5, 0x1

    .line 1636
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1637
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1638
    const/4 v5, 0x1

    .line 1641
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1642
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1643
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1644
    const/4 v5, 0x1

    .line 1647
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1648
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1649
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1650
    const/4 v5, 0x1

    .line 1653
    :cond_9
    if-eqz v5, :cond_2

    .line 1654
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1619
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1625
    .restart local v1       #finalWidth:I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1668
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1669
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1687
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1688
    return-void
.end method

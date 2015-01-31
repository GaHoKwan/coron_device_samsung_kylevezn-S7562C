.class public abstract Lcom/sec/android/glview/TwGLView;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Landroid/view/IGLView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;,
        Lcom/sec/android/glview/TwGLView$OnClickListener;,
        Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;,
        Lcom/sec/android/glview/TwGLView$OnFocusListener;,
        Lcom/sec/android/glview/TwGLView$OnKeyListener;,
        Lcom/sec/android/glview/TwGLView$OnTouchListener;,
        Lcom/sec/android/glview/TwGLView$OnDragListener;
    }
.end annotation


# static fields
.field public static final CLICKABLE:I = 0x4000

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field public static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field public static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field private isNinePatchBackground:Z

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/sec/android/glview/TwGLView;

.field private mBackgroundResId:I

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field private mContinuousDrawMode:Z

.field private mDefaultOrientation:I

.field private mDragSensitivity:I

.field private mDragVibration:Z

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocused:Z

.field protected final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mHasExtraDescription:Z

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

.field protected mHoverPopupGravity:I

.field protected mHoverPopupOffsetX:I

.field protected mHoverPopupOffsetY:I

.field private final mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field public mLoaded:Z

.field private mLoading:Z

.field protected mManualClip:Z

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mOldClipRect:Landroid/graphics/Rect;

.field protected mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

.field protected mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

.field protected mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

.field protected mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

.field private mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

.field protected mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mOrientation:I

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/sec/android/glview/TwGLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationMatrix:[F

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/sec/android/glview/TwGLView;

.field public mTitle:Ljava/lang/String;

.field private mToggleButton:Z

.field private mTop:F

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslationMatrix:[F

.field protected mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private setDragging:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 98
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 101
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 104
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 107
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 110
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 113
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 124
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 142
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 237
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 240
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 255
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 258
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 261
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 264
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 267
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 270
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 272
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 274
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 301
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 304
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 307
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 319
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 321
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 331
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 334
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 337
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 340
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 346
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 349
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 352
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 355
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 358
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 361
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 368
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 373
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 376
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 388
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 391
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 394
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 397
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 399
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 401
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 404
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 411
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 413
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 415
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 417
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 421
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 425
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 427
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 431
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 432
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 433
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 434
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 435
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 438
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 546
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 574
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 593
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 599
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 631
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 657
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 719
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 720
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 721
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 723
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 724
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 726
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 727
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 729
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 732
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 733
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 735
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 736
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 737
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 738
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 740
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 742
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 743
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 98
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 101
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 104
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 107
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 110
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 113
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 119
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 122
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 124
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 142
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 237
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 240
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 255
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 258
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 261
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 264
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 267
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 270
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 272
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 274
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 301
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 304
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 307
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 319
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 321
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 331
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 334
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 337
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 340
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 346
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 349
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 352
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 355
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 358
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 361
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 368
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 373
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 376
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 388
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 391
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 394
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 397
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 399
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 401
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 404
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 411
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 413
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 415
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 417
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 421
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 425
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 427
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 431
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 432
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 433
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 434
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 435
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 438
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 546
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 574
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 593
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 599
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 631
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 657
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 760
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 762
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 763
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 765
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 766
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 768
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 769
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 771
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 772
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 774
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 775
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 776
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 777
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 779
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 780
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 781
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 6

    .prologue
    .line 2298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    :goto_0
    monitor-exit p0

    return-void

    .line 2298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playFocusSound(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 3388
    packed-switch p1, :pswitch_data_0

    .line 3399
    :goto_0
    return-void

    .line 3393
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3394
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3388
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1729
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1730
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1732
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1741
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 3260
    return-void
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3257
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 1863
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1865
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 1774
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 1775
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 1776
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 1778
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1779
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1780
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1782
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 1783
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1784
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1786
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 1787
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1788
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1790
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 1791
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v1}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1792
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1794
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 1796
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_4

    .line 1797
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 1806
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 1807
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 1808
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1809
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    .end local v0           #i:I
    :cond_6
    monitor-exit p0

    return-void

    .line 1774
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 2765
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 2766
    return-void
.end method

.method public clearIndicators()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3368
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 3370
    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3374
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 3375
    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3377
    :cond_1
    return-void
.end method

.method protected final declared-synchronized clip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 2739
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-nez v0, :cond_0

    .line 2740
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2756
    :goto_0
    monitor-exit p0

    return-void

    .line 2746
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 1587
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1599
    :cond_0
    :goto_0
    return v0

    .line 1591
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1595
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-eqz v1, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 3249
    return-void
.end method

.method public final declared-synchronized draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
    .locals 11
    .parameter "gl"
    .parameter "parentMatrix"
    .parameter "parentClipRect"

    .prologue
    const/4 v2, 0x4

    .line 2131
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v8, v0

    .line 2133
    .local v8, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 2134
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2135
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2142
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v1, v2, :cond_0

    .line 2146
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 2147
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2150
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 2151
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2153
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v7

    .line 2154
    .local v7, alpha:F
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2155
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2157
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 2159
    .local v5, currentMatrix:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 2160
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 2161
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2162
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getCurrentDrawTime()J

    move-result-wide v9

    .line 2163
    .local v9, timeMillis:J
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 2164
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2131
    .end local v5           #currentMatrix:[F
    .end local v7           #alpha:F
    .end local v8           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v9           #timeMillis:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2168
    .restart local v5       #currentMatrix:[F
    .restart local v7       #alpha:F
    .restart local v8       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v9       #timeMillis:J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    .line 2169
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2171
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2172
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2181
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v9, v10, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2182
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2185
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2186
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x5

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2188
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->toGLMatrix([F)[F

    .line 2189
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2191
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    .line 2192
    iput v7, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 2195
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2196
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2198
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2217
    .end local v9           #timeMillis:J
    .restart local v5       #currentMatrix:[F
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-eqz v1, :cond_7

    .line 2218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2219
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2220
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2221
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2227
    .restart local v5       #currentMatrix:[F
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_8

    .line 2228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 2229
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_8

    .line 2230
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2238
    :cond_8
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_f

    .line 2239
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2240
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2241
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2242
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 2243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2244
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2245
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 2173
    .restart local v9       #timeMillis:J
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    if-eqz v1, :cond_5

    .line 2174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2175
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2176
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 2200
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_b

    .line 2201
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2208
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2210
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 2211
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2223
    .end local v9           #timeMillis:J
    :cond_c
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto/16 :goto_2

    .line 2249
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-nez v1, :cond_e

    .line 2250
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2259
    :cond_e
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2262
    :cond_f
    if-eqz v5, :cond_10

    .line 2263
    const/4 v1, 0x0

    invoke-interface {p1, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2265
    :cond_10
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2267
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_11

    .line 2268
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2270
    :cond_11
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 2272
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_12

    .line 2273
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2275
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2252
    :cond_13
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2255
    :cond_14
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 3331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3332
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3333
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3335
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 3336
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :goto_1
    return-void

    .line 3338
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 8
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 2999
    :cond_0
    const/4 v4, 0x0

    .line 3044
    :cond_1
    :goto_0
    return-object v4

    .line 3002
    :cond_2
    const/4 v4, 0x0

    .line 3005
    .local v4, resultView:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v3

    .line 3006
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v5

    .line 3007
    .local v5, top:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v0

    .line 3008
    .local v0, focusedViewLeft:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v1

    .line 3009
    .local v1, focusedViewTop:F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3010
    .local v2, horizontalOffset:F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 3012
    .local v6, verticalOffset:F
    sparse-switch p2, :sswitch_data_0

    .line 3042
    const/4 v4, 0x0

    goto :goto_0

    .line 3014
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 3015
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3016
    move-object v4, p0

    goto :goto_0

    .line 3021
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 3022
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3023
    move-object v4, p0

    goto :goto_0

    .line 3028
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 3029
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3030
    move-object v4, p0

    goto :goto_0

    .line 3035
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 3036
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3037
    move-object v4, p0

    goto :goto_0

    .line 3012
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 3059
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 3069
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3062
    .restart local p0
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 3063
    goto :goto_0

    .line 3066
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 3069
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "id"

    .prologue
    .line 2977
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 2980
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "tag"

    .prologue
    .line 2991
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 2994
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getAlpha()F
    .locals 2

    .prologue
    .line 875
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 876
    const v0, 0x3e4ccccd

    .line 881
    :goto_0
    return v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 879
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 881
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_0
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1553
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1332
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 2023
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2067
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 2073
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaLeft()F

    move-result v0

    .line 1530
    .local v0, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaTop()F

    move-result v1

    .line 1531
    .local v1, top:F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v7

    add-float v4, v6, v7

    .line 1563
    .local v4, offsetX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v7

    add-float v5, v6, v7

    .line 1564
    .local v5, offsetY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1565
    .local v1, currentLeft:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1566
    .local v3, currentTop:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1567
    .local v2, currentRight:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1569
    .local v0, currentBottom:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1574
    .local v0, current:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1353
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 1

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 3077
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3078
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 3079
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3081
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 3085
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 3090
    .end local p0
    :goto_0
    return-object p0

    .line 3087
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 3088
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object p0

    goto :goto_0

    .line 3090
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1272
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1273
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1275
    :goto_1
    return v0

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1270
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1275
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 1043
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1044
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1046
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1048
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1050
    .local v1, centerY:F
    packed-switch p1, :pswitch_data_0

    .line 1078
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    return-object v2

    .line 1052
    .restart local v0       #centerX:F
    .restart local v1       #centerY:F
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1053
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1056
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1057
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1060
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1061
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1064
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1065
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1072
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1074
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 2117
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    return-object v0
.end method

.method public getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1638
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1645
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1149
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    return v0
.end method

.method public getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method public getOnFocusListener()Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1217
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1220
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1317
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 3229
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    return v0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButton()Z
    .locals 1

    .prologue
    .line 3347
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    return v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1293
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1298
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1299
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1301
    :goto_1
    return v0

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1296
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1301
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2445
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2447
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2457
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2459
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 1822
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1342
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 1924
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 3104
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 3279
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2909
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3100
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 3095
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    return v0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 3275
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1829
    :goto_0
    return v0

    .line 1827
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1829
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    const/4 v0, 0x1

    .line 2873
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    const/4 v0, 0x1

    .line 2881
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2084
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2085
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2086
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 2090
    goto :goto_0

    .line 2093
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2096
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 2100
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 2101
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 2106
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    goto :goto_0

    .line 2103
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2104
    goto :goto_0

    .line 2084
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mBottom()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    .prologue
    const/high16 v0, -0x4080

    .line 1456
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1478
    :goto_0
    return v0

    .line 1459
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1461
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1463
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1465
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1470
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1473
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    goto :goto_0

    .line 1476
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_0

    .line 1457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public mLeft()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    .prologue
    const/high16 v0, -0x4080

    .line 1369
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1391
    :goto_0
    return v0

    .line 1372
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1374
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1376
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1378
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1386
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_0

    .line 1389
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    goto :goto_0

    .line 1370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1383
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public mRight()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    .prologue
    const/high16 v0, -0x4080

    .line 1427
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1449
    :goto_0
    return v0

    .line 1430
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1432
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1434
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1436
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1444
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_0

    .line 1447
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    goto :goto_0

    .line 1428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1441
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public mTop()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLLayout"
    .end annotation

    .prologue
    const/high16 v0, -0x4080

    .line 1398
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1420
    :goto_0
    return v0

    .line 1401
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1405
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1407
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1415
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    goto :goto_0

    .line 1418
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_0

    .line 1399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1412
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2630
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2631
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2632
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2633
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2634
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2636
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2639
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 2566
    .local v10, orientation:I
    if-nez v10, :cond_0

    .line 2567
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 2568
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 2608
    :goto_0
    return-void

    .line 2572
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 2576
    .local v0, coordinateTransformMatrix:[F
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v9

    .line 2577
    .local v9, leftTop:[F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 2578
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2579
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2582
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 2583
    .local v7, glLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v7, v2

    .line 2584
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2586
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 2587
    .local v8, glRotatedLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v8, v2

    .line 2588
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2590
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2591
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2592
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2593
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2598
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 2599
    .local v5, glCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v5, v2

    .line 2600
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2602
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 2603
    .local v1, glTransformedCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 2604
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2606
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized moveBaseLayout(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1678
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1679
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1681
    .local v0, height:F
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1682
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1684
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1685
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1686
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1687
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1689
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    monitor-exit p0

    return-void

    .line 1678
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1693
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1694
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1695
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1696
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1698
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1699
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1701
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1702
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1703
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1704
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1706
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    monitor-exit p0

    return-void

    .line 1693
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 1710
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1711
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1712
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1713
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1715
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1716
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1718
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1719
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1720
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1721
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1723
    if-eqz p3, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    :cond_0
    monitor-exit p0

    return-void

    .line 1710
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveLayout(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1658
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1662
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    monitor-exit p0

    return-void

    .line 1657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveLayoutAbsolute(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1667
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1669
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1670
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1671
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1672
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1674
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    monitor-exit p0

    return-void

    .line 1666
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 3241
    return-void
.end method

.method protected abstract onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
.end method

.method public onFocusStatusChanged(I)V
    .locals 9
    .parameter "focusStatus"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3179
    if-ne p1, v7, :cond_2

    .line 3180
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 3181
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 3187
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getFocusResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3189
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 3190
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 3191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_1

    .line 3197
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 3199
    :cond_1
    return-void

    .line 3194
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 9
    .parameter "hoverStatus"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3202
    if-nez p1, :cond_1

    .line 3203
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3204
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 3205
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getHoverResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3207
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 3208
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 3209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3220
    :cond_0
    :goto_0
    return-void

    .line 3212
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2901
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2905
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 3237
    return-void
.end method

.method protected abstract onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x4000

    .line 2927
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_5

    .line 2928
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2929
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, p1, :cond_1

    .line 2967
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    move v8, p1

    .line 2934
    .local v8, tempOrientation:I
    if-nez v8, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, v2, :cond_6

    .line 2935
    const/4 v8, 0x4

    .line 2940
    :cond_2
    :goto_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 2941
    .local v7, degree:I
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2943
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2944
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    if-nez v1, :cond_7

    .line 2945
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_3

    .line 2946
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 2947
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_4

    .line 2948
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 2950
    :cond_4
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2951
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 2964
    .end local v7           #degree:I
    .end local v8           #tempOrientation:I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_0

    .line 2965
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    mul-int/lit8 v2, p1, 0x5a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setRotation(I)V

    goto :goto_0

    .line 2936
    .restart local v8       #tempOrientation:I
    :cond_6
    if-ne v8, v2, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-nez v1, :cond_2

    .line 2937
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    goto :goto_1

    .line 2953
    .restart local v7       #degree:I
    :cond_7
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2954
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 2955
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2956
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_8

    .line 2957
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2958
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2959
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 3272
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2892
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized refreshClipRect()V
    .locals 7

    .prologue
    .line 2676
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 2730
    :goto_0
    monitor-exit p0

    return-void

    .line 2680
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2681
    .local v1, left:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2682
    .local v3, top:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2683
    .local v2, right:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2685
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2686
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    int-to-float v5, v1

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2687
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2688
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    int-to-float v5, v2

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2690
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2691
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2692
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2693
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2695
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 2719
    :goto_1
    if-gt v1, v2, :cond_1

    if-le v3, v0, :cond_2

    .line 2720
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2721
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2722
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2723
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2726
    :cond_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 2727
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    .line 2729
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2676
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2697
    .restart local v0       #bottom:I
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #top:I
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2698
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2699
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2700
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2701
    goto :goto_1

    .line 2703
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2704
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2705
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2706
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2707
    goto :goto_1

    .line 2709
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2710
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2711
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2712
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v0, v4

    .line 2713
    goto/16 :goto_1

    .line 2695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3268
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 3116
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 3120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 3124
    if-nez p2, :cond_0

    .line 3125
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_5

    .line 3126
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 3175
    :goto_0
    return v1

    .line 3130
    :cond_0
    const/4 v0, 0x0

    .line 3133
    .local v0, nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    sparse-switch p1, :sswitch_data_0

    .line 3158
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 3159
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 3160
    goto :goto_0

    .line 3135
    :sswitch_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    if-eq v1, v3, :cond_1

    .line 3136
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 3140
    :sswitch_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    if-eq v1, v3, :cond_1

    .line 3141
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 3145
    :sswitch_2
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    if-eq v1, v3, :cond_1

    .line 3146
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 3150
    :sswitch_3
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    if-eq v1, v3, :cond_1

    .line 3151
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 3162
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3163
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 3169
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 3170
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 3171
    goto :goto_0

    .line 3165
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3175
    .end local v0           #nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 3133
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3286
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 3287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 3288
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3294
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 3295
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3297
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3298
    monitor-exit p0

    return-void

    .line 3286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseLayout()V
    .locals 4

    .prologue
    .line 1759
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1760
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1762
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1763
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1764
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1765
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    monitor-exit p0

    return-void

    .line 1759
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetClipRect()V
    .locals 1

    .prologue
    .line 2665
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 2666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2667
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    monitor-exit p0

    return-void

    .line 2665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 2916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 2917
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2918
    return-void
.end method

.method public final declared-synchronized resetLayout()V
    .locals 4

    .prologue
    .line 1747
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1748
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1750
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1751
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1752
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1753
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1755
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    monitor-exit p0

    return-void

    .line 1747
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized resetScale()V
    .locals 2

    .prologue
    .line 2309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2311
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2313
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2314
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2315
    monitor-exit p0

    return-void

    .line 2309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2291
    :goto_0
    monitor-exit p0

    return-void

    .line 2287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2288
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2289
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2290
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTranslate()V
    .locals 2

    .prologue
    .line 2346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2348
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2350
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2351
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2353
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    monitor-exit p0

    return-void

    .line 2346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const/high16 v4, 0x4000

    .line 2538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2552
    :goto_0
    monitor-exit p0

    return-void

    .line 2541
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2543
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2545
    .local v6, currentPivot:[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2547
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2548
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2549
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2551
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2538
    .end local v6           #currentPivot:[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized scale(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4000

    .line 2326
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2327
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2329
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2330
    .local v0, currentPivot:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2332
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2333
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2334
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2336
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2337
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    monitor-exit p0

    return-void

    .line 2326
    .end local v0           #currentPivot:[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 864
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 865
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_0
    monitor-exit p0

    return-void

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1887
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    monitor-exit p0

    return-void

    .line 1887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .parameter "animation"
    .parameter "hideAfterAnimation"

    .prologue
    .line 1899
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 1900
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    monitor-exit p0

    return-void

    .line 1899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .parameter "async"

    .prologue
    .line 849
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 850
    return-void
.end method

.method public declared-synchronized setBackground(I)Z
    .locals 7
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 1944
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 1955
    :goto_0
    monitor-exit p0

    return v0

    .line 1947
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1951
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1952
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1953
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    const/4 v0, 0x1

    goto :goto_0

    .line 1944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackgroundAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 2011
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2012
    const/4 v0, 0x0

    .line 2015
    :goto_0
    monitor-exit p0

    return v0

    .line 2014
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2015
    const/4 v0, 0x1

    goto :goto_0

    .line 2011
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBypassTouch(Z)V
    .locals 1
    .parameter "bypass"

    .prologue
    .line 2019
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    monitor-exit p0

    return-void

    .line 2019
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPivot(Z)V
    .locals 1
    .parameter "centerPivot"

    .prologue
    .line 928
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    monitor-exit p0

    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 3112
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3113
    return-void

    .line 3112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setClipRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "clipRect"

    .prologue
    .line 2655
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2656
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2658
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2662
    monitor-exit p0

    return-void

    .line 2655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClipping(Z)V
    .locals 1
    .parameter "clipping"

    .prologue
    .line 2648
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 2649
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2652
    :cond_0
    monitor-exit p0

    return-void

    .line 2648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setContinuousDrawMode(Z)V
    .locals 1
    .parameter "continuousDrawMode"

    .prologue
    .line 1934
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    monitor-exit p0

    return-void

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDefaultOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2469
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 2470
    rsub-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2471
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2472
    monitor-exit p0

    return-void

    .line 2469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDim(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 1874
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1875
    const/16 v0, 0x20

    :try_start_0
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1878
    :goto_0
    monitor-exit p0

    return-void

    .line 1877
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1874
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .parameter "sensitivity"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 495
    return-void
.end method

.method public setDragVibration(Z)V
    .locals 0
    .parameter "vibration"

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 463
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "draggable"

    .prologue
    .line 841
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 842
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 0
    .parameter "hasExtraDescription"

    .prologue
    .line 3355
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 3356
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 3108
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3109
    return-void

    .line 3108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHoverPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 3364
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 3365
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 3359
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 3360
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 3361
    return-void
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 3073
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3074
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .parameter "orientation"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 1026
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1027
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1031
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1033
    :cond_2
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .parameter "orientation"
    .parameter "leftTops"

    .prologue
    .line 1090
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1091
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1094
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1095
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1165
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1166
    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1193
    if-eqz p1, :cond_0

    .line 1194
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1195
    const/4 v0, 0x1

    .line 1197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1153
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1154
    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    .line 1170
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1171
    const/4 v0, 0x1

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1157
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1158
    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1177
    if-eqz p1, :cond_0

    .line 1178
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1179
    const/4 v0, 0x1

    .line 1181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1161
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1162
    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1187
    const/4 v0, 0x1

    .line 1189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setNinePatchBackground(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v7, 0x1

    .line 1965
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1966
    const/4 v0, 0x0

    .line 1977
    :goto_0
    monitor-exit p0

    return v0

    .line 1968
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1972
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1973
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1974
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 1976
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 1977
    goto :goto_0

    .line 1965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNinePatchBackground(II)Z
    .locals 9
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v8, 0x1

    .line 1989
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1990
    const/4 v0, 0x0

    .line 2001
    :goto_0
    monitor-exit p0

    return v0

    .line 1992
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1996
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1997
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1998
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 2000
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 2001
    goto :goto_0

    .line 1989
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 822
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 667
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 832
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 808
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 804
    return-void
.end method

.method public setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .line 706
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 791
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2481
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2483
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2486
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2529
    :goto_0
    monitor-exit p0

    return-void

    .line 2490
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2491
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2493
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2495
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2496
    .local v6, currentPivot:[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 2498
    .local v8, rotationPivot:[F
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v7

    .line 2500
    .local v7, leftTop:[F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v0, :cond_3

    .line 2501
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2502
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2504
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2507
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2523
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2525
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    if-eqz v0, :cond_2

    .line 2526
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;->onOrientationChanged(I)V

    .line 2528
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_0

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_4

    .line 2511
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2512
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2515
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2516
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2518
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2519
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 2033
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 2034
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 2038
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    :cond_1
    monitor-exit p0

    return-void

    .line 2033
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .parameter "halign"

    .prologue
    .line 984
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 985
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .parameter "valign"

    .prologue
    .line 994
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 995
    return-void
.end method

.method public declared-synchronized setRotatable(Z)V
    .locals 1
    .parameter "rotatable"

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimation(Z)V
    .locals 1
    .parameter "rotateAnimation"

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    monitor-exit p0

    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    monitor-exit p0

    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 960
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 961
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_0
    monitor-exit p0

    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 1616
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1617
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    if-eqz v0, :cond_3

    .line 1618
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1623
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1628
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1631
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    monitor-exit p0

    return-void

    .line 1620
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    .line 1126
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 1104
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    .line 1105
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 1122
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 3343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 3344
    return-void
.end method

.method public final declared-synchronized setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1839
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1840
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1845
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    :cond_1
    monitor-exit p0

    return-void

    .line 1839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVisibility(IZ)V
    .locals 2
    .parameter "visibility"
    .parameter "update"

    .prologue
    .line 1850
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1851
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    :cond_1
    monitor-exit p0

    return-void

    .line 1850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startAnimation()V
    .locals 2

    .prologue
    .line 1907
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1921
    :goto_0
    monitor-exit p0

    return-void

    .line 1910
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 1918
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 1920
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1915
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 2777
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 2786
    const/16 v6, 0x1f4

    .line 2789
    .local v6, dragHoldTime:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2790
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 2791
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 2792
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 2793
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    if-nez v0, :cond_2

    .line 2794
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2799
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2850
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v0, :cond_e

    .line 2851
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    .line 2858
    :goto_3
    return v0

    .line 2779
    .end local v6           #dragHoldTime:I
    :pswitch_0
    const/4 v6, 0x0

    .line 2780
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2782
    .end local v6           #dragHoldTime:I
    :pswitch_1
    const/16 v6, 0x12c

    .line 2783
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2796
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2801
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2802
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2803
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_7

    .line 2804
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2805
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 2806
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2808
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2809
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    move v0, v7

    .line 2810
    goto :goto_3

    .line 2812
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_6

    .line 2813
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 2815
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2817
    if-eqz v6, :cond_1

    move v0, v7

    .line 2818
    goto :goto_3

    .line 2819
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2820
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2823
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 2824
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_b

    .line 2825
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_a

    .line 2826
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_9

    .line 2827
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2829
    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2834
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2836
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2837
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_2

    .line 2839
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2840
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2841
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 2842
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_d

    .line 2843
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2846
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2855
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2856
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2858
    :cond_f
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized translate(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 2409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2414
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2416
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    .line 2417
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2419
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2420
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    monitor-exit p0

    return-void

    .line 2409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    const/4 v5, 0x0

    .line 2424
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2429
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2431
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2432
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2434
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2435
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    monitor-exit p0

    return-void

    .line 2424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2359
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2362
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2367
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2369
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2370
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2372
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2373
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2374
    monitor-exit p0

    return-void

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FFZ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 2377
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 2398
    :goto_0
    monitor-exit p0

    return-void

    .line 2382
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2383
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2386
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2391
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2393
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 2394
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2396
    :cond_2
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2397
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 905
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 906
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 909
    :cond_0
    return-void
.end method

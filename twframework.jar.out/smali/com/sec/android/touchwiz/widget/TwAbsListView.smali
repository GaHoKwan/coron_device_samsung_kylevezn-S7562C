.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsListView;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;
.implements Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final DEBUG_BOUNCE:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field static final FLING_DOUBLE:I = 0x66

.field static final FLING_NONE:I = 0x64

.field static final FLING_SINGLE:I = 0x65

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LANDSCAPE_ROTATION_LEFT_TILT_MOTION:I = 0x3

.field private static final LANDSCAPE_ROTATION_RIGHT_TILT_MOTION:I = 0x2

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PORTRAIT_TILT_MOTION:I = 0x1

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "TwAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field protected static final TW_AIR_VIEW_WINSET:Z

.field private static mCurrentOrientationMode:I


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isActionScroll:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field protected mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

.field protected mEndEffectEnabled:Z

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field mFlingMode:I

.field private mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHasWindowFocusForMotion:Z

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverBottomAreaHeight_DP:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaHeight:I

.field private mHoverTopAreaHeight_DP:I

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field private mIsDoubleTapDone:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field mLastFlingSpeed:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field protected mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

.field protected mNeedToInvalidateParent:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForDoubleFling:Ljava/lang/Runnable;

.field private mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

.field private mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTiltMotionEnable:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    sput v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentOrientationMode:I

    .line 161
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1124
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;)V

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 138
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTiltMotionEnable:Z

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 144
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 298
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 331
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 353
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 359
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 369
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 374
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 380
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 385
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 390
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 395
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 400
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 405
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 411
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 461
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 466
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingMode:I

    .line 468
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastFlingSpeed:I

    .line 501
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 539
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 560
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 562
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 590
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 594
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 598
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 605
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 607
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 659
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 684
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 686
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 696
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 744
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 783
    const/16 v1, 0xf

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight_DP:I

    .line 785
    const/16 v1, 0x19

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight_DP:I

    .line 787
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 789
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 796
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    .line 798
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    .line 800
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 802
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    .line 804
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 806
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 811
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 816
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 821
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 826
    const/16 v1, 0xc

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 831
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 836
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 931
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 940
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 948
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 951
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 952
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 1103
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    .line 4265
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4266
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5000
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 5090
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 8599
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8675
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 1125
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1127
    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1128
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1129
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1135
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1136
    const-string v1, "TwAbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 1142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1145
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1149
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 138
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 140
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTiltMotionEnable:Z

    .line 142
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 144
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 298
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 331
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 353
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 369
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 374
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 380
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 385
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 390
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 395
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 400
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 405
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 411
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 461
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 466
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingMode:I

    .line 468
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastFlingSpeed:I

    .line 501
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 539
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 560
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 562
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 590
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 594
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 598
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 605
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 607
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 659
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 684
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 686
    const/4 v13, 0x1

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 696
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 744
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 783
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight_DP:I

    .line 785
    const/16 v13, 0x19

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight_DP:I

    .line 787
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 789
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 796
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    .line 798
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    .line 800
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 802
    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    .line 804
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 806
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 811
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 816
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 821
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 826
    const/16 v13, 0xc

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 831
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 836
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 931
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 940
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 948
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 951
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 952
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 1103
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    .line 4265
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4266
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 5000
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 5090
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 8599
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8675
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1152
    sget-object v13, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1155
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1156
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 1157
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1160
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 1163
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1164
    .local v10, stackFromBottom:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setStackFromBottom(Z)V

    .line 1166
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1167
    .local v8, scrollingCacheEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1169
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1170
    .local v12, useTextFilter:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTextFilterEnabled(Z)V

    .line 1172
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1174
    .local v11, transcriptMode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTranscriptMode(I)V

    .line 1176
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 1177
    .local v4, color:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 1179
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1180
    .local v7, enableFastScroll:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1182
    const/16 v13, 0x9

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1183
    .local v9, smoothScrollbar:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1185
    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChoiceMode(I)V

    .line 1186
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1190
    const/16 v13, 0x2d

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v13, :cond_1

    .line 1203
    const-string v13, "TwAbsListView"

    const-string v14, "Get MotionRecognitionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v13, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1208
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.sec.feature.hovering_ui"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 1210
    return-void

    .line 1192
    :catch_0
    move-exception v6

    .line 1193
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1194
    const-string v13, "TwAbsListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException occured: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2335
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5302(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    return-object v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7901
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 7902
    const/4 v2, 0x1

    .line 7920
    :cond_0
    return v2

    .line 7903
    :cond_1
    const/4 v2, 0x1

    .line 7905
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7906
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7907
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7908
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7909
    const/4 v2, 0x0

    .line 7910
    const-string v4, "TwAbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 7914
    const/4 v2, 0x0

    .line 7915
    const-string v4, "TwAbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7906
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6752
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6753
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6768
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6769
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1582
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1583
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return v1

    .line 1585
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 1586
    goto :goto_0

    .line 1588
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6744
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 6745
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6746
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 6747
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    .line 6749
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 7675
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 7676
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7677
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7678
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 7680
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090141

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7685
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 7687
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7688
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7689
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7690
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7691
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7692
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7693
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7694
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7695
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7696
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7697
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7698
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7700
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7701
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301e1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7705
    :goto_0
    return-void

    .line 7703
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301e2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7442
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7443
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7445
    :cond_0
    return-void
.end method

.method private drawBounceView(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 5187
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->areBounceViewsReady()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5246
    :cond_0
    :goto_0
    return-void

    .line 5189
    :cond_1
    const v8, 0x3e99999a

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    mul-float v0, v8, v9

    .line 5190
    .local v0, bounceExtent:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewMargin()I

    move-result v2

    .line 5192
    .local v2, bounceViewMargin:I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    if-gtz v8, :cond_2

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    if-gtz v8, :cond_2

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    if-gtz v8, :cond_2

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    if-lez v8, :cond_8

    :cond_2
    move v4, v7

    .line 5193
    .local v4, needToClip:Z
    :goto_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 5194
    .local v3, clippedRect:Landroid/graphics/RectF;
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->left:F

    .line 5195
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->top:F

    .line 5196
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->right:F

    .line 5197
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->bottom:F

    .line 5199
    cmpl-float v8, v0, v10

    if-lez v8, :cond_5

    .line 5200
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 5202
    .local v1, bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5205
    if-eqz v4, :cond_3

    .line 5206
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5209
    :cond_3
    int-to-float v8, v1

    sub-float v5, v0, v8

    .line 5210
    .local v5, translateY:F
    cmpl-float v8, v5, v10

    if-lez v8, :cond_4

    .line 5211
    const/4 v5, 0x0

    .line 5215
    :cond_4
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v8

    sub-float/2addr v5, v8

    .line 5217
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5219
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8, p1, v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 5220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5222
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5224
    .end local v1           #bounceViewHeight:I
    .end local v5           #translateY:F
    :cond_5
    cmpg-float v7, v0, v10

    if-gez v7, :cond_0

    .line 5225
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v1

    .line 5226
    .restart local v1       #bounceViewHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5229
    if-eqz v4, :cond_6

    .line 5230
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5233
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v7, v0

    .line 5234
    .restart local v5       #translateY:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_7

    .line 5235
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v5, v7

    .line 5239
    :cond_7
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v7

    add-float/2addr v5, v7

    .line 5240
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5242
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v7, p1, v6}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->draw(Landroid/graphics/Canvas;Z)V

    .line 5243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5244
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .end local v1           #bounceViewHeight:I
    .end local v3           #clippedRect:Landroid/graphics/RectF;
    .end local v4           #needToClip:Z
    .end local v5           #translateY:F
    :cond_8
    move v4, v6

    .line 5192
    goto/16 :goto_1
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7924
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 7925
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 7926
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 7928
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 7489
    sparse-switch p2, :sswitch_data_0

    .line 7522
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7491
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7492
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7493
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7494
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7526
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 7527
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 7528
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7497
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7498
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7499
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7500
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7501
    .restart local v1       #dY:I
    goto :goto_0

    .line 7503
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7504
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7505
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7506
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7507
    .restart local v1       #dY:I
    goto :goto_0

    .line 7509
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7510
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7511
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7512
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7513
    .restart local v1       #dY:I
    goto :goto_0

    .line 7516
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7517
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7518
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7519
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7520
    .restart local v1       #dY:I
    goto :goto_0

    .line 7489
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1215
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1216
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setFocusableInTouchMode(Z)V

    .line 1217
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1218
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1219
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1221
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 1222
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1223
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    .line 1224
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    .line 1225
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    .line 1226
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    .line 1228
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    .line 1230
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 1231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 1234
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableEndEffect(Z)V

    .line 1235
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-eqz v0, :cond_0

    .line 1236
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    .line 1237
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initBounceView()V

    .line 1241
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1242
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "android.widget.AbsListView"

    const-wide/16 v4, 0x6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1245
    :cond_1
    return-void
.end method

.method private initBounceView()V
    .locals 2

    .prologue
    .line 5114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->initBounceView(Landroid/content/Context;)V

    .line 5115
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5446
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5447
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5451
    :goto_0
    return-void

    .line 5449
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5455
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5457
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 9106
    const-string v0, "TwAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9107
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 5003
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "finger_air_view"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v0, :cond_1

    move v4, v0

    .line 5005
    .local v4, isFingerAirView:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 5007
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 5008
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 5009
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5010
    .local v5, newHoverPosition:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    if-eq v9, v5, :cond_2

    .line 5011
    .local v0, bChanged:Z
    :goto_1
    const/4 v1, 0x0

    .line 5013
    .local v1, child:Landroid/view/View;
    if-gez v5, :cond_3

    .line 5076
    .end local v0           #bChanged:Z
    .end local v1           #child:Landroid/view/View;
    .end local v5           #newHoverPosition:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_0
    :goto_2
    return-void

    .end local v4           #isFingerAirView:Z
    :cond_1
    move v4, v8

    .line 5003
    goto :goto_0

    .restart local v4       #isFingerAirView:Z
    .restart local v5       #newHoverPosition:I
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_2
    move v0, v8

    .line 5010
    goto :goto_1

    .line 5017
    .restart local v0       #bChanged:Z
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    .line 5019
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5020
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverPosition:I

    invoke-virtual {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5021
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5022
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    .line 5023
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5024
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    instance-of v8, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_4

    .line 5025
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5028
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5072
    .end local v0           #bChanged:Z
    .end local v1           #child:Landroid/view/View;
    .end local v5           #newHoverPosition:I
    .end local v6           #x:I
    .end local v7           #y:I
    :catch_0
    move-exception v3

    .line 5073
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 5561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5562
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5563
    .local v1, pointerId:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5567
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5568
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5569
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5570
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 5571
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5576
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 5578
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5567
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7461
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7462
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7463
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7466
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7467
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7468
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7473
    :goto_0
    return-void

    .line 7471
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2966
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5460
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5461
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5464
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8635
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->log(Ljava/lang/String;)V

    .line 8643
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8644
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8647
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8580
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8581
    .local v1, size:I
    if-lez v1, :cond_2

    .line 8583
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8584
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8585
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8586
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8592
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 8583
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8590
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8592
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3847
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3848
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3849
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3851
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 3859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3861
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3864
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3870
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3872
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3873
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3874
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3879
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 3880
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3889
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3890
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3891
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3892
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3896
    :cond_2
    const/16 v16, 0x0

    .line 3897
    .local v16, atEdge:Z
    if-eqz v18, :cond_3

    .line 3898
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3902
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3903
    if-eqz v21, :cond_7

    .line 3906
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3907
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_6

    .line 3910
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3912
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 3913
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3920
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    .line 3921
    .local v27, overscrollMode:I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3923
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3924
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3925
    if-lez v29, :cond_b

    .line 3926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3938
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3939
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 3941
    .end local v23           #motionViewRealTop:I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4010
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_8
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_9
    move/from16 v18, v17

    .line 3849
    goto/16 :goto_0

    .line 3886
    .restart local v18       #incrementalDeltaY:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3930
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_b
    if-gez v29, :cond_6

    .line 3931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_2

    .line 3943
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3944
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 3946
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3947
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_15

    const/16 v24, 0x1

    .line 3949
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    if-nez v3, :cond_d

    .line 3950
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3953
    :cond_d
    move/from16 v0, v18

    neg-int v8, v0

    .line 3954
    .local v8, overScrollDistance:I
    if-gez v25, :cond_e

    if-gez v26, :cond_f

    :cond_e
    if-lez v25, :cond_16

    if-gtz v26, :cond_16

    .line 3955
    :cond_f
    move/from16 v0, v26

    neg-int v8, v0

    .line 3956
    add-int v18, v18, v8

    .line 3961
    :goto_5
    if-eqz v8, :cond_12

    .line 3962
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 3964
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    .line 3965
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3967
    :cond_10
    if-lez v29, :cond_17

    .line 3968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3978
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 3982
    .end local v27           #overscrollMode:I
    :cond_12
    if-eqz v18, :cond_14

    .line 3984
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollY:I

    .line 3985
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 3989
    if-eqz v18, :cond_13

    .line 3990
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 3993
    :cond_13
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3998
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 4000
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4001
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4002
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4003
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4004
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4006
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4007
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3947
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_15
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3958
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3972
    .restart local v27       #overscrollMode:I
    :cond_17
    if-gez v29, :cond_11

    .line 3973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_6

    .line 4002
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7452
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7453
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7454
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 7456
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 7458
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3805
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3806
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3807
    .local v1, distance:I
    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 3808
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 3809
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 3810
    if-eqz v4, :cond_5

    .line 3811
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3812
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3817
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3823
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3824
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3826
    :cond_1
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3827
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3828
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3829
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3831
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3835
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3836
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3837
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3839
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3843
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3807
    goto :goto_0

    .line 3814
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3815
    if-lez v0, :cond_6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 3843
    goto :goto_2
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8653
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->log(Ljava/lang/String;)V

    .line 8654
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8655
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8657
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2031
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2033
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1753
    packed-switch p2, :pswitch_data_0

    .line 1767
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1768
    :cond_1
    :goto_0
    return-void

    .line 1755
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1756
    .local v0, focusable:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #focusable:Landroid/view/View;
    :cond_2
    move-object v0, p0

    .line 1755
    goto :goto_1

    .line 1761
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1753
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5585
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5586
    .local v2, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5587
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5589
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5600
    :cond_0
    return-void

    .line 5593
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5594
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5595
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5596
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5598
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5593
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 7785
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 7747
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 7665
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 7806
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1388
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1389
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7711
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7712
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 7714
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7715
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 7718
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2424
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2425
    .local v1, count:I
    if-lez v1, :cond_3

    .line 2426
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2427
    mul-int/lit8 v2, v1, 0x64

    .line 2429
    .local v2, extent:I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2430
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2431
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2432
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2433
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2436
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2437
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2438
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2439
    if-lez v3, :cond_1

    .line 2440
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2467
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2464
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2467
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 2472
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2473
    .local v2, firstPosition:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2474
    .local v0, childCount:I
    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    .line 2478
    const/4 v5, 0x0

    .line 2479
    .local v5, retVal:I
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v9, :cond_1

    .line 2480
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2481
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2482
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2483
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2484
    mul-int/lit8 v9, v2, 0x64

    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mScrollY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2517
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v5

    .line 2506
    .restart local v5       #retVal:I
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 2507
    .local v1, count:I
    if-nez v2, :cond_2

    .line 2508
    const/4 v4, 0x0

    .line 2514
    .local v4, index:I
    :goto_1
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v4

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v5, v8

    goto :goto_0

    .line 2509
    .end local v4           #index:I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 2510
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 2512
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v4, v2, v8

    .restart local v4       #index:I
    goto :goto_1

    .end local v1           #count:I
    .end local v4           #index:I
    .end local v5           #retVal:I
    :cond_4
    move v5, v8

    .line 2517
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2523
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2524
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2525
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2527
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2532
    :cond_0
    :goto_0
    return v0

    .line 2530
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 7226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7228
    const/4 v7, 0x0

    .line 7229
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 7230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 7231
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7233
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 7234
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 7236
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 7237
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 7238
    .local v9, end:I
    const/4 v10, 0x0

    .line 7239
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 7240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 7241
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 7242
    const/4 v10, 0x1

    .line 7243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7249
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 7250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7251
    add-int/lit8 v8, v8, -0x1

    .line 7252
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 7253
    const/4 v7, 0x1

    .line 7254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 7255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7229
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 7239
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 7260
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7264
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 7265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 7267
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3449
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7960
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 4270
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4272
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4273
    .local v3, cd:Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4274
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4430
    :goto_0
    return v12

    .line 4278
    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 4279
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    .line 4280
    const/4 v12, 0x1

    const/high16 v13, 0x41c8

    iget-object v14, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4284
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 4287
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4288
    .local v10, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4289
    .local v11, y:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 4290
    .local v5, childCount:I
    const/4 v6, 0x0

    .line 4291
    .local v6, contentBottom:I
    const/4 v8, 0x0

    .line 4292
    .local v8, lastChildBottom:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 4296
    .local v7, count:I
    if-eqz v5, :cond_5

    .line 4297
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 4301
    :cond_5
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v1, 0x1

    .line 4303
    .local v1, canScrollDown:Z
    :goto_1
    if-nez v1, :cond_7

    if-lez v7, :cond_7

    .line 4304
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4305
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Landroid/view/View;->mBottom:I

    iget-object v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    iget-object v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v1, 0x1

    .line 4310
    .end local v4           #child:Landroid/view/View;
    :cond_7
    :goto_2
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v2, 0x1

    .line 4312
    .local v2, canScrollUp:Z
    :goto_3
    if-nez v2, :cond_8

    .line 4313
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 4314
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4315
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_12

    const/4 v2, 0x1

    .line 4320
    .end local v4           #child:Landroid/view/View;
    :cond_8
    :goto_4
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v12, :cond_9

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_a

    :cond_9
    if-lez v10, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v12

    if-gt v10, v12, :cond_a

    if-nez v2, :cond_13

    if-nez v1, :cond_13

    .line 4323
    :cond_a
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4324
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 4327
    :cond_b
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    .line 4328
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4331
    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4332
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4333
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4336
    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    .line 4337
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4338
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4341
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4301
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 4305
    .restart local v1       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    .line 4310
    .end local v4           #child:Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto :goto_3

    .line 4315
    .restart local v2       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto :goto_4

    .line 4345
    .end local v4           #child:Landroid/view/View;
    :cond_13
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-nez v12, :cond_14

    .line 4346
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4348
    :cond_14
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    .line 4349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4351
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 4430
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4353
    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4354
    if-ltz v11, :cond_17

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v12, :cond_17

    .line 4356
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4357
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4359
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4360
    .local v9, msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4361
    const/4 v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4362
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4364
    .end local v9           #msg:Landroid/os/Message;
    :cond_17
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_16

    if-gt v11, v6, :cond_16

    .line 4366
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4367
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4369
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4370
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4371
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4372
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4378
    .end local v9           #msg:Landroid/os/Message;
    :pswitch_1
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    .line 4379
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4382
    :cond_18
    if-ltz v11, :cond_19

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v12, :cond_19

    .line 4384
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4385
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4387
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4388
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4389
    const/4 v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4390
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4392
    .end local v9           #msg:Landroid/os/Message;
    :cond_19
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_16

    if-gt v11, v6, :cond_16

    .line 4394
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4395
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4397
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4398
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4399
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4400
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4407
    .end local v9           #msg:Landroid/os/Message;
    :pswitch_2
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    .line 4408
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4409
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4415
    :cond_1a
    :pswitch_3
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4416
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 4418
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4420
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4421
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4422
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4423
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4351
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2970
    const/4 v2, 0x0

    .line 2971
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2972
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2974
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 2975
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 2976
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2978
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2981
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 2982
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2983
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2986
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2988
    if-eqz v1, :cond_2

    .line 2989
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2992
    :cond_2
    if-eqz v0, :cond_3

    .line 2993
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2994
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2996
    :cond_3
    return-void

    .line 2971
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 4077
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_hovering"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v9, 0x1

    .line 4078
    .local v9, isHoveringOn:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_hovering_list_scroll"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v8, 0x1

    .line 4080
    .local v8, isHoverListScrollOn:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-nez v14, :cond_0

    .line 4081
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4085
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    if-nez v8, :cond_4

    .line 4086
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 4260
    :goto_2
    return v14

    .line 4077
    .end local v8           #isHoverListScrollOn:Z
    .end local v9           #isHoveringOn:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 4078
    .restart local v9       #isHoveringOn:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 4089
    .restart local v8       #isHoverListScrollOn:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 4090
    .local v12, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 4091
    .local v13, y:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 4092
    .local v4, childCount:I
    const/4 v5, 0x0

    .line 4093
    .local v5, contentBottom:I
    const/4 v10, 0x0

    .line 4094
    .local v10, lastChildBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4098
    .local v6, count:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-lez v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    if-gtz v14, :cond_6

    .line 4099
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight_DP:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 4103
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight_DP:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 4108
    :cond_6
    if-eqz v4, :cond_7

    .line 4109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4113
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_10

    const/4 v1, 0x1

    .line 4115
    .local v1, canScrollDown:Z
    :goto_3
    if-nez v1, :cond_8

    if-lez v6, :cond_8

    .line 4116
    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4117
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-le v14, v15, :cond_11

    const/4 v1, 0x1

    .line 4121
    .end local v3           #child:Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_12

    const/4 v2, 0x1

    .line 4123
    .local v2, canScrollUp:Z
    :goto_5
    if-nez v2, :cond_9

    .line 4124
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-lez v14, :cond_9

    .line 4125
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4126
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-ge v14, v15, :cond_13

    const/4 v2, 0x1

    .line 4130
    .end local v3           #child:Landroid/view/View;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-le v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_c

    :cond_a
    if-lez v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_c

    if-nez v2, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_14

    .line 4133
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 4134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 4136
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_0
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4142
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    if-eqz v14, :cond_f

    .line 4143
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4145
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_1
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4151
    :cond_f
    :goto_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4152
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4153
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4155
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4113
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4117
    .restart local v1       #canScrollDown:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 4121
    .end local v3           #child:Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 4126
    .restart local v2       #canScrollUp:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    .line 4137
    .end local v3           #child:Landroid/view/View;
    :catch_0
    move-exception v7

    .line 4138
    .local v7, e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4146
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 4147
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4158
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v14, :cond_15

    .line 4159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4161
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 4260
    :cond_16
    :goto_9
    :pswitch_0
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 4163
    :pswitch_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4165
    if-ltz v13, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_17

    .line 4167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 4168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4170
    const/16 v14, 0xb

    const/4 v15, -0x1

    :try_start_2
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4174
    :goto_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4175
    .local v11, msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4176
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 4171
    .end local v11           #msg:Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 4172
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4179
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_17
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_16

    if-gt v13, v5, :cond_16

    .line 4181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 4182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4184
    const/16 v14, 0xf

    const/4 v15, -0x1

    :try_start_3
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4188
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4189
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4190
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 4185
    .end local v11           #msg:Landroid/os/Message;
    :catch_3
    move-exception v7

    .line 4186
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4198
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v14, :cond_18

    .line 4199
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4200
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4201
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4204
    :cond_18
    if-ltz v13, :cond_1a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_1a

    .line 4206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 4207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4208
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_19

    .line 4210
    const/16 v14, 0xb

    const/4 v15, -0x1

    :try_start_4
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4215
    :cond_19
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4216
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4217
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 4211
    .end local v11           #msg:Landroid/os/Message;
    :catch_4
    move-exception v7

    .line 4212
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4220
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_16

    if-gt v13, v5, :cond_16

    .line 4222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 4223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4225
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_1b

    .line 4227
    const/16 v14, 0xf

    const/4 v15, -0x1

    :try_start_5
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4232
    :cond_1b
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4233
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4234
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 4228
    .end local v11           #msg:Landroid/os/Message;
    :catch_5
    move-exception v7

    .line 4229
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4241
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 4242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 4246
    :cond_1c
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_6
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4251
    :goto_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4252
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4253
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4254
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4255
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4247
    :catch_6
    move-exception v7

    .line 4248
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4161
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3656
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 35
    .parameter "canvas"

    .prologue
    .line 5251
    const v31, 0x3e99999a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v32, v0

    mul-float v8, v31, v32

    .line 5252
    .local v8, bounceExtent:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 5256
    .local v4, absBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v21

    .line 5257
    .local v21, overscrollMode:I
    if-eqz v21, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v31

    if-nez v31, :cond_12

    :cond_0
    const/4 v12, 0x1

    .line 5261
    .local v12, drawBounceView:Z
    :goto_0
    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 5262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->cancelTextShakeAnimation()V

    .line 5266
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v26

    .line 5267
    .local v26, saveCount:I
    const/high16 v13, 0x3f80

    .line 5268
    .local v13, fadeStrength:F
    const/16 v17, 0x0

    .line 5269
    .local v17, initialFadeHeight:F
    const/4 v5, 0x0

    .line 5270
    .local v5, actualFadeHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v18, v0

    .line 5271
    .local v18, left:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v28, v0

    .line 5272
    .local v28, top:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v24, v0

    .line 5273
    .local v24, right:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v6, v0

    .line 5274
    .local v6, bottom:F
    const/4 v14, 0x0

    .line 5276
    .local v14, fadingEdgeOffset:F
    new-instance v29, Landroid/graphics/RectF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/RectF;-><init>()V

    .line 5277
    .local v29, topViewRect:Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 5279
    .local v7, bottomViewRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    if-eqz v12, :cond_5

    .line 5280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewFadingEdgeLength()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    .line 5282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v32, v0

    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_13

    const/16 v31, 0x1

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getBounceViewHeight(Z)I

    move-result v9

    .line 5284
    .local v9, bounceViewHeight:I
    const/4 v15, 0x4

    .line 5286
    .local v15, flags:I
    int-to-float v0, v9

    move/from16 v31, v0

    const v32, 0x3eaa7efa

    mul-float v20, v31, v32

    .line 5287
    .local v20, maxFadeHeight:F
    cmpg-float v31, v4, v20

    if-gez v31, :cond_2

    .line 5288
    div-float v31, v4, v20

    mul-float v13, v13, v31

    .line 5291
    :cond_2
    mul-float v5, v17, v13

    .line 5293
    move v14, v4

    .line 5296
    int-to-float v0, v9

    move/from16 v31, v0

    cmpl-float v31, v4, v31

    if-lez v31, :cond_3

    .line 5297
    int-to-float v14, v9

    .line 5299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v11, v31, v32

    .line 5300
    .local v11, draggingCoef:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    const v31, 0x3e99999a

    cmpl-float v31, v11, v31

    if-lez v31, :cond_3

    .line 5301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v32, v0

    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_14

    const/16 v31, 0x1

    :goto_2
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->startTextShakingAnimation(Z)V

    .line 5305
    .end local v11           #draggingCoef:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getCurrentAnimationValue()F

    move-result v10

    .line 5307
    .local v10, currentAnimValue:F
    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_4

    .line 5308
    move/from16 v0, v18

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 5309
    add-float v31, v28, v14

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 5310
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 5311
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    add-float v31, v31, v5

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 5314
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    sub-float v31, v31, v10

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 5315
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v10

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 5317
    const/16 v31, 0x0

    const/16 v32, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 5319
    :cond_4
    const/16 v31, 0x0

    cmpg-float v31, v8, v31

    if-gez v31, :cond_5

    .line 5320
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 5321
    sub-float v31, v6, v14

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 5322
    move/from16 v0, v18

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 5323
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v5

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 5326
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    add-float v31, v31, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 5327
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    add-float v31, v31, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 5329
    const/16 v31, 0x0

    const/16 v32, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 5333
    .end local v9           #bounceViewHeight:I
    .end local v10           #currentAnimValue:F
    .end local v15           #flags:I
    .end local v20           #maxFadeHeight:F
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 5337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5339
    if-eqz v21, :cond_6

    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v31

    if-nez v31, :cond_7

    .line 5341
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_15

    .line 5342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 5349
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    if-eqz v12, :cond_a

    .line 5352
    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_8

    .line 5353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v22

    .line 5356
    .local v22, paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5358
    .end local v22           #paintForFading:Landroid/graphics/Paint;
    :cond_8
    const/16 v31, 0x0

    cmpg-float v31, v8, v31

    if-gez v31, :cond_9

    .line 5359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    move-object/from16 v31, v0

    const/high16 v32, 0x4334

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->getFadingEdgePaint(FFFF)Landroid/graphics/Paint;

    move-result-object v22

    .line 5362
    .restart local v22       #paintForFading:Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5365
    .end local v22           #paintForFading:Landroid/graphics/Paint;
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5367
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawBounceView(Landroid/graphics/Canvas;)V

    .line 5370
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    if-eqz v31, :cond_10

    .line 5371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    .line 5372
    .local v27, scrollY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v31

    if-nez v31, :cond_d

    .line 5373
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 5374
    .local v23, restoreCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    move/from16 v32, v0

    add-int v19, v31, v32

    .line 5375
    .local v19, leftPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    move/from16 v32, v0

    add-int v25, v31, v32

    .line 5376
    .local v25, rightPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v31, v31, v19

    sub-int v30, v31, v25

    .line 5380
    .local v30, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 5386
    :cond_b
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v33, v0

    add-int v33, v33, v27

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 5391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 5392
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5394
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5396
    .end local v19           #leftPadding:I
    .end local v23           #restoreCount:I
    .end local v25           #rightPadding:I
    .end local v30           #width:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v31

    if-nez v31, :cond_10

    .line 5397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 5398
    .restart local v23       #restoreCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    move/from16 v32, v0

    add-int v19, v31, v32

    .line 5399
    .restart local v19       #leftPadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    move/from16 v32, v0

    add-int v25, v31, v32

    .line 5400
    .restart local v25       #rightPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v31, v31, v19

    sub-int v30, v31, v25

    .line 5401
    .restart local v30       #width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 5406
    .local v16, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 5411
    :cond_e
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    add-int v31, v31, v19

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, v27

    move/from16 v0, v16

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5414
    const/high16 v31, 0x4334

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 5416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 5417
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5419
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5423
    .end local v16           #height:I
    .end local v19           #leftPadding:I
    .end local v23           #restoreCount:I
    .end local v25           #rightPadding:I
    .end local v27           #scrollY:I
    .end local v30           #width:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    .line 5424
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    .line 5425
    .restart local v27       #scrollY:I
    if-eqz v27, :cond_16

    .line 5427
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 5428
    .restart local v23       #restoreCount:I
    const/16 v31, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 5430
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5435
    .end local v23           #restoreCount:I
    .end local v27           #scrollY:I
    :cond_11
    :goto_4
    return-void

    .line 5257
    .end local v5           #actualFadeHeight:F
    .end local v6           #bottom:F
    .end local v7           #bottomViewRect:Landroid/graphics/RectF;
    .end local v12           #drawBounceView:Z
    .end local v13           #fadeStrength:F
    .end local v14           #fadingEdgeOffset:F
    .end local v17           #initialFadeHeight:F
    .end local v18           #left:F
    .end local v24           #right:F
    .end local v26           #saveCount:I
    .end local v28           #top:F
    .end local v29           #topViewRect:Landroid/graphics/RectF;
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 5282
    .restart local v5       #actualFadeHeight:F
    .restart local v6       #bottom:F
    .restart local v7       #bottomViewRect:Landroid/graphics/RectF;
    .restart local v12       #drawBounceView:Z
    .restart local v13       #fadeStrength:F
    .restart local v14       #fadingEdgeOffset:F
    .restart local v17       #initialFadeHeight:F
    .restart local v18       #left:F
    .restart local v24       #right:F
    .restart local v26       #saveCount:I
    .restart local v28       #top:F
    .restart local v29       #topViewRect:Landroid/graphics/RectF;
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 5301
    .restart local v9       #bounceViewHeight:I
    .restart local v11       #draggingCoef:F
    .restart local v15       #flags:I
    .restart local v20       #maxFadeHeight:F
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 5343
    .end local v9           #bounceViewHeight:I
    .end local v11           #draggingCoef:F
    .end local v15           #flags:I
    .end local v20           #maxFadeHeight:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_7

    .line 5344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    goto/16 :goto_3

    .line 5432
    .restart local v27       #scrollY:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 3062
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3064
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3065
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3067
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3178
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 3179
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3180
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8661
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8663
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8665
    return-void

    .line 8663
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 7077
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7078
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 7083
    :cond_0
    :goto_0
    return v1

    .line 7082
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7083
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "child"
    .parameter "descendant"

    .prologue
    .line 1887
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1888
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1889
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1891
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 1772
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 1777
    packed-switch p2, :pswitch_data_0

    .line 1879
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 1780
    :pswitch_0
    if-ne p1, p0, :cond_2

    .line 1781
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1782
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 1783
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1784
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1782
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1788
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1791
    .end local v1           #childCount:I
    .end local v5           #i:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1792
    .local v4, currentPosition:I
    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 1793
    :cond_3
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1796
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1797
    .local v2, currentItem:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 1798
    instance-of v9, v2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    move-object v3, v2

    .line 1799
    check-cast v3, Landroid/view/ViewGroup;

    .line 1800
    .local v3, currentItemGroup:Landroid/view/ViewGroup;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, v3, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 1802
    .local v6, nextFocus:Landroid/view/View;
    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, p1, :cond_5

    move-object v0, v6

    .line 1804
    goto :goto_0

    .line 1809
    .end local v3           #currentItemGroup:Landroid/view/ViewGroup;
    .end local v6           #nextFocus:Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    add-int/lit8 v7, v9, 0x1

    .line 1810
    .local v7, nextPosition:I
    move v5, v7

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 1811
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1812
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1810
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1817
    .end local v0           #child:Landroid/view/View;
    :cond_6
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1822
    .end local v2           #currentItem:Landroid/view/View;
    .end local v4           #currentPosition:I
    .end local v5           #i:I
    .end local v7           #nextPosition:I
    :pswitch_1
    if-ne p1, p0, :cond_9

    .line 1823
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1824
    .restart local v1       #childCount:I
    add-int/lit8 v5, v1, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_8

    .line 1825
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1826
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    .line 1827
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1824
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1830
    .end local v0           #child:Landroid/view/View;
    :cond_8
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1833
    .end local v1           #childCount:I
    .end local v5           #i:I
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1834
    .restart local v4       #currentPosition:I
    if-ltz v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v9

    if-lt v4, v9, :cond_b

    .line 1835
    :cond_a
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1838
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1843
    .restart local v2       #currentItem:Landroid/view/View;
    if-ne v2, p1, :cond_e

    .line 1844
    const/4 v2, 0x0

    .line 1845
    const/4 p1, 0x0

    .line 1847
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    add-int/lit8 v8, v9, -0x1

    .line 1848
    .local v8, previousPosition:I
    move v5, v8

    .restart local v5       #i:I
    :goto_4
    if-ltz v5, :cond_c

    .line 1849
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1850
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_d

    .line 1851
    move-object v2, v0

    .line 1855
    .end local v0           #child:Landroid/view/View;
    :cond_c
    if-nez v2, :cond_e

    move-object v0, p0

    .line 1856
    goto/16 :goto_0

    .line 1848
    .restart local v0       #child:Landroid/view/View;
    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 1860
    .end local v0           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v8           #previousPosition:I
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_10

    .line 1862
    instance-of v9, v2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    move-object v3, v2

    .line 1863
    check-cast v3, Landroid/view/ViewGroup;

    .line 1864
    .restart local v3       #currentItemGroup:Landroid/view/ViewGroup;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, v3, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 1866
    .restart local v6       #nextFocus:Landroid/view/View;
    if-eqz v6, :cond_f

    if-eq v6, v3, :cond_f

    if-eq v6, p1, :cond_f

    move-object v0, v6

    .line 1868
    goto/16 :goto_0

    .end local v3           #currentItemGroup:Landroid/view/ViewGroup;
    .end local v6           #nextFocus:Landroid/view/View;
    :cond_f
    move-object v0, v2

    .line 1873
    goto/16 :goto_0

    .line 1876
    :cond_10
    invoke-super {p0, p0, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1777
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 7796
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 7801
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2567
    .local v1, count:I
    invoke-super {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2568
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2588
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2571
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2572
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2580
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_3

    .line 2581
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2586
    .local v0, bottom:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2587
    .local v4, height:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2588
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0

    .line 2583
    .end local v0           #bottom:I
    .end local v3           #fadeLength:F
    .end local v4           #height:I
    :cond_3
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .restart local v0       #bottom:I
    goto :goto_1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3020
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getBounceController()Lcom/sec/android/touchwiz/widget/TwBounceController;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7867
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1363
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1364
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1375
    :cond_1
    return-object v3

    .line 1367
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1368
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1369
    .local v0, count:I
    new-array v3, v0, [J

    .line 1371
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1372
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1331
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1335
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getEnableEndEffect()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2019
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2022
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2023
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2028
    :goto_0
    return-void

    .line 2026
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7017
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7006
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3005
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3015
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2719
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2720
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2722
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7835
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2376
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2538
    .local v0, count:I
    invoke-super {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2539
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2560
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 2542
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2543
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2550
    :cond_2
    const/4 v3, 0x0

    .line 2551
    .local v3, top:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v4, :cond_3

    .line 2552
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2553
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-lt v3, v4, :cond_4

    .line 2554
    const/4 v1, 0x0

    goto :goto_0

    .line 2556
    :cond_3
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2559
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2560
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3010
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7830
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1656
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7271
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 7272
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 7273
    .local v4, lastHandledItemCount:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 7275
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7276
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->confirmCheckedPositionsById()V

    .line 7279
    :cond_0
    if-lez v1, :cond_e

    .line 7284
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 7287
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 7289
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 7290
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7418
    :cond_1
    :goto_0
    return-void

    .line 7292
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 7293
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 7294
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 7295
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7298
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7299
    .local v0, childCount:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7300
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7301
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7302
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 7304
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 7301
    goto :goto_1

    .line 7310
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 7313
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7372
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 7375
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 7378
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 7379
    add-int/lit8 v6, v1, -0x1

    .line 7381
    :cond_8
    if-gez v6, :cond_9

    .line 7382
    const/4 v6, 0x0

    .line 7386
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7388
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 7389
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7315
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 7324
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7325
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 7333
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findSyncPosition()I

    move-result v6

    .line 7334
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 7337
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7338
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 7340
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 7342
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 7346
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7356
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7352
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7365
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7366
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7393
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7394
    if-ltz v7, :cond_e

    .line 7395
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7402
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 7410
    :cond_e
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7411
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 7412
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 7413
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 7414
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 7415
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 7416
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 7417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 7410
    goto :goto_3

    .line 7313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7724
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7031
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7032
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7033
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7035
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7036
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7038
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 7039
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 7040
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 7042
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 7091
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    .line 7092
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 7093
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7094
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1734
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1747
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1748
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1667
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7533
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1315
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3000
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1716
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2044
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2013
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3226
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 3227
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3229
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3123
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3127
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3128
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3129
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3132
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3134
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3135
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3137
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3139
    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3141
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3142
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3143
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3144
    if-eqz v1, :cond_6

    .line 3145
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3151
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3152
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3153
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    .line 3155
    :cond_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3156
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3148
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2680
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2787
    aput-boolean v4, p2, v4

    .line 2790
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2793
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_7

    .line 2799
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2800
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 2853
    :cond_0
    :goto_0
    return-object v2

    .line 2803
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2804
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2812
    :cond_2
    if-eq v0, v1, :cond_6

    .line 2813
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2814
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_3

    .line 2815
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2846
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2847
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    if-nez v2, :cond_4

    .line 2848
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    .line 2850
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_5
    move-object v2, v0

    .line 2853
    goto :goto_0

    .line 2822
    :cond_6
    aput-boolean v5, p2, v4

    .line 2823
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2826
    .end local v0           #child:Landroid/view/View;
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2829
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2833
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 2834
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2837
    :cond_8
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_3

    .line 2838
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3233
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3235
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3236
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3237
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3238
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3241
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3242
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3243
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3246
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 3247
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 3248
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 3250
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 3272
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3185
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3187
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3216
    :cond_0
    :goto_0
    return-object v3

    .line 3193
    :cond_1
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3201
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3202
    .local v3, state:[I
    const/4 v0, -0x1

    .line 3203
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 3204
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3205
    move v0, v2

    .line 3211
    :cond_2
    if-ltz v0, :cond_0

    .line 3212
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3203
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 7612
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7616
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7617
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7618
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7619
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7652
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7653
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7654
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7656
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3276
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDetachedFromWindow()V

    .line 3279
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3282
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 3284
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3285
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3286
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3287
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3288
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3291
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3292
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3293
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3296
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3297
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3298
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3301
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3302
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3303
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3306
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3307
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3310
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3311
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3314
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3315
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3318
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3319
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3322
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3323
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3324
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3326
    :cond_8
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 3342
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 7422
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7423
    sparse-switch p1, :sswitch_data_0

    .line 7435
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    .line 7436
    return-void

    .line 7425
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7426
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0

    .line 7430
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7431
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    goto :goto_0

    .line 7435
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7423
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 7788
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7789
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7790
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 7792
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2384
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2385
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2386
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2390
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 2391
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 2393
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 2395
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 5094
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 5095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5110
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 5097
    :pswitch_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 5098
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5099
    .local v1, vscroll:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 5100
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 5101
    .local v0, delta:I
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 5102
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5095
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7728
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7730
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7731
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 7740
    :cond_0
    :goto_0
    return-void

    .line 7735
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7736
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9116
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 9118
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 9121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9122
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 9123
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 9127
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1917
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1918
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1919
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1923
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1924
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1925
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1930
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1933
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5482
    .local v0, action:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v10, :cond_0

    .line 5483
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 5484
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 5557
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 5489
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 5557
    goto :goto_0

    .line 5491
    :pswitch_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5492
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_2

    const/4 v10, 0x5

    if-ne v4, v10, :cond_3

    .line 5493
    :cond_2
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 5497
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 5498
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 5499
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5501
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v2

    .line 5502
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 5506
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5507
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5508
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5509
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5510
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5511
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5512
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 5514
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 5515
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initOrResetVelocityTracker()V

    .line 5516
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5517
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 5524
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 5526
    :pswitch_3
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 5527
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_5

    .line 5528
    const/4 v3, 0x0

    .line 5529
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5531
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 5532
    .restart local v7       #y:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5533
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5534
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 5544
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5545
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5546
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5547
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 5552
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 5489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5524
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3612
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3617
    sparse-switch p1, :sswitch_data_0

    .line 3647
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 3620
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3623
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3626
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3627
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3628
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3629
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3631
    :cond_2
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 3639
    .end local v0           #view:Landroid/view/View;
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v1, :cond_3

    .line 3640
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 3641
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 3643
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0

    .line 3617
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2632
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 2633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2634
    if-eqz p1, :cond_1

    .line 2635
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2636
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2637
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2639
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2642
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2643
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onItemCountChanged(II)V

    .line 2646
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 2647
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2649
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollMax:I

    .line 2651
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-eqz v2, :cond_3

    .line 2652
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->layoutBounceViews(IIII)V

    .line 2654
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x1

    .line 2595
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    .line 2596
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->useDefaultSelector()V

    .line 2598
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2599
    .local v6, listPadding:Landroid/graphics/Rect;
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 2600
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 2601
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 2602
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 2606
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v9, v8, :cond_1

    .line 2607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2608
    .local v2, childCount:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int v5, v9, v10

    .line 2609
    .local v5, listBottom:I
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2610
    .local v4, lastChild:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2611
    .local v3, lastBottom:I
    :goto_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    if-lt v9, v10, :cond_4

    if-gt v3, v5, :cond_4

    :goto_1
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 2615
    .end local v2           #childCount:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_1
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-eqz v8, :cond_2

    .line 2617
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 2618
    .local v7, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v8, v9

    .line 2620
    .local v1, adjustedWidthSize:I
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2622
    .local v0, adjustedWidthMeasureSpec:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v8, v0, p2}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->measureBounceViews(II)V

    .line 2624
    .end local v0           #adjustedWidthMeasureSpec:I
    .end local v1           #adjustedWidthSize:I
    .end local v7           #widthSpecMode:I
    :cond_2
    return-void

    .restart local v2       #childCount:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #listBottom:I
    :cond_3
    move v3, v5

    .line 2610
    goto :goto_0

    .line 2611
    .restart local v3       #lastBottom:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 5081
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 5082
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5083
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5084
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 5086
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 5088
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7966
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7967
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7968
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7969
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7970
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7977
    :cond_0
    :goto_0
    return v0

    .line 7973
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7974
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7975
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7989
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2324
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2325
    instance-of v1, p1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2330
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 2328
    check-cast v0, Landroid/os/Bundle;

    .line 2329
    .local v0, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 7
    .parameter "b"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2275
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2276
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2278
    const-string v1, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2281
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 2283
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 2284
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2285
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 2286
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 2287
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2288
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 2302
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2304
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2305
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2308
    :cond_1
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2309
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2312
    :cond_2
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 2314
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2316
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2319
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2320
    return-void

    .line 2289
    :cond_4
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 2290
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 2293
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 2294
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2295
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2296
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 2297
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 2298
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2299
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2267
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2268
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2269
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 2270
    return-object v1
.end method

.method public onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 14
    .parameter "b"

    .prologue
    .line 2190
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 2192
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;-><init>()V

    .line 2194
    .local v8, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v11, :cond_2

    const/4 v3, 0x1

    .line 2195
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemId()J

    move-result-wide v6

    .line 2196
    .local v6, selectedId:J
    iput-wide v6, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    .line 2197
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    .line 2199
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-ltz v11, :cond_3

    .line 2201
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2203
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2230
    :goto_1
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2231
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v11, :cond_0

    .line 2232
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2233
    .local v9, textFilter:Landroid/widget/EditText;
    if-eqz v9, :cond_0

    .line 2234
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2235
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 2236
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2241
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v9           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    .line 2243
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v11, :cond_1

    .line 2244
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2246
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v11, :cond_8

    .line 2247
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2248
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2249
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 2250
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v11, v12, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2249
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2194
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2205
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v11, :cond_5

    .line 2215
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2216
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2217
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2218
    .local v2, firstPos:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt v2, v11, :cond_4

    .line 2219
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v11, -0x1

    .line 2221
    :cond_4
    iput v2, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2222
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 2224
    .end local v2           #firstPos:I
    .end local v10           #v:Landroid/view/View;
    :cond_5
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2225
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2226
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 2241
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2252
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2254
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    .line 2256
    const-string v11, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v11, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2257
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 3025
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 3027
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    .line 3030
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 3031
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSizeChanged(IIII)V

    .line 3033
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 7755
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7756
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7757
    .local v1, length:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7758
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7760
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 7761
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 7767
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7768
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7770
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7771
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7778
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 7762
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7764
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 7765
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_0

    .line 7773
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "ev"

    .prologue
    .line 4440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 4442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4462
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v35

    if-nez v35, :cond_3

    .line 4465
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v35

    if-nez v35, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLongClickable()Z

    move-result v35

    if-eqz v35, :cond_2

    :cond_1
    const/16 v35, 0x1

    .line 4986
    :goto_0
    return v35

    .line 4465
    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 4468
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    .line 4469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 4470
    .local v22, intercepted:Z
    if-eqz v22, :cond_4

    .line 4471
    const/16 v35, 0x1

    goto :goto_0

    .line 4475
    .end local v22           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4479
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 4480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-eqz v35, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 4489
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 4492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 4493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->clear()V

    .line 4500
    :cond_6
    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 4986
    :cond_7
    :goto_1
    :pswitch_0
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 4502
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_1

    .line 4518
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 4520
    .local v33, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 4521
    .local v34, y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 4525
    .local v26, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 4526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 4529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 4530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 4531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 4534
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_b

    .line 4535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_e

    if-ltz v26, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-nez v35, :cond_e

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v35

    check-cast v35, Landroid/widget/ListAdapter;

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 4543
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_a

    .line 4546
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4548
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4563
    :cond_b
    :goto_2
    if-ltz v26, :cond_c

    .line 4565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 4566
    .local v31, v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4568
    .end local v31           #v:Landroid/view/View;
    :cond_c
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4569
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4570
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4571
    const/high16 v35, -0x8000

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4576
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 4577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_7

    .line 4578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 4504
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    .line 4506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4508
    :cond_d
    const/16 v35, 0x5

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4509
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4510
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4511
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4512
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4513
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 4550
    .restart local v26       #motionPosition:I
    .restart local v33       #x:I
    .restart local v34       #y:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 4551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-nez v35, :cond_10

    .line 4553
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 4555
    :cond_10
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4556
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4557
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v26

    .line 4558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 4585
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v29

    .line 4586
    .local v29, pointerIndex:I
    const/16 v35, -0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    .line 4587
    const/16 v29, 0x0

    .line 4588
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4591
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->getState()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    .line 4594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 4597
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 4598
    .restart local v34       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 4605
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    .line 4607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v35, v0

    sub-int v10, v34, v35

    .line 4611
    .local v10, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_7

    .line 4612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 4615
    move/from16 v30, v10

    .line 4616
    .local v30, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4617
    .local v6, childCount:I
    if-lez v6, :cond_7

    .line 4618
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v36, v0

    sub-int v17, v35, v36

    .line 4619
    .local v17, height:I
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4620
    .local v14, firstTop:I
    add-int/lit8 v35, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 4621
    .local v23, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 4622
    .local v25, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v35

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v11, v35, v36

    .line 4624
    .local v11, end:I
    if-gez v30, :cond_14

    .line 4625
    add-int/lit8 v35, v17, -0x1

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 4630
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4632
    .local v13, firstPosition:I
    if-nez v13, :cond_13

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-lt v14, v0, :cond_13

    if-ltz v10, :cond_13

    .line 4634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_15

    .line 4635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v36, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 4641
    :cond_13
    :goto_5
    add-int v35, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    move/from16 v0, v23

    if-gt v0, v11, :cond_7

    if-gtz v10, :cond_7

    .line 4643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_16

    .line 4644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v36, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 4627
    .end local v13           #firstPosition:I
    :cond_14
    add-int/lit8 v35, v17, -0x1

    move/from16 v0, v35

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    goto/16 :goto_4

    .line 4637
    .restart local v13       #firstPosition:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_5

    .line 4646
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 4655
    .end local v6           #childCount:I
    .end local v10           #deltaY:I
    .end local v11           #end:I
    .end local v13           #firstPosition:I
    .end local v14           #firstTop:I
    .end local v17           #height:I
    .end local v23           #lastBottom:I
    .end local v25           #listPadding:Landroid/graphics/Rect;
    .end local v30           #tempY:I
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 4662
    .end local v29           #pointerIndex:I
    .end local v34           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_3

    .line 4863
    :cond_17
    :goto_6
    :pswitch_8
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_18

    .line 4866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4872
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 4874
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 4875
    .local v16, handler:Landroid/os/Handler;
    if-eqz v16, :cond_19

    .line 4876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4879
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 4881
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 4891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/StrictMode$Span;->finish()V

    .line 4892
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 4666
    .end local v16           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    .line 4667
    .restart local v26       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4669
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    .line 4670
    .local v33, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v33, v35

    if-lez v35, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpg-float v35, v33, v35

    if-gez v35, :cond_20

    const/16 v19, 0x1

    .line 4673
    .local v19, inList:Z
    :goto_7
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_24

    if-eqz v19, :cond_24

    .line 4674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    .line 4675
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4678
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v35, v0

    if-nez v35, :cond_1b

    .line 4679
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    .line 4682
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v28, v0

    .line 4683
    .local v28, performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4684
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 4686
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 4688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_23

    .line 4689
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 4690
    .restart local v16       #handler:Landroid/os/Handler;
    if-eqz v16, :cond_1d

    .line 4691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4694
    :cond_1d
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 4695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 4696
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 4698
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 4699
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4701
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 4703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4704
    .local v9, d:Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 4705
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4708
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1f

    .line 4709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4711
    :cond_1f
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4728
    :goto_9
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 4670
    .end local v16           #handler:Landroid/os/Handler;
    .end local v19           #inList:Z
    .end local v28           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 4691
    .restart local v16       #handler:Landroid/os/Handler;
    .restart local v19       #inList:Z
    .restart local v28       #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    goto/16 :goto_8

    .line 4725
    :cond_22
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4726
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto :goto_9

    .line 4729
    .end local v16           #handler:Landroid/os/Handler;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_24

    .line 4730
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    .line 4733
    .end local v28           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_24
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4734
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto/16 :goto_6

    .line 4737
    .end local v5           #child:Landroid/view/View;
    .end local v19           #inList:Z
    .end local v26           #motionPosition:I
    .end local v33           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4738
    .restart local v6       #childCount:I
    if-lez v6, :cond_2c

    .line 4739
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v12

    .line 4740
    .local v12, firstChildTop:I
    add-int/lit8 v35, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v24

    .line 4741
    .local v24, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 4742
    .local v8, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v7, v35, v36

    .line 4743
    .local v7, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_25

    if-lt v12, v8, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v35

    sub-int v35, v35, v7

    move/from16 v0, v24

    move/from16 v1, v35

    if-gt v0, v1, :cond_25

    .line 4746
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4747
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 4749
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 4751
    .local v32, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4762
    .local v21, initialVelocity:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    sub-int v35, v8, v35

    move/from16 v0, v35

    if-eq v12, v0, :cond_2a

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    add-int v35, v35, v7

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_2a

    .line 4767
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_28

    .line 4771
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_29

    .line 4772
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4778
    :cond_28
    :goto_a
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4779
    const/4 v15, 0x1

    .line 4816
    .local v15, flingNeeded:Z
    if-eqz v15, :cond_17

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_6

    .line 4774
    .end local v15           #flingNeeded:Z
    :cond_29
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_a

    .line 4820
    :cond_2a
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4821
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2b

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4825
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_17

    .line 4826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto/16 :goto_6

    .line 4831
    .end local v7           #contentBottom:I
    .end local v8           #contentTop:I
    .end local v12           #firstChildTop:I
    .end local v21           #initialVelocity:I
    .end local v24           #lastChildBottom:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_2c
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4832
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 4837
    .end local v6           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_2d

    .line 4841
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2e

    .line 4842
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4848
    :cond_2d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 4849
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4853
    .restart local v21       #initialVelocity:I
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4854
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2f

    .line 4855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_6

    .line 4844
    .end local v21           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_2e
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_b

    .line 4857
    .restart local v21       #initialVelocity:I
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_6

    .line 4898
    .end local v21           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_4

    .line 4919
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4920
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 4922
    .local v27, motionView:Landroid/view/View;
    if-eqz v27, :cond_30

    .line 4923
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4925
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 4927
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 4928
    .restart local v16       #handler:Landroid/os/Handler;
    if-eqz v16, :cond_31

    .line 4929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4932
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 4935
    .end local v16           #handler:Landroid/os/Handler;
    .end local v27           #motionView:Landroid/view/View;
    :goto_c
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_32

    .line 4936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4939
    :cond_32
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 4900
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_33

    .line 4904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_34

    .line 4905
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4911
    :cond_33
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_c

    .line 4907
    :cond_34
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_d

    .line 4944
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    move/from16 v33, v0

    .line 4946
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v34, v0

    .line 4947
    .restart local v34       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 4948
    .restart local v26       #motionPosition:I
    if-ltz v26, :cond_35

    .line 4950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 4951
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4952
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_7

    .line 4954
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4957
    .end local v31           #v:Landroid/view/View;
    :cond_35
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4958
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4966
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 4967
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 4968
    .local v18, id:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 4969
    .restart local v33       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 4970
    .restart local v34       #y:I
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4971
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4972
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4973
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4974
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 4975
    .restart local v26       #motionPosition:I
    if-ltz v26, :cond_36

    .line 4977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 4978
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4979
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4981
    .end local v31           #v:Landroid/view/View;
    :cond_36
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 4500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 4502
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 4598
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 4662
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 4898
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 4013
    if-eqz p1, :cond_2

    .line 4015
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 4020
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4025
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 4027
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 4046
    :cond_1
    :goto_0
    return-void

    .line 4029
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4030
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4031
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4032
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4034
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 4035
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4038
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4039
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 4040
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4041
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 4042
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3346
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 3351
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 3384
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 3386
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 3387
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3388
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3389
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3392
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3393
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 3394
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3396
    :cond_0
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3397
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 3398
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 3399
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 3400
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3404
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3406
    if-ne v0, v2, :cond_2

    .line 3408
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 3434
    :cond_2
    :goto_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 3435
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 3384
    goto :goto_0

    .line 3411
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 3413
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 3417
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3420
    if-ne v0, v2, :cond_6

    .line 3422
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3427
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 3428
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3429
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/16 v5, 0x190

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1937
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1956
    :goto_0
    return v1

    .line 1940
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1956
    goto :goto_0

    .line 1942
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1943
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1944
    .local v0, viewportHeight:I
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0           #viewportHeight:I
    :cond_1
    move v1, v2

    .line 1947
    goto :goto_0

    .line 1949
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1950
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1951
    .restart local v0       #viewportHeight:I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0           #viewportHeight:I
    :cond_2
    move v1, v2

    .line 1954
    goto :goto_0

    .line 1940
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1467
    const/4 v7, 0x0

    .line 1468
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1470
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1471
    const/4 v7, 0x1

    .line 1473
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1476
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1478
    if-eqz v5, :cond_6

    .line 1479
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1484
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1485
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1489
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1492
    const/4 v6, 0x0

    .line 1509
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1510
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    .line 1511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1514
    :cond_3
    if-eqz v6, :cond_4

    .line 1515
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1518
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1475
    goto :goto_0

    .line 1481
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1487
    :cond_7
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1494
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1495
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1496
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1497
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1498
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1499
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1500
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1501
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1503
    :cond_9
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1495
    goto :goto_4

    .line 1504
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1505
    :cond_c
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3544
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3547
    invoke-virtual {p0, p2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemChecked(IZ)V

    .line 3548
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3565
    :cond_0
    :goto_0
    return v6

    .line 3553
    :cond_1
    const/4 v6, 0x0

    .line 3554
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3558
    :cond_2
    if-nez v6, :cond_3

    .line 3559
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3560
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3562
    :cond_3
    if-eqz v6, :cond_0

    .line 3563
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3668
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3669
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3670
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3671
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3674
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3675
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3676
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3677
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3678
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3679
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3680
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3684
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3675
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3684
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3739
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 3740
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3741
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3743
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method public positionOfOverLappingView(Landroid/graphics/Rect;Z)I
    .locals 7
    .parameter "rect"
    .parameter "down"

    .prologue
    .line 3688
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3689
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3690
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3691
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3694
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3695
    .local v1, count:I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3696
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_4

    .line 3697
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3698
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 3699
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3700
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3701
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    .line 3727
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v5

    .line 3696
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3706
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 3707
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3708
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 3709
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3710
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3711
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_1

    .line 3706
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3716
    .end local v0           #child:Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    .line 3717
    .local v4, lastVisible:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    .line 3718
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3719
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 3720
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3721
    move v4, v3

    .line 3722
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 3723
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_1

    .line 3717
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3727
    .end local v0           #child:Landroid/view/View;
    :cond_6
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v4

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2942
    if-eq p1, v6, :cond_0

    .line 2943
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2946
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2947
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2948
    instance-of v2, p2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2949
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2951
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(IIII)V

    .line 2954
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2955
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2956
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2957
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2958
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2961
    :cond_2
    return-void

    .line 2956
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7878
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7879
    .local v1, childCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    move-result-object v3

    .line 7882
    .local v3, listener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7883
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7884
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 7887
    .local v4, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7888
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7889
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7890
    if-eqz v3, :cond_0

    .line 7892
    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7882
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7896
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7898
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7051
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 7052
    .local v0, position:I
    if-gez v0, :cond_0

    .line 7053
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7055
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7056
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7057
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->registerMotionListener()V

    .line 982
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 983
    return-void
.end method

.method public registerTiltMotion()V
    .locals 0

    .prologue
    .line 1039
    return-void
.end method

.method protected removePendingCallbacks()V
    .locals 2

    .prologue
    .line 4990
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4991
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 4992
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4993
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4995
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4996
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x0

    .line 5623
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_3

    .line 5625
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_0

    .line 5626
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5627
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    .line 5630
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-nez v0, :cond_1

    .line 5632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5635
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_2

    .line 5637
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 5638
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5639
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5644
    :cond_2
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 5645
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 5647
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5650
    :cond_3
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 5468
    if-eqz p1, :cond_0

    .line 5469
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5471
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 5472
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2399
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2400
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2402
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2062
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2063
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 2064
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2065
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2067
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2409
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2410
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2411
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2412
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 2413
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 2414
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setSelectedPositionInt(I)V

    .line 2415
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setNextSelectedPositionInt(I)V

    .line 2416
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2417
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2418
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2419
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2420
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7122
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7124
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 7125
    const/16 v17, 0x0

    .line 7220
    :goto_0
    return v17

    .line 7128
    :cond_0
    const/4 v13, 0x0

    .line 7130
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7131
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7132
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 7133
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7134
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 7136
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7137
    move v12, v14

    .line 7139
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7140
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7141
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7144
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 7145
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7201
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 7206
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 7207
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 7208
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 7209
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7210
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7211
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 7212
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 7213
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectionInt(I)V

    .line 7214
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 7218
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 7220
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7146
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7147
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7151
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7153
    move v12, v7

    .line 7154
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7155
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7156
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7158
    .local v15, top:I
    if-nez v8, :cond_6

    .line 7160
    move v13, v15

    .line 7162
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7165
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7168
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7170
    add-int v12, v7, v8

    .line 7171
    move v13, v15

    .line 7172
    goto/16 :goto_1

    .line 7154
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7176
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 7177
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 7178
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7180
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 7181
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7182
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7183
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7185
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7186
    move v13, v15

    .line 7187
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7188
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7192
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7193
    add-int v12, v7, v8

    .line 7194
    move v13, v15

    .line 7195
    goto/16 :goto_1

    .line 7180
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7216
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7220
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7101
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7102
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 7103
    const/4 v0, 0x1

    .line 7105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1901
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1902
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 1903
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 1904
    .local v1, lastVisiblePosition:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1913
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1908
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1909
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1912
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7544
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7604
    :cond_0
    :goto_0
    return v2

    .line 7548
    :cond_1
    const/4 v2, 0x0

    .line 7549
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 7550
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 7581
    :goto_1
    if-eqz v3, :cond_0

    .line 7582
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7584
    move-object v1, p3

    .line 7585
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7586
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7589
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7590
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7592
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7593
    goto :goto_0

    .line 7557
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7558
    goto :goto_1

    .line 7560
    :sswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7561
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 7562
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7563
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 7564
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7566
    :cond_3
    const/4 v2, 0x1

    .line 7573
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 7574
    goto :goto_1

    .line 7567
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 7569
    const/4 v2, 0x1

    .line 7570
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7577
    :sswitch_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_1

    .line 7596
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7597
    goto :goto_0

    .line 7600
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 7550
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1272
    if-eqz p1, :cond_0

    .line 1273
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1275
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1286
    :cond_2
    return-void
.end method

.method public setBounceViewBgAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 5174
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 5178
    :goto_0
    return-void

    .line 5176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewBgAlpha(I)V

    .line 5177
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initBounceView()V

    goto :goto_0
.end method

.method public setBounceViewMargin(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 5181
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-nez v0, :cond_0

    .line 5184
    :goto_0
    return-void

    .line 5183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViewMargin(I)V

    goto :goto_0
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 7849
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7850
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    .line 7851
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7852
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7853
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7855
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7857
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1541
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 1542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1546
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1548
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1551
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1555
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearChoices()V

    .line 1557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 1560
    :cond_3
    return-void
.end method

.method public setCurrentOrientationModeForTiltMotion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1029
    return-void
.end method

.method public setCustomBounceView(I)Z
    .locals 4
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 5125
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 5130
    :goto_0
    return v2

    .line 5127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5128
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5130
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(II)Z
    .locals 4
    .parameter "topResourceId"
    .parameter "bottomResourceId"

    .prologue
    const/4 v3, 0x0

    .line 5143
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 5148
    :goto_0
    return v2

    .line 5145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5146
    .local v1, childViewTop:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5148
    .local v0, childViewBottom:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public setCustomBounceView(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .parameter "topBounceView"
    .parameter "bottomBounceView"

    .prologue
    .line 5160
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 5165
    :cond_0
    :goto_0
    return v0

    .line 5162
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectController:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->setBounceViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 5164
    .local v0, success:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 3078
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 3079
    return-void
.end method

.method public setEnableEndEffect(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEndEffectEnabled:Z

    .line 1121
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 970
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 973
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 975
    return-void

    .line 973
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1628
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setAlwaysShow(Z)V

    .line 1636
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 1637
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    .line 1638
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1603
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    .line 1604
    if-eqz p1, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v0, :cond_0

    .line 1606
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 1611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 2347
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2348
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 2352
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2353
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2354
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2357
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2358
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2359
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2364
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 2365
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 2368
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2661
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 2663
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2667
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2668
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2669
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 2673
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2667
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 6571
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6572
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6574
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2400(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setFriction(F)V

    .line 6575
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 4070
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 4071
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 4052
    if-eqz p1, :cond_0

    .line 4053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 4057
    :goto_0
    return-void

    .line 4055
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 4063
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 4064
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1400
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1407
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1410
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 1411
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1412
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    if-eqz p2, :cond_7

    .line 1415
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1420
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1421
    if-eqz p2, :cond_8

    .line 1422
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1427
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1428
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1429
    .local v3, id:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1458
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1459
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1460
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 1417
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1424
    :cond_8
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1433
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 1437
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1438
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1439
    if-eqz v7, :cond_b

    .line 1440
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1446
    :cond_b
    if-eqz p2, :cond_e

    .line 1447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1448
    if-eqz v7, :cond_c

    .line 1449
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1451
    :cond_c
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 1433
    goto :goto_4

    .line 1452
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1453
    :cond_f
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 998
    if-eqz p1, :cond_0

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 1003
    :goto_0
    return-void

    .line 1001
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    .line 1575
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .line 1727
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 1728
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 5441
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    .line 5442
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    .line 5443
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1249
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1252
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1253
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1254
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1255
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1257
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    .line 1264
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1265
    return-void

    .line 1259
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1260
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 8002
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4302(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .line 8003
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 7941
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 7942
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7943
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7945
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7952
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 7949
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7951
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 3162
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    .line 3163
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    .line 3164
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1985
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1986
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 1988
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    .line 1989
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 3089
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3090
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 3093
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3094
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3095
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3097
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3098
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3099
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3100
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 3101
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 3102
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 3103
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 3104
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3105
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3106
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1705
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1706
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 2055
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2056
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    .line 2057
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayoutIfNecessary()V

    .line 2059
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 2001
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    .line 2002
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1063
    return-void
.end method

.method public setTiltMotionScrollSpeed(III)V
    .locals 0
    .parameter "step1"
    .parameter "step2"
    .parameter "step3"

    .prologue
    .line 1084
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1097
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1098
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 7819
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    .line 7820
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 6584
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 6585
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1672
    invoke-super {p0, p1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 1673
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 1676
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 3058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 3576
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v3

    .line 3577
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3578
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3579
    .local v1, id:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3580
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3582
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3585
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 3590
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3591
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 3592
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3593
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 3595
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3599
    :cond_0
    if-nez v6, :cond_1

    .line 3600
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3602
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3607
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 6673
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v5, :cond_4

    .line 6674
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_3

    .line 6675
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6685
    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6686
    .local v2, firstPos:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6687
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 6688
    .local v3, lastPos:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 6689
    .local v4, topLimit:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6691
    .local v0, bottomLimit:I
    if-eqz p1, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_5

    if-lez p1, :cond_5

    .line 6697
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 6698
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v5, :cond_2

    .line 6699
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6705
    :cond_2
    :goto_1
    return-void

    .line 6677
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_3
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_0

    .line 6681
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6702
    .restart local v0       #bottomLimit:I
    .restart local v1       #childCount:I
    .restart local v2       #firstPos:I
    .restart local v3       #lastPos:I
    .restart local v4       #topLimit:I
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6703
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 6711
    const/4 v2, -0x1

    .line 6712
    .local v2, index:I
    if-gez p1, :cond_3

    .line 6713
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 6718
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6719
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6720
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6721
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6722
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6724
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6725
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6726
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6727
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 6728
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6731
    add-int/lit8 v2, v2, 0x1

    .line 6738
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 6741
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6714
    :cond_3
    if-lez p1, :cond_0

    .line 6715
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6732
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6735
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 6606
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6607
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6609
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 6610
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 6660
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6661
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6663
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(II)V

    .line 6664
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 6644
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6645
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6647
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(II)V

    .line 6648
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 6626
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6627
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 6630
    return-void
.end method

.method public smoothScrollToPositionWithDuration(II)V
    .locals 1
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 6593
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6594
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6596
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithDuration(II)V

    .line 6597
    return-void
.end method

.method public stopTiltScrolling()V
    .locals 0

    .prologue
    .line 1073
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3041
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3046
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3044
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3041
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 30
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 6782
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 6783
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 6784
    const/16 v27, 0x1

    .line 6996
    :goto_0
    return v27

    .line 6787
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v14

    .line 6788
    .local v14, firstTop:I
    add-int/lit8 v27, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v20

    .line 6790
    .local v20, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6797
    .local v21, listPadding:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 6798
    .local v11, effectivePaddingTop:I
    const/4 v10, 0x0

    .line 6799
    .local v10, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 6800
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 6801
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 6805
    :cond_1
    sub-int v23, v11, v14

    .line 6806
    .local v23, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v27

    sub-int v12, v27, v10

    .line 6807
    .local v12, end:I
    sub-int v24, v20, v12

    .line 6809
    .local v24, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v17, v27, v28

    .line 6810
    .local v17, height:I
    if-gez p1, :cond_3

    .line 6811
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6816
    :goto_1
    if-gez p2, :cond_4

    .line 6817
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6822
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6825
    .local v13, firstPosition:I
    if-nez v13, :cond_5

    .line 6826
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v14, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    .line 6830
    :goto_3
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 6831
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    .line 6836
    :goto_4
    if-nez v13, :cond_9

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v14, v0, :cond_9

    if-ltz p2, :cond_9

    .line 6840
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 6841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6842
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_2

    .line 6843
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6849
    :cond_2
    :goto_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6852
    if-eqz p2, :cond_8

    const/16 v27, 0x1

    goto/16 :goto_0

    .line 6813
    .end local v13           #firstPosition:I
    :cond_3
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6819
    :cond_4
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6828
    .restart local v13       #firstPosition:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 6833
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 6846
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_5

    .line 6852
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6855
    :cond_9
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v20

    move/from16 v1, v27

    if-gt v0, v1, :cond_d

    if-gtz p2, :cond_d

    .line 6860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 6861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6862
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_a

    .line 6863
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6869
    :cond_a
    :goto_6
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6872
    if-eqz p2, :cond_c

    const/16 v27, 0x1

    goto/16 :goto_0

    .line 6866
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_6

    .line 6872
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6879
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_10

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_f

    .line 6881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6882
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_e

    .line 6883
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6885
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6887
    :cond_f
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p2, v0

    .line 6888
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p1, v0

    .line 6889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6895
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6897
    if-gez p2, :cond_19

    const/4 v9, 0x1

    .line 6899
    .local v9, down:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    .line 6900
    .local v19, inTouchMode:Z
    if-eqz v19, :cond_11

    .line 6901
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 6904
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeaderViewsCount()I

    move-result v16

    .line 6905
    .local v16, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFooterViewsCount()I

    move-result v28

    sub-int v15, v27, v28

    .line 6907
    .local v15, footerViewsStart:I
    const/16 v25, 0x0

    .line 6908
    .local v25, start:I
    const/4 v8, 0x0

    .line 6910
    .local v8, count:I
    if-eqz v9, :cond_1c

    .line 6911
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v26, v0

    .line 6912
    .local v26, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 6913
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v26, v26, v27

    .line 6915
    :cond_12
    const/16 v18, 0x0

    .local v18, i:I
    :goto_8
    move/from16 v0, v18

    if-ge v0, v6, :cond_13

    .line 6916
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6917
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_1a

    .line 6957
    .end local v5           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewNewTop:I

    .line 6959
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 6961
    if-lez v8, :cond_14

    .line 6962
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 6964
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 6966
    if-eqz v9, :cond_15

    .line 6967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v8

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6970
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6972
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6973
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v23

    if-lt v0, v3, :cond_16

    move/from16 v0, v24

    if-ge v0, v3, :cond_17

    .line 6974
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->fillGap(Z)V

    .line 6977
    :cond_17
    if-nez v19, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    .line 6978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 6979
    .local v7, childIndex:I
    if-ltz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_18

    .line 6980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6991
    .end local v7           #childIndex:I
    :cond_18
    :goto_9
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 6993
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 6994
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 6996
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6897
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v15           #footerViewsStart:I
    .end local v16           #headerViewsCount:I
    .end local v18           #i:I
    .end local v19           #inTouchMode:Z
    .end local v25           #start:I
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 6920
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v15       #footerViewsStart:I
    .restart local v16       #headerViewsCount:I
    .restart local v18       #i:I
    .restart local v19       #inTouchMode:Z
    .restart local v25       #start:I
    .restart local v26       #top:I
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    .line 6921
    add-int v22, v13, v18

    .line 6922
    .local v22, position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_1b

    move/from16 v0, v22

    if-ge v0, v15, :cond_1b

    .line 6923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6915
    :cond_1b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 6933
    .end local v5           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v22           #position:I
    .end local v26           #top:I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v27

    sub-int v4, v27, p2

    .line 6934
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 6935
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v4, v4, v27

    .line 6937
    :cond_1d
    add-int/lit8 v18, v6, -0x1

    .restart local v18       #i:I
    :goto_a
    if-ltz v18, :cond_13

    .line 6938
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6939
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v4, :cond_13

    .line 6942
    move/from16 v25, v18

    .line 6943
    add-int/lit8 v8, v8, 0x1

    .line 6944
    add-int v22, v13, v18

    .line 6945
    .restart local v22       #position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_1e

    move/from16 v0, v22

    if-ge v0, v15, :cond_1e

    .line 6946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6937
    :cond_1e
    add-int/lit8 v18, v18, -0x1

    goto :goto_a

    .line 6982
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v22           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    .line 6983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 6984
    .restart local v7       #childIndex:I
    if-ltz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_18

    .line 6985
    const/16 v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 6988
    .end local v7           #childIndex:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterMotionListener()V

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 991
    return-void
.end method

.method public unregisterTiltMotion()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2683
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2686
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2689
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2690
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2691
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2692
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2696
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2699
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2701
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2704
    .local v3, count:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2707
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2708
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2709
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2712
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2714
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2686
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2692
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2696
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2704
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2709
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2712
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3168
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3174
    :cond_0
    :goto_0
    return-void

    .line 3171
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

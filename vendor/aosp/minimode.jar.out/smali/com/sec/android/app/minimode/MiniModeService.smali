.class public abstract Lcom/sec/android/app/minimode/MiniModeService;
.super Landroid/app/Service;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MiniModeService$TouchListener;,
        Lcom/sec/android/app/minimode/MiniModeService$Vec2D;,
        Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;,
        Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field public static final ALARM_ALERT_ACTION:[Ljava/lang/String; = null

.field public static final CATEGORY_NAME:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field public static final CLOSE_EFFECT_DEFAULT:I = 0x0

.field public static final CLOSE_EFFECT_FULLMODE:I = 0x1

.field public static final CLOSE_REASON_ALARM:I = 0x6

.field public static final CLOSE_REASON_APPLICATION_REQUEST:I = 0x7

.field public static final CLOSE_REASON_BACK_KEY_PRESSED:I = 0x1

.field public static final CLOSE_REASON_CLOSE_BUTTON_CLICKED:I = 0x3

.field public static final CLOSE_REASON_FORCE_CLOSED:I = 0x2

.field public static final CLOSE_REASON_FULL_BUTTON_CLICKED:I = 0x4

.field public static final CLOSE_REASON_INCOMING_CALL:I = 0x5

.field private static final CLOSE_REQUESTED_MSG:I = 0x4

.field static final DEBUG:Z = false

.field static final DEBUG_APP_POSITION:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_VERBOSE:Z = false

.field static final DEBUG_WINDOW_SIZE:Z = false

.field private static final DUMMY_NOTIFICATION_ID:I = 0x1

.field static final ENABLE_DEBUG_BY_SERVICE_NAME:Z = false

.field private static ENABLE_MINIMIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z = false

.field private static final FLOATING_ALPHA_DOWN_SCALE_FACTOR:F = 0.6f

.field private static final FLOATING_DEFAULT_ANIMATION_DURATION:I = 0x96

.field private static final FLOATING_SIZE_SCALE_FACTOR:F = 0.95f

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final HIDE_REQUESTED_MSG:I = 0x7

.field private static final LAYOUT_CHANGED_MSG:I = 0x3

.field public static final MAIN_ACTIVITY_META_DATA:Ljava/lang/String; = "com.sec.minimode.main_activity"

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final MINI_MODE_APP_MANAGER:Ljava/lang/String; = "mini_mode_app_manager"

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field private static final RESIZE_WINDOW_MSG:I = 0x5

.field static final SCALE_DOWN_ANIM:Z = false

.field private static final SHOW_REQUESTED_MSG:I = 0x6

.field public static final SOFT_INPUT_MODE_NOT_INITIALIZED:I = -0x1

.field static STATIC_TAG:Ljava/lang/String; = null

.field public static final WINDOW_DEFAULT_HEIGHT:I = 0x0

.field public static final WINDOW_DEFAULT_POS_X:I = -0x2710

.field public static final WINDOW_DEFAULT_POS_Y:I = -0x2710

.field public static final WINDOW_DEFAULT_WIDTH:I = 0x0

.field public static final WINDOW_MAXIMUM_SIZE_H:Ljava/lang/String; = "com.sec.minimode.window.MAXIMUM_SIZE_H"

.field public static final WINDOW_MAXIMUM_SIZE_W:Ljava/lang/String; = "com.sec.minimode.window.MAXIMUM_SIZE_W"

.field public static final WINDOW_MINIMUM_SIZE_H:Ljava/lang/String; = "com.sec.minimode.window.MINIMUM_SIZE_H"

.field public static final WINDOW_MINIMUM_SIZE_W:Ljava/lang/String; = "com.sec.minimode.window.MINIMUM_SIZE_W"

.field public static final WINDOW_POS_X:Ljava/lang/String; = "window.pos.x"

.field public static final WINDOW_POS_Y:Ljava/lang/String; = "window.pos.y"

.field public static final X_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field public static final Y_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field private static mHasStatusBar:Z

.field private static mIsDragRestricted:Z

.field private static mIsTabletMode:Z


# instance fields
.field private CALCULATED_BODY_VIEW_ANCHOR_ID:I

.field protected CLOSE_MINIAPP_DELAY:I

.field protected MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

.field private MINIMIZED_TITLE_BAR_WIDTH:I

.field protected RESIZE_HANDLER_SHOW_TIMEOUT:I

.field TAG:Ljava/lang/String;

.field protected X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field protected Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field private lastKeyCode:I

.field private lastKeyEvent:Landroid/view/KeyEvent;

.field private mAlarmStateListner:Landroid/content/BroadcastReceiver;

.field private mAnimView:Landroid/view/View;

.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field private mAttached:Z

.field public mAxisXGapBetweenMultiMiniApp:I

.field public mAxisYGapBetweenMultiMiniApp:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBgEnabled:Z

.field private mBodyView:Landroid/view/View;

.field private mBottomPaddingOfMiniApp:I

.field private mCalculatedBodyView:Landroid/view/View;

.field private mCalculatedBodyViewID:I

.field private mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentHasBeenSet:Z

.field private mContentView:Landroid/view/View;

.field private mContentViewLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorContentView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mDimEnabled:Z

.field private mDimView:Landroid/view/View;

.field private mDismissed:Z

.field private mFirstShow:Z

.field private mFloatingEndAnim:Landroid/animation/AnimatorSet;

.field private mFloatingStartAnim:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mHideOverlayTitleBar:Ljava/lang/Runnable;

.field private mHideResizeHandler:Ljava/lang/Runnable;

.field protected mIWindowManager:Landroid/view/IWindowManager;

.field private mIsMinimized:Z

.field private mIsOverlayTitleBarShown:Z

.field private mLastDisplayRect:Landroid/graphics/Rect;

.field private mLastFocus:Z

.field private mLaunchMainRunnable:Ljava/lang/Runnable;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftPaddingOfMiniApp:I

.field private mMainActivity:Landroid/content/ComponentName;

.field protected mMainView:Lcom/sec/android/app/minimode/MainView;

.field private mMaximizeButton:Landroid/widget/Button;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMinimizeButton:Landroid/widget/Button;

.field private mMinimizeFunctionRequested:Z

.field private mMinimizedBar:Landroid/widget/RelativeLayout;

.field private mMinimizedBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

.field private mMinimumSize:Landroid/graphics/Rect;

.field private mOldDecorViewHeight:I

.field private mOldDecorViewWidth:I

.field private mOverlayFrame:Landroid/view/View;

.field private mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

.field private mOverlayFrameWindow:Landroid/view/View;

.field private mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

.field private mOverlayTitleBar:Landroid/widget/RelativeLayout;

.field private mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhone2:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneStatusBarHeight:I

.field private mResizeFunctionRequested:Z

.field private mResizeHandler:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mRightPaddingOfMiniApp:I

.field private mSavedSoftInputMode:I

.field protected mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mSavedWindowAttributesFlags:I

.field protected mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

.field private mStartDrag:Z

.field private mStatusBarHeight:I

.field private mTitleView:Landroid/view/View;

.field private mTopPaddingOfMiniApp:I

.field private mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    const-string v2, "MiniModeService"

    sput-object v2, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    .line 263
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 265
    sput-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    .line 287
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    aput-object v3, v2, v0

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "com.android.calendar.CALENDAR_ALARM_ALERT"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    .line 305
    sput-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    .line 306
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    .line 307
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    .line 142
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    .line 144
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    .line 146
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 148
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 194
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 196
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    .line 198
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    .line 200
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    .line 206
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesFlags:I

    .line 208
    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    .line 210
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 212
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 214
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 216
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 218
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 220
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 222
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 224
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 226
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 246
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 248
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 250
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 252
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 254
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 256
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 267
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    .line 269
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 271
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 293
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 294
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    .line 296
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$1;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    .line 309
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    .line 310
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    .line 312
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    .line 313
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    .line 314
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    .line 315
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 316
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    .line 318
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 319
    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 321
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    .line 323
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    .line 324
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    .line 325
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    .line 326
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    .line 328
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    .line 329
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    .line 330
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    .line 331
    const v0, 0xff00f0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    .line 332
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    .line 333
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    .line 334
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    .line 337
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$2;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 600
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$7;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 1312
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$15;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    .line 1320
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$16;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    .line 1792
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$21;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    .line 2538
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    .line 2540
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->startDrag()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/KeyEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method private static calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .locals 25
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    .line 920
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 921
    .local v18, virtualDisplayRect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    .line 922
    .local v11, miniAppWidth:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 927
    .local v10, miniAppHeight:I
    int-to-double v0, v11

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v19, v21, v23

    .line 928
    .local v19, widthCanBeOutside:D
    int-to-double v0, v10

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v6, v21, v23

    .line 930
    .local v6, heightCanBeOutside:D
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 931
    sget-boolean v21, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    if-nez v21, :cond_0

    .line 932
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    double-to-int v0, v6

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 934
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 935
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    double-to-int v0, v6

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 938
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 939
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 940
    .local v16, unionRect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 943
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 944
    .local v12, sP0:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 945
    .local v13, sP1:Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 946
    .local v14, sP2:Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 948
    .local v15, sP3:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 949
    .local v2, eP0:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 950
    .local v3, eP1:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 951
    .local v4, eP2:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 953
    .local v5, eP3:Landroid/graphics/Point;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v12, v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v13, v3}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x2

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v4}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x3

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v5}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    .line 958
    .local v17, vectors:[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/16 v21, 0x0

    aget-object v9, v17, v21

    .line 959
    .local v9, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    .line 960
    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v21

    aget-object v22, v17, v8

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v22

    cmpg-float v21, v21, v22

    if-gez v21, :cond_1

    .line 961
    aget-object v9, v17, v8

    .line 959
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 968
    .end local v2           #eP0:Landroid/graphics/Point;
    .end local v3           #eP1:Landroid/graphics/Point;
    .end local v4           #eP2:Landroid/graphics/Point;
    .end local v5           #eP3:Landroid/graphics/Point;
    .end local v8           #i:I
    .end local v9           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v12           #sP0:Landroid/graphics/Point;
    .end local v13           #sP1:Landroid/graphics/Point;
    .end local v14           #sP2:Landroid/graphics/Point;
    .end local v15           #sP3:Landroid/graphics/Point;
    .end local v16           #unionRect:Landroid/graphics/Rect;
    .end local v17           #vectors:[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_2
    new-instance v9, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    :cond_3
    return-object v9
.end method

.method private calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    .line 813
    const/4 v7, 0x0

    .line 814
    .local v7, xExceeded:Z
    const/4 v9, 0x0

    .line 815
    .local v9, yExceeded:Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 816
    .local v1, nextMiniAppRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 817
    .local v5, tmpPoint:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 818
    .local v2, nextPoint:Landroid/graphics/Point;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v0, calculatedPositionList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 822
    :cond_0
    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_2

    const/4 v7, 0x1

    .line 823
    :goto_1
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_3

    const/4 v9, 0x1

    .line 825
    :goto_2
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 826
    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 828
    if-eqz v7, :cond_4

    .line 829
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 830
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 834
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 835
    .local v6, xDiff:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 836
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 839
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 840
    .local v8, yDiff:I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 841
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 889
    :cond_1
    :goto_3
    new-instance v3, Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 890
    .local v3, result:Landroid/graphics/Point;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 892
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    .end local v3           #result:Landroid/graphics/Point;
    .end local v6           #xDiff:I
    .end local v8           #yDiff:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 823
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 844
    :cond_4
    if-eqz v9, :cond_5

    .line 845
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    .line 846
    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 847
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 851
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 852
    .restart local v6       #xDiff:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 853
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 856
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 857
    .restart local v8       #yDiff:I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 858
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 862
    .end local v6           #xDiff:I
    .end local v8           #yDiff:I
    :cond_5
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    .line 863
    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 864
    iget v10, v5, Landroid/graphics/Point;->y:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 868
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 869
    .restart local v6       #xDiff:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 870
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 873
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 874
    .restart local v8       #yDiff:I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 875
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 878
    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_6

    const/4 v7, 0x1

    .line 879
    :goto_4
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_7

    const/4 v9, 0x1

    .line 880
    :goto_5
    if-eqz v9, :cond_1

    if-nez v7, :cond_1

    .line 882
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 883
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 878
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 879
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 895
    .restart local v3       #result:Landroid/graphics/Point;
    :cond_8
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftDownMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v4

    .line 896
    .local v4, tmp:Landroid/graphics/Point;
    iget v10, v4, Landroid/graphics/Point;->x:I

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 897
    iget v10, v4, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 902
    .end local v3           #result:Landroid/graphics/Point;
    .end local v4           #tmp:Landroid/graphics/Point;
    .end local v6           #xDiff:I
    .end local v8           #yDiff:I
    :cond_9
    return-object v1
.end method

.method private calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 16
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    .line 774
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 775
    .local v1, calculatedMiniAppRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 776
    .local v5, referencePointOfMiniApp:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 780
    .local v4, nextPoint:Landroid/graphics/Point;
    iget v12, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 781
    .local v6, relativeRateX:D
    iget v12, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 784
    .local v8, relativeRateY:D
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    double-to-int v2, v12

    .line 785
    .local v2, calculatedReferencePointX:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-int v3, v12

    .line 788
    .local v3, calculatedReferencePointY:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v2, v12

    iput v12, v4, Landroid/graphics/Point;->x:I

    .line 793
    :goto_0
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 797
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v10, v12, v13

    .line 798
    .local v10, xDiff:I
    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 799
    iget v12, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->right:I

    .line 802
    iget v12, v4, Landroid/graphics/Point;->y:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    .line 803
    .local v11, yDiff:I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 804
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 808
    return-object v1

    .line 791
    .end local v10           #xDiff:I
    .end local v11           #yDiff:I
    :cond_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iput v12, v4, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, -0x2710

    .line 2338
    const/16 v3, 0x7d2

    .line 2340
    .local v3, windowType:I
    :try_start_0
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "TYPE_MINI_APP"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2341
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 2342
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2353
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1040360

    const/4 v5, -0x3

    invoke-direct {v1, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 2362
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2363
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2364
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2365
    const/16 v4, 0x20

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2366
    const v4, 0x7f070001

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2367
    const-string v4, "com.sec.android.app.minimode.res"

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2370
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 2371
    .local v2, pos:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ne v4, v6, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v6, :cond_1

    .line 2372
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2373
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2374
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2377
    :cond_1
    return-object v1

    .line 2347
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #pos:Landroid/graphics/Rect;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2346
    :catch_1
    move-exception v4

    goto :goto_0

    .line 2345
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2344
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private endDrag()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 974
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    if-eqz v6, :cond_1

    .line 975
    iput-boolean v9, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 977
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 978
    .local v0, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 980
    .local v3, miniAppRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 981
    invoke-static {v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v2

    .line 983
    .local v2, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 984
    .local v4, start:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-direct {v1, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 987
    .local v1, end:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$8;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 994
    .local v5, translateAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 995
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$9;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$10;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1038
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1039
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 1049
    .end local v1           #end:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v2           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v4           #start:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v5           #translateAnim:Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$11;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$11;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1086
    .end local v0           #displayRect:Landroid/graphics/Rect;
    .end local v3           #miniAppRect:Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 1041
    .restart local v0       #displayRect:Landroid/graphics/Rect;
    .restart local v3       #miniAppRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1043
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, v7, :cond_0

    .line 1045
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_0
.end method

.method private findBodyView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "root"

    .prologue
    .line 1330
    if-nez p1, :cond_1

    .line 1331
    const/4 p1, 0x0

    .line 1350
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1332
    .restart local p1
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1337
    check-cast v1, Landroid/view/ViewGroup;

    .line 1340
    .local v1, tmpResultView:Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1341
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1342
    .local v0, childView:Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 1343
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1

    .end local v0           #childView:Landroid/view/View;
    :cond_3
    move-object p1, v1

    .line 1350
    goto :goto_0
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getFocusedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 374
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 377
    :cond_0
    return-object v0
.end method

.method private handleClose(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2305
    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onClose(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2308
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->isNeededToSave(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2316
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->dismiss()V

    .line 2318
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private initAlarmEventListener()V
    .locals 4

    .prologue
    .line 576
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 578
    new-instance v2, Lcom/sec/android/app/minimode/MiniModeService$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/minimode/MiniModeService$6;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 592
    .local v0, filter:Landroid/content/IntentFilter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 593
    sget-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 598
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private initFloatingAnimations()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1262
    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1263
    .local v3, startSizeAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1264
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$13;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1273
    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1275
    .local v2, startAlphaAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1276
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$14;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$14;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1283
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    .line 1284
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1285
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1287
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    .line 1288
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1289
    .local v1, endSizeAnim:Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1290
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1291
    .local v0, endAlphaAnim:Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1292
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1293
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1294
    return-void

    .line 1262
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    .line 1273
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 1289
    :array_2
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1291
    :array_3
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initOverlayFrameWindow()V
    .locals 15

    .prologue
    const v14, 0x7f020002

    const/16 v13, 0xb

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 1410
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f030001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    .line 1411
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    .line 1412
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x835

    const v8, 0x40368

    const/4 v9, -0x3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    .line 1423
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1424
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1425
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1426
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1427
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1428
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1429
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1430
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1434
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1436
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1437
    .local v4, overlayResizeHandler:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    .line 1441
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1442
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1444
    .local v5, overlayTitleBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x6

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1445
    const/4 v6, 0x7

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1446
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    .line 1450
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1451
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1453
    .local v2, minimizeButtonLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1454
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1456
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$17;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$17;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    .line 1490
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1491
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    invoke-direct {v3, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1493
    .local v3, minimizedTitleBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    .line 1495
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1496
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1498
    .local v1, maximizeButtonLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1499
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1500
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$18;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$18;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1528
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1531
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    .line 1532
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1533
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1535
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1536
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$19;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$19;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1552
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$20;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$20;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1694
    return-void
.end method

.method private initTelephonyEventListener()V
    .locals 7

    .prologue
    .line 522
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 524
    :try_start_0
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$4;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 531
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    const/4 v1, 0x0

    .line 542
    .local v1, TELEPHONY_SERVICE_2:Ljava/lang/String;
    :try_start_1
    const-class v4, Landroid/content/Context;

    const-string v5, "TELEPHONY_SERVICE_2"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 543
    .local v3, field:Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 554
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 555
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    .line 557
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$5;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 564
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    .line 565
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 573
    :cond_1
    :goto_2
    return-void

    .line 533
    .end local v1           #TELEPHONY_SERVICE_2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 534
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiniApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #TELEPHONY_SERVICE_2:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 570
    .restart local v2       #e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiniApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 550
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    goto :goto_1

    .line 549
    :catch_3
    move-exception v4

    goto :goto_1

    .line 548
    :catch_4
    move-exception v4

    goto :goto_1

    .line 547
    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method private initWindowEventListeners()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1089
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/minimode/MiniModeService$12;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 1258
    return-void
.end method

.method private isNeededToSave(I)Z
    .locals 1
    .parameter "reason"

    .prologue
    const/4 v0, 0x0

    .line 2322
    packed-switch p1, :pswitch_data_0

    .line 2333
    :goto_0
    :pswitch_0
    return v0

    .line 2331
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadResizeInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1697
    const/4 v9, 0x0

    .line 1699
    .local v9, svcInfo:Landroid/content/pm/ServiceInfo;
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1704
    :goto_0
    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    .line 1705
    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1706
    .local v4, metaData:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1707
    .local v7, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1708
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1709
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    .line 1710
    .local v6, minWidth:I
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    .line 1711
    .local v5, minHeight:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1712
    .local v3, maxWidth:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1715
    .local v2, maxHeight:I
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 1716
    if-eqz v4, :cond_3

    .line 1717
    const-string v10, "com.sec.minimode.window.MINIMUM_SIZE_W"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1718
    .local v8, sizeId:I
    if-eqz v8, :cond_0

    .line 1719
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 1721
    :cond_0
    const-string v10, "com.sec.minimode.window.MINIMUM_SIZE_H"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1722
    if-eqz v8, :cond_1

    .line 1723
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1725
    :cond_1
    const-string v10, "com.sec.minimode.window.MAXIMUM_SIZE_W"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1726
    if-eqz v8, :cond_2

    .line 1727
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1729
    :cond_2
    const-string v10, "com.sec.minimode.window.MAXIMUM_SIZE_H"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1730
    if-eqz v8, :cond_3

    .line 1731
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    float-to-int v2, v10

    .line 1738
    .end local v8           #sizeId:I
    :cond_3
    :goto_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    .line 1739
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    .line 1741
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #metaData:Landroid/os/Bundle;
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    .end local v7           #r:Landroid/content/res/Resources;
    :cond_4
    return-void

    .line 1700
    :catch_0
    move-exception v1

    .line 1701
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1734
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #maxHeight:I
    .restart local v3       #maxWidth:I
    .restart local v4       #metaData:Landroid/os/Bundle;
    .restart local v5       #minHeight:I
    .restart local v6       #minWidth:I
    .restart local v7       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 1735
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private shiftDownMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 913
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 914
    .local v0, result:Landroid/graphics/Point;
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 915
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 916
    return-object v0
.end method

.method private shiftMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 906
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 907
    .local v0, result:Landroid/graphics/Point;
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 908
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 909
    return-object v0
.end method

.method private startDrag()V
    .locals 4

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    .line 685
    .local v0, v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 686
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 688
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 689
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 690
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 710
    return-void

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    goto :goto_0
.end method


# virtual methods
.method protected closeOtherMiniApps()V
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->closeOthers()V

    .line 2694
    return-void
.end method

.method public dismiss()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2454
    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    if-eqz v3, :cond_0

    .line 2490
    :goto_0
    return-void

    .line 2459
    :cond_0
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2460
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2464
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2465
    iput-boolean v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 2468
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2469
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2470
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    .line 2473
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2481
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2482
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->removePosition()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 2488
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 2489
    invoke-virtual {p0, v7}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected enableBg(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2725
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2726
    if-eqz p1, :cond_1

    .line 2727
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2732
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 2735
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 2736
    return-void

    .line 2729
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2730
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected enableDim(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2698
    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    if-eq v1, p1, :cond_1

    .line 2699
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-nez v1, :cond_2

    .line 2700
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2701
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2702
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2703
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2705
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2707
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 2708
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 2710
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2717
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 2720
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 2721
    return-void

    .line 2712
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v1, :cond_0

    .line 2713
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2714
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public enableDragRestriction(Z)V
    .locals 0
    .parameter "restrict"

    .prologue
    .line 2645
    sput-boolean p1, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    .line 2646
    return-void
.end method

.method public enableMinimizeFeature(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2297
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    .line 2298
    return-void
.end method

.method public enableResizeFeature(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2283
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    .line 2284
    return-void
.end method

.method public enableResizeHandler(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2287
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2288
    if-eqz p1, :cond_1

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 1884
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    goto :goto_0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDecorationPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2750
    .local v0, paddingRect:Landroid/graphics/Rect;
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2751
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2752
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2753
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2754
    return-object v0
.end method

.method protected getDisplayRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 714
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 718
    .local v1, dmReal:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 736
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 742
    .local v0, displayRect:Landroid/graphics/Rect;
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    if-eqz v2, :cond_0

    .line 743
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #displayRect:Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 750
    .restart local v0       #displayRect:Landroid/graphics/Rect;
    :cond_0
    return-object v0
.end method

.method protected getFocusedComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMainActivityComponent()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2667
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2668
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2670
    .local v3, si:Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-object v4

    .line 2675
    :cond_1
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.sec.minimode.main_activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2678
    .local v2, ma:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2681
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2683
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #ma:Ljava/lang/String;
    .end local v3           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 2684
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing main.app"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    return-object v0
.end method

.method protected getMiniAppRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 754
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 755
    .local v3, miniAppX:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 756
    .local v4, miniAppY:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 757
    .local v2, miniAppWidth:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 760
    .local v0, miniAppHeight:I
    sget-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    if-eqz v5, :cond_0

    .line 761
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 762
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 766
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 769
    .local v1, miniAppRect:Landroid/graphics/Rect;
    return-object v1
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2659
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    .line 2662
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManger()Landroid/view/WindowManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2758
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    return v0
.end method

.method public hide()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2418
    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v3, :cond_0

    .line 2450
    :goto_0
    return-void

    .line 2421
    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2422
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2430
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 2433
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2434
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2444
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2445
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    .line 2448
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 2439
    :catch_0
    move-exception v0

    .line 2440
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public isWindowAttached()Z
    .locals 1

    .prologue
    .line 2739
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    return v0
.end method

.method public isWindowDismissed()Z
    .locals 1

    .prologue
    .line 2743
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    return v0
.end method

.method public move(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2070
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2071
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2074
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClose(I)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 2266
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    .line 2078
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2082
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v6, :cond_0

    .line 2142
    :goto_0
    return-void

    .line 2086
    :cond_0
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    if-eq v6, v7, :cond_5

    .line 2087
    sget-boolean v6, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2088
    const/4 v0, 0x0

    .line 2089
    .local v0, bResized:Z
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->loadResizeInfo()V

    .line 2090
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2091
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2092
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2093
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2094
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 2097
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v7, :cond_1

    .line 2098
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2099
    const/4 v0, 0x1

    .line 2101
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_2

    .line 2102
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2103
    const/4 v0, 0x1

    .line 2105
    :cond_2
    if-eqz v0, :cond_3

    .line 2106
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2107
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 2111
    .end local v0           #bResized:Z
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2112
    .local v1, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2115
    .local v4, miniAppRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/minimode/MiniModeService;->calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2119
    .local v5, rotatedMiniAppRect:Landroid/graphics/Rect;
    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 2121
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2122
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2123
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2125
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2127
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2128
    invoke-static {v1, v4}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v3

    .line 2129
    .local v3, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2130
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2132
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2135
    .end local v3           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v6, :cond_6

    .line 2136
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 2141
    .end local v1           #displayRect:Landroid/graphics/Rect;
    .end local v4           #miniAppRect:Landroid/graphics/Rect;
    .end local v5           #rotatedMiniAppRect:Landroid/graphics/Rect;
    :cond_5
    :goto_1
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    goto/16 :goto_0

    .line 2138
    .restart local v1       #displayRect:Landroid/graphics/Rect;
    .restart local v4       #miniAppRect:Landroid/graphics/Rect;
    .restart local v5       #rotatedMiniAppRect:Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->updatePosition(II)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 382
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 383
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 394
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    .line 395
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 396
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 397
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMainActivityComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    .line 403
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.sec.android.app.minimode.res"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    iput-object p0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 413
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 421
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_5

    .line 422
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/minimode/MainView;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    .line 423
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 425
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f02

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 427
    iget-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eqz v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x105000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 432
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 433
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 434
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 435
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 437
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    .line 440
    sget-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    if-nez v5, :cond_1

    .line 441
    sput-boolean v8, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 448
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 450
    .local v4, showStatusBar:Z
    if-eqz v4, :cond_2

    .line 451
    sput-boolean v8, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 454
    :cond_2
    const/4 v3, 0x0

    .line 455
    .local v3, hasSystemNavBar:Z
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIWindowManager:Landroid/view/IWindowManager;

    if-eqz v5, :cond_3

    .line 457
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    const/4 v3, 0x1

    .line 467
    :cond_3
    :goto_2
    sget-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    if-eqz v5, :cond_4

    .line 468
    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 472
    :cond_4
    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 473
    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 475
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 476
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    .line 477
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    .line 478
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 479
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 480
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 481
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 483
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$3;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 507
    .end local v3           #hasSystemNavBar:Z
    .end local v4           #showStatusBar:Z
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V

    .line 511
    sget-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v5, :cond_6

    .line 512
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->loadResizeInfo()V

    .line 516
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initFloatingAnimations()V

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initTelephonyEventListener()V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initAlarmEventListener()V

    .line 519
    return-void

    .line 404
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 405
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v6, "Error on get minimode res"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 415
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 416
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 460
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #hasSystemNavBar:Z
    .restart local v4       #showStatusBar:Z
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2147
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 2150
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->dismiss()V

    .line 2153
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    if-eqz v1, :cond_0

    .line 2154
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 2155
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2157
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 2158
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 2159
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2162
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    .line 2164
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_2

    .line 2174
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2182
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 2183
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2184
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 2187
    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 2189
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2190
    return-void

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2176
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2177
    .restart local v0       #e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onMaximized()Z
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x0

    return v0
.end method

.method protected onMinimized()Z
    .locals 1

    .prologue
    .line 2275
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 681
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(I)Landroid/os/Bundle;
    .locals 1
    .parameter "reason"

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2197
    iget-boolean v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    .line 2199
    :cond_0
    const/4 v7, 0x2

    .line 2262
    :goto_0
    return v7

    .line 2202
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2204
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 2206
    .local v2, lastPosition:Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 2207
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "window.pos.x"

    iget v9, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2208
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "window.pos.y"

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2210
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v8, -0x2710

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v8, -0x2710

    if-eq v7, v8, :cond_4

    .line 2212
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x33

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2217
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2219
    .local v1, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2223
    .local v3, miniAppRect:Landroid/graphics/Rect;
    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 2226
    sget-boolean v7, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_5

    .line 2227
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2229
    .local v5, overlayTitleBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2230
    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2231
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2232
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2233
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2237
    .end local v5           #overlayTitleBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    sget-boolean v7, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 2239
    if-eqz v2, :cond_6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_6

    .line 2242
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2243
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2246
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2248
    .local v4, overlayResizeHandler:Landroid/view/View;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2249
    .local v6, resizeHandlerLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0x8

    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2250
    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2251
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2252
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2257
    .end local v4           #overlayResizeHandler:Landroid/view/View;
    .end local v6           #resizeHandlerLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->show()V

    .line 2260
    .end local v1           #displayRect:Landroid/graphics/Rect;
    .end local v2           #lastPosition:Landroid/graphics/Rect;
    .end local v3           #miniAppRect:Landroid/graphics/Rect;
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2262
    const/4 v7, 0x2

    goto/16 :goto_0
.end method

.method protected onWindowFocusChanged(Z)Z
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 2270
    const/4 v0, 0x0

    return v0
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 2621
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_1

    .line 2622
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    .line 2624
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2625
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2626
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2629
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2631
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2632
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2635
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2636
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2638
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_2

    .line 2640
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x837

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2642
    :cond_2
    return-void
.end method

.method public setClosingAnimation(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1753
    return-void
.end method

.method public setContentView(IIII)V
    .locals 6
    .parameter "main"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"

    .prologue
    .line 1999
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(IIIII)V

    .line 2000
    return-void
.end method

.method public setContentView(IIIII)V
    .locals 4
    .parameter "main"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    .line 2003
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2004
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentView() : updated main id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2014
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 2017
    sget-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v1, :cond_1

    .line 2018
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 2020
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 2021
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2023
    .local v0, viewId:I
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 2024
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 2041
    .end local v0           #viewId:I
    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    .line 2042
    return-void
.end method

.method public setContentView(Landroid/view/View;II)V
    .locals 6
    .parameter "contentView"
    .parameter "close"
    .parameter "title"

    .prologue
    const/4 v4, -0x1

    .line 1888
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1889
    return-void
.end method

.method public setContentView(Landroid/view/View;III)V
    .locals 6
    .parameter "contentView"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"

    .prologue
    .line 1893
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1894
    return-void
.end method

.method public setContentView(Landroid/view/View;IIII)V
    .locals 2
    .parameter "contentView"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    .line 1897
    if-nez p1, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() : contentView is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :goto_0
    return-void

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1909
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1913
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v0, :cond_2

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 1917
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1918
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 1929
    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    goto :goto_0
.end method

.method protected setContentViewInner(IIII)V
    .locals 6
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    const/4 v5, 0x1

    .line 1933
    iput-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 1935
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1936
    .local v0, closeButton:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1937
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$22;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$22;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1947
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1960
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1962
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1963
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_2

    .line 1964
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 1966
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 1970
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 1974
    .end local v2           #viewParent:Landroid/view/ViewParent;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1975
    .local v1, launchMainButton:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1976
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$23;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$23;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1995
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1996
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2382
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v2, :cond_0

    .line 2414
    :goto_0
    return-void

    .line 2385
    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2386
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 2387
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    .line 2389
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    .line 2392
    .local v1, state:Landroid/os/Bundle;
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2393
    invoke-virtual {p0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2395
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2398
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2399
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2407
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 2409
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_3

    .line 2410
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 2411
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v5, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2413
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

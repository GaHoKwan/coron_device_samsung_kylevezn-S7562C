.class public Lcom/android/internal/widget/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/widget/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x96

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x5

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_INVALID_VALUE:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMatrixForCropping:[[I

.field private mMatrixForCroppingHorizontal:[[I

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 151
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mBootCompleted:Z

    .line 161
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 163
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 165
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    .line 168
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 173
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 174
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 176
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z

    .line 177
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 180
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    .line 183
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 191
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstMediaScan:Z

    .line 192
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsSendingBootMsg:Z

    .line 195
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    .line 197
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 198
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 199
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.sec.android.gesturepad"

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 204
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 205
    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 206
    const/16 v9, 0x500

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 207
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 208
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 211
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 212
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 213
    const/16 v9, 0x14

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 214
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_INVALID_VALUE:I

    .line 215
    const/16 v9, 0xa

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 220
    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/widget/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    .line 221
    const/4 v9, 0x2

    iput-short v9, p0, Lcom/android/internal/widget/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 224
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_NONE:I

    .line 225
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 226
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 229
    const/16 v9, 0x32

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 230
    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 231
    const/16 v9, 0x4b0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 276
    new-instance v9, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v9}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 277
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 278
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 313
    const/4 v9, 0x0

    check-cast v9, [[I

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    .line 314
    const/4 v9, 0x0

    check-cast v9, [[I

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    .line 315
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 316
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 342
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 343
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 344
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 345
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 346
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 347
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 348
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 349
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 354
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 355
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 356
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 358
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFinishSaveImg:Z

    .line 359
    const/4 v9, 0x0

    iput-short v9, p0, Lcom/android/internal/widget/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    .line 360
    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/widget/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    .line 365
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 367
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$1;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$1;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$2;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$2;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 402
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    .line 724
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$5;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$5;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 791
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$6;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$6;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 823
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$7;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$7;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 436
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 437
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 440
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 445
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 446
    const-string v9, "phone2"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 447
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 449
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 450
    .local v7, size:Landroid/graphics/Point;
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 451
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 453
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 455
    .local v8, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 462
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v10, "com.sec.spen.flashannotatesvc"

    const-string v11, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 465
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v10, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.diotek.mini_penmemo"

    const-string v12, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 468
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 469
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v10, "com.sec.android.gesturepad"

    const-string v11, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v10, 0x1400

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 473
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 475
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v0, captureFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    .end local v0           #captureFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v9, Landroid/view/GestureDetector;

    new-instance v10, Lcom/android/internal/widget/SPenGestureView$3;

    invoke-direct {v10, p0}, Lcom/android/internal/widget/SPenGestureView$3;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    invoke-direct {v9, p1, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 570
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    .line 571
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$4;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$4;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 590
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 591
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 592
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 594
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 595
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->setDisplayDegrees()Z

    .line 597
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v9, :cond_2

    .line 598
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawWidth()I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    .line 599
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawHeight()I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    .line 600
    const-string v9, "SPenGesture"

    const-string v10, "Initialized to portrait"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_2
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 608
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 610
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    new-array v9, v9, [[I

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    .line 611
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v4, v9, :cond_4

    .line 612
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    new-array v10, v10, [I

    aput-object v10, v9, v4

    .line 613
    const/4 v5, 0x0

    .local v5, j:I
    :goto_4
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v5, v9, :cond_3

    .line 614
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    aget-object v9, v9, v4

    const/4 v10, -0x1

    aput v10, v9, v5

    .line 613
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 455
    .end local v4           #i:I
    .end local v5           #j:I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "SPenGesture"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    .line 602
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawHeight()I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    .line 603
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawWidth()I

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    .line 604
    const-string v9, "SPenGesture"

    const-string v10, "Initialized to Landscape"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 611
    .restart local v4       #i:I
    .restart local v5       #j:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 618
    .end local v5           #j:I
    :cond_4
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    new-array v9, v9, [[I

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    .line 619
    const/4 v4, 0x0

    :goto_5
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v4, v9, :cond_6

    .line 620
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    new-array v10, v10, [I

    aput-object v10, v9, v4

    .line 621
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_6
    iget v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v5, v9, :cond_5

    .line 622
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    aget-object v9, v9, v4

    const/4 v10, -0x1

    aput v10, v9, v5

    .line 621
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 619
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 626
    .end local v5           #j:I
    :cond_6
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 627
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 628
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 629
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstPointer:Z

    .line 630
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 631
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 632
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 633
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 634
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 635
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 636
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 637
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 638
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 639
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 640
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 641
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 642
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 643
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 644
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 645
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 646
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 647
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    .line 648
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    .line 649
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    .line 650
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    .line 651
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    .line 652
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    .line 653
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    .line 654
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    .line 655
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 656
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 657
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 658
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 659
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 660
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 661
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 662
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 663
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 664
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 665
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 666
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 667
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 669
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 670
    .local v1, dashPath:Landroid/graphics/DashPathEffect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 671
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 672
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 673
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 674
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4000

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 675
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 676
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 685
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 686
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 687
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 688
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 689
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4040

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 690
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 699
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 700
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 701
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 703
    new-instance v6, Lcom/android/internal/widget/SPenGestureView$PointerState;

    invoke-direct {v6}, Lcom/android/internal/widget/SPenGestureView$PointerState;-><init>()V

    .line 704
    .local v6, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    .line 708
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 710
    new-instance v9, Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    .line 713
    iget-object v9, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_quick_note"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 715
    return-void

    .line 713
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 669
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2141
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2142
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2144
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2145
    .local v2, dims:[F
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2146
    .local v1, degrees:F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_3

    move v3, v5

    .line 2148
    .local v3, requiresRotation:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 2149
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2150
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2151
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2152
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2153
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2156
    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2159
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 2160
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2164
    :cond_1
    if-eqz v3, :cond_2

    .line 2165
    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2167
    .local v4, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2168
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2169
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2170
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2171
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2172
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2173
    iput-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2175
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v4           #ss:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3           #requiresRotation:Z
    :cond_3
    move v3, v6

    .line 2146
    goto/16 :goto_0
.end method

.method private SaveImage()Z
    .locals 15

    .prologue
    .line 2026
    const-string v11, "SPenGesture"

    const-string v12, "SaveImage"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2029
    .local v5, mImageTime:J
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2030
    .local v2, imageDate:Ljava/lang/String;
    sget-object v11, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, imageDir:Ljava/lang/String;
    const-string v11, "Screenshot_%s.png"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2032
    .local v4, mImageFileName:Ljava/lang/String;
    const-string v11, "%s/%s/%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string v14, "Screenshots"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 2034
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2035
    .local v9, values:Landroid/content/ContentValues;
    const-string v11, "_data"

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v11, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2037
    const-string v11, "date_added"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2038
    const-string v11, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2039
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 2042
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 2043
    .local v7, outStream:Ljava/io/OutputStream;
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2044
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2045
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    .end local v7           #outStream:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2053
    const-string v11, "_size"

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2054
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2057
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2058
    .local v8, uriString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2059
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2060
    const-string v11, "SPenGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendBroadcast(ACTION_MEDIA_SCANNER_SCAN_FILE) uri ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2063
    const-string v11, "SPenGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendBroadcast(com.android.MTP.OBJECT_PROP_CHANGED), uriString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v11, "%s/%s/tmp%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    const-string v14, "Screenshots"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 2068
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2069
    .local v10, valuesForAnimation:Landroid/content/ContentValues;
    const-string v11, "_data"

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 2073
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 2074
    .restart local v7       #outStream:Ljava/io/OutputStream;
    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2076
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2077
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2082
    .end local v7           #outStream:Ljava/io/OutputStream;
    :goto_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/widget/SPenGestureView;->mFinishSaveImg:Z

    .line 2083
    const/4 v11, 0x1

    return v11

    .line 2047
    .end local v0           #actionIntent:Landroid/content/Intent;
    .end local v8           #uriString:Ljava/lang/String;
    .end local v10           #valuesForAnimation:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 2048
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2079
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #actionIntent:Landroid/content/Intent;
    .restart local v8       #uriString:Ljava/lang/String;
    .restart local v10       #valuesForAnimation:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 2080
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/SPenGestureView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/widget/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/widget/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosX:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/widget/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5402(Lcom/android/internal/widget/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5500(Lcom/android/internal/widget/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5502(Lcom/android/internal/widget/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SPenGestureView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/internal/widget/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/internal/widget/SPenGestureView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/widget/SPenGestureView;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$7202(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$7302(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$7402(Lcom/android/internal/widget/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$7500(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/internal/widget/SPenGestureView;)Lcom/android/internal/widget/SPenGestureView$SPenVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/internal/widget/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/internal/widget/SPenGestureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/internal/widget/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/widget/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .parameter "resultCoordsX"
    .parameter "resultCoordsY"
    .parameter "markNumber"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1208
    const/4 v2, -0x1

    .line 1211
    .local v2, markNumberFromMatrix:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 1212
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    .line 1214
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v3, :cond_7

    .line 1215
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 1223
    :cond_0
    :goto_1
    if-eq v2, v5, :cond_9

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_9

    .line 1225
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1226
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1230
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_8

    .line 1231
    :cond_1
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1232
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1233
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1234
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1240
    :goto_2
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1280
    :cond_2
    :goto_3
    const/16 v0, 0xc

    .line 1281
    .local v0, circleRadius:I
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    .line 1283
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1286
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    .line 1287
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    .line 1289
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1291
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_f

    .line 1292
    :cond_5
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1293
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1299
    :goto_4
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1304
    :cond_6
    return-void

    .line 1217
    .end local v0           #circleRadius:I
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    add-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_1

    .line 1237
    :cond_8
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1238
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_2

    .line 1247
    :cond_9
    sub-int v3, p2, v1

    if-ltz v3, :cond_a

    if-ltz p1, :cond_a

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_a

    .line 1249
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v3, :cond_c

    .line 1250
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    .line 1255
    :cond_a
    :goto_5
    if-eq v2, v5, :cond_e

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_e

    .line 1257
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1258
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1262
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_b

    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    .line 1263
    :cond_b
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1264
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1265
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1266
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1272
    :goto_6
    iget v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_3

    .line 1252
    :cond_c
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    sub-int v4, p2, v1

    aget-object v3, v3, v4

    aget v2, v3, p1

    goto :goto_5

    .line 1269
    :cond_d
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1270
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_6

    .line 1211
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1296
    .restart local v0       #circleRadius:I
    :cond_f
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1297
    iput p3, p0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4
.end method

.method private checkDirectionGesture()Z
    .locals 31

    .prologue
    .line 2195
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const/4 v5, 0x0

    .line 2197
    .local v5, distance:I
    const/16 v21, 0x0

    .line 2198
    .local v21, vertexX:I
    const/16 v22, 0x0

    .line 2199
    .local v22, vertexY:I
    const/4 v6, 0x0

    .line 2200
    .local v6, distanceMax:I
    const/4 v7, 0x0

    .line 2201
    .local v7, distanceStartAndEnd:I
    const/4 v12, 0x0

    .line 2202
    .local v12, minX:I
    const/4 v13, 0x0

    .line 2203
    .local v13, minY:I
    const/4 v10, 0x0

    .line 2204
    .local v10, maxX:I
    const/4 v11, 0x0

    .line 2205
    .local v11, maxY:I
    const/16 v16, 0x0

    .line 2206
    .local v16, result1:F
    const/16 v17, 0x0

    .line 2207
    .local v17, result2:F
    const/16 v18, 0x0

    .line 2208
    .local v18, slope:F
    const/4 v9, 0x0

    .line 2211
    .local v9, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2212
    .local v3, Xdistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2216
    .local v4, Ydistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 2219
    :cond_0
    const/16 v18, 0x0

    .line 2224
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2229
    .local v19, totalPointerCount:I
    const/4 v14, 0x0

    .local v14, p:I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 2231
    .local v15, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v20

    .line 2232
    .local v20, traceCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2233
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2234
    .local v23, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3400(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2237
    .local v24, y:F
    mul-float v25, v18, v23

    const/high16 v26, -0x4080

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2238
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2240
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2242
    if-ge v6, v5, :cond_1

    .line 2243
    move v6, v5

    .line 2244
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2245
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2232
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2222
    .end local v8           #i:I
    .end local v14           #p:I
    .end local v15           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v19           #totalPointerCount:I
    .end local v20           #traceCount:I
    .end local v23           #x:F
    .end local v24           #y:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    .line 2229
    .restart local v8       #i:I
    .restart local v14       #p:I
    .restart local v15       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .restart local v19       #totalPointerCount:I
    .restart local v20       #traceCount:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2252
    .end local v8           #i:I
    .end local v15           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v20           #traceCount:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    .line 2253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2260
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    .line 2261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2269
    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    .line 2271
    const/high16 v25, 0x3f80

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x4080

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    .line 2272
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2336
    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    .line 2257
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    .line 2265
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    .line 2276
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    .line 2279
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 2280
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2281
    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    .line 2284
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2287
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    .line 2288
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2289
    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    .line 2298
    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    .line 2302
    move/from16 v0, v22

    if-le v13, v0, :cond_e

    .line 2305
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2306
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2307
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 2310
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2313
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    .line 2314
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2315
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    .prologue
    .line 2344
    const/4 v6, 0x0

    .line 2345
    .local v6, distanceY:I
    const/4 v5, 0x0

    .line 2346
    .local v5, distanceX:I
    const/4 v15, 0x0

    .line 2347
    .local v15, vertexX:I
    const/16 v16, 0x0

    .line 2348
    .local v16, vertexY:I
    const/4 v3, 0x0

    .line 2349
    .local v3, distanceMax:I
    const/4 v4, 0x0

    .line 2350
    .local v4, distanceStartAndEnd:I
    const/4 v10, 0x0

    .line 2351
    .local v10, minX:I
    const/4 v11, 0x0

    .line 2352
    .local v11, minY:I
    const/4 v8, 0x0

    .line 2353
    .local v8, maxX:I
    const/4 v9, 0x0

    .line 2354
    .local v9, maxY:I
    const/4 v12, 0x0

    .line 2355
    .local v12, result1:F
    const/4 v13, 0x0

    .line 2356
    .local v13, result2:F
    const/4 v14, 0x0

    .line 2357
    .local v14, slope:F
    const/4 v7, 0x0

    .line 2365
    .local v7, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2372
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    .line 2373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 2376
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2378
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2383
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 2181
    packed-switch p1, :pswitch_data_0

    .line 2189
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2183
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 2185
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 2187
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 2181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 899
    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 900
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 901
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 903
    .local v2, topActivity:Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 958
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/SPenGestureView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/SPenGestureView$8;-><init>(Lcom/android/internal/widget/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 975
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 976
    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    .prologue
    .line 2089
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2092
    .local v7, extStoragePath:Ljava/io/File;
    if-eqz v7, :cond_1

    .line 2095
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 2103
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 2104
    .local v9, totalBlocks:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 2108
    .local v0, availableBlocks:J
    mul-long v11, v9, v4

    .line 2109
    .local v11, totalSpace:J
    mul-long v2, v0, v4

    .line 2117
    .local v2, availableSpace:J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 2119
    const v13, 0x10401a4

    invoke-direct {p0, v13}, Lcom/android/internal/widget/SPenGestureView;->showToast(I)V

    .line 2120
    const/4 v13, 0x0

    .line 2126
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :goto_0
    return v13

    .line 2096
    :catch_0
    move-exception v6

    .line 2099
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_0

    .line 2122
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #availableBlocks:J
    .restart local v2       #availableSpace:J
    .restart local v4       #blockSize:J
    .restart local v8       #stat:Landroid/os/StatFs;
    .restart local v9       #totalBlocks:J
    .restart local v11       #totalSpace:J
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 2126
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2494
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2496
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2501
    :goto_0
    return v1

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2501
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPossibleCapture()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 865
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v4, :cond_0

    .line 866
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 870
    :cond_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 871
    .local v1, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_1

    .line 872
    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 873
    const-string v3, "SPenGesture"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return v2

    .line 879
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mScreenCaptureOn:Z

    if-eq v4, v3, :cond_2

    .line 880
    const-string v3, "SPenGesture"

    const-string v4, "flashannotate couldn\'t by MDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_3

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SPenGesture"

    const-string v4, "StatusBarService RemoteException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 890
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    move v2, v3

    .line 893
    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2485
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2490
    :goto_0
    return v1

    .line 2486
    :catch_0
    move-exception v0

    .line 2487
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2490
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 910
    .local v0, topComponentName:Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, findList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 918
    .local v1, topComponentName:Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 921
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    const/4 v2, 0x1

    .line 924
    :goto_1
    return v2

    .line 920
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .parameter "oldCoordsX"
    .parameter "oldCoordsY"
    .parameter "newCoordsX"
    .parameter "newCoordsY"
    .parameter "markNumber"

    .prologue
    .line 1050
    const/4 v8, 0x0

    .line 1051
    .local v8, startCoordsX:F
    const/4 v9, 0x0

    .line 1052
    .local v9, startCoordsY:F
    const/4 v1, 0x0

    .line 1053
    .local v1, endCoordsX:F
    const/4 v2, 0x0

    .line 1054
    .local v2, endCoordsY:F
    const/4 v5, 0x0

    .line 1055
    .local v5, resultCoordsX:F
    const/4 v6, 0x0

    .line 1056
    .local v6, resultCoordsY:F
    const/4 v7, 0x0

    .line 1057
    .local v7, slope:F
    const/4 v4, 0x0

    .line 1059
    .local v4, interceptY:F
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1060
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 1061
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 1067
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1068
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1071
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1073
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_17

    .line 1075
    :cond_2
    move v8, p1

    .line 1076
    move/from16 v9, p2

    .line 1077
    move/from16 v1, p3

    .line 1078
    move/from16 v2, p4

    .line 1080
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1081
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1086
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1088
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_f

    .line 1089
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_17

    .line 1090
    move v5, v8

    .line 1091
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1093
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureView;->checkClosedCurve(III)V

    .line 1108
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1109
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1112
    :cond_3
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 1113
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_7

    .line 1114
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    .line 1116
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_6

    .line 1117
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 1113
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1084
    .end local v3           #i:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1119
    .restart local v3       #i:I
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_3

    .line 1123
    .end local v3           #i:I
    :cond_7
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1124
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 1125
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_8

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_8

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_8

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_8

    .line 1127
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_9

    .line 1128
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    .line 1124
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1130
    :cond_9
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, -0x1

    aput p5, v10, v11

    goto :goto_5

    .line 1135
    .end local v3           #i:I
    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1136
    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    .line 1138
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_c

    .line 1139
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 1089
    :cond_b
    :goto_6
    const/high16 v10, 0x3f80

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 1141
    :cond_c
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto :goto_6

    .line 1192
    :cond_d
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1193
    float-to-int v10, v6

    if-ltz v10, :cond_e

    float-to-int v10, v5

    if-ltz v10, :cond_e

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    .line 1195
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_16

    .line 1196
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    .line 1146
    :cond_e
    :goto_7
    const/high16 v10, 0x3f80

    sub-float/2addr v8, v10

    :cond_f
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_17

    .line 1147
    move v5, v8

    .line 1148
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1150
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/widget/SPenGestureView;->checkClosedCurve(III)V

    .line 1165
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    .line 1166
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 1169
    :cond_10
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    .line 1170
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_8
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_13

    .line 1171
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_11

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_11

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_11

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_11

    .line 1173
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_12

    .line 1174
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 1170
    :cond_11
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1176
    :cond_12
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_9

    .line 1180
    .end local v3           #i:I
    :cond_13
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    .line 1181
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_a
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_d

    .line 1182
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_14

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_14

    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_14

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_14

    .line 1184
    iget v10, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v10, :cond_15

    .line 1185
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    .line 1181
    :cond_14
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1187
    :cond_15
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    iget v11, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    aget-object v10, v10, v11

    float-to-int v11, v5

    add-int/lit8 v11, v11, 0x1

    aput p5, v10, v11

    goto :goto_b

    .line 1198
    .end local v3           #i:I
    :cond_16
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    float-to-int v11, v6

    aget-object v10, v10, v11

    float-to-int v11, v5

    aput p5, v10, v11

    goto/16 :goto_7

    .line 1203
    :cond_17
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2454
    iget-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2455
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2461
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2464
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2467
    .local v3, runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2469
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2477
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2473
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2416
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2417
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2419
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2420
    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mVerticalMovingSlop:I

    .line 2425
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v0

    .line 2427
    .local v0, degress:F
    const-string v1, "SPenGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentDisplayWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentDisplayHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Rot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 2431
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v1, v2, :cond_3

    .line 2432
    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v2

    .line 2446
    :goto_2
    return v1

    .line 2420
    .end local v0           #degress:F
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 2422
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/internal/widget/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_1

    .line 2435
    .restart local v0       #degress:F
    :cond_3
    iput v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v3

    .line 2436
    goto :goto_2

    .line 2441
    :cond_4
    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v1, :cond_5

    .line 2442
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v2

    .line 2443
    goto :goto_2

    .line 2445
    :cond_5
    iput v2, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateDegress:I

    move v1, v3

    .line 2446
    goto :goto_2
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2134
    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v6, 0x0

    .line 1855
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1857
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1858
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1859
    .local v11, tempDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1860
    .local v10, tempBitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1861
    .local v9, rectForAnimation:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1862
    .local v7, bitmapForAnimation:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1863
    .local v8, canvasForAnimation:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1865
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1866
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1868
    iput-boolean v6, p0, Lcom/android/internal/widget/SPenGestureView;->mFinishSaveImg:Z

    .line 1870
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1871
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1872
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1873
    new-instance v1, Lcom/android/internal/widget/SPenGestureView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SPenGestureView$10;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1892
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1893
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mSPenVibrator:Lcom/android/internal/widget/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/widget/SPenGestureView$SPenVibrator;->playVibrator()V

    .line 1894
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 6
    .parameter "key"
    .parameter "isDownGesture"

    .prologue
    const/high16 v5, 0x4110

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 2508
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2512
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    .line 2513
    const-string v0, "SPenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2517
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2519
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2520
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2521
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2522
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2523
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2525
    if-eqz p2, :cond_3

    .line 2526
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2527
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4204

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2529
    packed-switch p1, :pswitch_data_0

    .line 2544
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2545
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/SPenGestureView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/widget/SPenGestureView$11;-><init>(Lcom/android/internal/widget/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2638
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2640
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2531
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2534
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2540
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2541
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2542
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 2529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 27
    .parameter "event"
    .parameter "isKeyguardOn"
    .parameter "isLiveGlanceView"

    .prologue
    .line 1311
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    .line 1312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2f

    .line 1313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1318
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1319
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1321
    .local v22, totalPointerSize:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9

    if-eq v8, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1a

    .line 1324
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1327
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1329
    monitor-exit v26

    .line 1850
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :cond_0
    :goto_0
    return-void

    .line 1332
    .restart local v8       #action:I
    .restart local v22       #totalPointerSize:I
    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 1337
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->updateRotation()V

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1340
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_3

    .line 1342
    monitor-exit v26

    goto :goto_0

    .line 1811
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1345
    .restart local v8       #action:I
    .restart local v22       #totalPointerSize:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_4

    .line 1346
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1348
    monitor-exit v26

    goto :goto_0

    .line 1351
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v16, v2, 0x8

    .line 1353
    .local v16, index:I
    if-nez v8, :cond_6

    .line 1354
    const/16 v19, 0x0

    .local v19, p:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1356
    .local v20, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->clearTrace()V

    .line 1357
    const/4 v2, 0x0

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2902(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1354
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1359
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1365
    .end local v19           #p:I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_7

    .line 1367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1370
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1371
    .local v15, id:I
    :goto_2
    move/from16 v0, v22

    if-gt v0, v15, :cond_8

    .line 1372
    new-instance v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;-><init>()V

    .line 1373
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v22, v22, 0x1

    .line 1375
    goto :goto_2

    .line 1377
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/widget/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1379
    :cond_9
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/widget/SPenGestureView;->mActivePointerId:I

    .line 1382
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1383
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2902(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1384
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 1388
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1392
    .end local v15           #id:I
    .end local v16           #index:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_c

    .line 1394
    monitor-exit v26

    goto/16 :goto_0

    .line 1397
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_d

    .line 1398
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1400
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1401
    monitor-exit v26

    goto/16 :goto_0

    .line 1404
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1409
    .local v11, eventPointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    .line 1411
    .local v13, histroySize:I
    const/4 v12, 0x0

    .local v12, historyPos:I
    :goto_3
    if-ge v12, v13, :cond_14

    .line 1412
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v11, :cond_13

    .line 1413
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1414
    .restart local v15       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    move-object/from16 v20, v2

    .line 1415
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :goto_5
    if-eqz v20, :cond_12

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/widget/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1416
    .local v9, coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1418
    if-eqz v20, :cond_10

    .line 1419
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    .line 1421
    :cond_e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 1422
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 1423
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1424
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1425
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1426
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1432
    :cond_f
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1433
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1412
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1414
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_11
    const/16 v20, 0x0

    goto :goto_5

    .line 1415
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 1411
    .end local v15           #id:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1437
    .end local v14           #i:I
    :cond_14
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_7
    if-ge v14, v11, :cond_1a

    .line 1438
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1439
    .restart local v15       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SPenGestureView$PointerState;

    move-object/from16 v20, v2

    .line 1440
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :goto_8
    if-eqz v20, :cond_19

    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/widget/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1441
    .restart local v9       #coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1443
    if-eqz v20, :cond_17

    .line 1444
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1445
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 1446
    :cond_15
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 1447
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 1448
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1449
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1450
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1451
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1456
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1458
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1459
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1460
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3102(Lcom/android/internal/widget/SPenGestureView$PointerState;I)I

    .line 1437
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 1439
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1440
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1465
    .end local v11           #eventPointerCount:I
    .end local v12           #historyPos:I
    .end local v13           #histroySize:I
    .end local v14           #i:I
    .end local v15           #id:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1b

    .line 1468
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1470
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1474
    :cond_1b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_26

    .line 1477
    :cond_1c
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1481
    .local v21, totalPointerCount:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 1482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 1484
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_2c

    .line 1485
    const/16 v19, 0x0

    .restart local v19       #p:I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1f

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1487
    .restart local v20       #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v23

    .line 1488
    .local v23, traceCount:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_b
    move/from16 v0, v23

    if-ge v14, v0, :cond_1e

    .line 1489
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v14

    .line 1490
    .local v24, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3400(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v25, v2, v14

    .line 1492
    .local v25, y:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1d

    .line 1493
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1494
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 1495
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 1488
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1498
    :cond_1d
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 1499
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 1500
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1501
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 1502
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1503
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    .line 1485
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_1e
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1508
    .end local v14           #i:I
    .end local v20           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v23           #traceCount:I
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 1510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1518
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_21

    .line 1520
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1521
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1522
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1523
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1524
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1525
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1526
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1527
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1528
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1529
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1530
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1532
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1536
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_24

    .line 1538
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->checkDirectionGesture()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/SPenGestureView;->getDegreesForRotation(I)F

    move-result v10

    .line 1540
    .local v10, degress:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsPhone:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_22

    const/high16 v2, 0x4334

    cmpl-float v2, v10, v2

    if-nez v2, :cond_23

    .line 1541
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->checkDownGesture()V

    .line 1545
    .end local v10           #degress:F
    :cond_23
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    .line 1552
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1553
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1554
    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1556
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1557
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1558
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1559
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1560
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1561
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1562
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1563
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1564
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1565
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1575
    .end local v19           #p:I
    :cond_25
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1578
    .end local v21           #totalPointerCount:I
    :cond_26
    const/4 v2, 0x3

    if-ne v8, v2, :cond_27

    .line 1579
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1583
    :cond_27
    const/16 v2, 0xa

    if-ne v8, v2, :cond_28

    .line 1584
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1588
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1590
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_29

    .line 1591
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1594
    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1596
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->resetVariable(I)V

    .line 1597
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1598
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1599
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1600
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1601
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1602
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1603
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1604
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1605
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1606
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1607
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1608
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1609
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1809
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z

    .line 1811
    :cond_29
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1814
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1834
    .end local v8           #action:I
    .end local v22           #totalPointerSize:I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    .line 1835
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1836
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 1843
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1512
    .restart local v8       #action:I
    .restart local v19       #p:I
    .restart local v21       #totalPointerCount:I
    .restart local v22       #totalPointerSize:I
    :cond_2b
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1515
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    .line 1572
    .end local v19           #p:I
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    .line 1615
    .end local v21           #totalPointerCount:I
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SPenGestureView;->isAvailableCapacity()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1617
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z

    .line 1619
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/widget/SPenGestureView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/widget/SPenGestureView$9;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f

    .line 1791
    :cond_2e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1792
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1793
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1794
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1795
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1796
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1797
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1798
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1799
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F

    .line 1800
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F

    .line 1801
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z

    .line 1802
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1803
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    .line 1818
    :pswitch_2
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    .local v17, intentForVideoPause:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1824
    .end local v17           #intentForVideoPause:Landroid/content/Intent;
    :pswitch_3
    new-instance v18, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v18, intentForVideoPlay:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1830
    .end local v8           #action:I
    .end local v18           #intentForVideoPlay:Landroid/content/Intent;
    .end local v22           #totalPointerSize:I
    :cond_2f
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1831
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1836
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2649
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21
    .parameter "intersectionPointPrev"
    .parameter "intersectionPointLast"
    .parameter "isFirstCurve"

    .prologue
    .line 1899
    const/4 v4, 0x0

    .line 1900
    .local v4, existOldCoords:Z
    const/4 v9, 0x0

    .line 1901
    .local v9, oldCoordsX:F
    const/4 v10, 0x0

    .line 1902
    .local v10, oldCoordsY:F
    const/4 v6, 0x0

    .line 1903
    .local v6, newCoordsX:F
    const/4 v7, 0x0

    .line 1904
    .local v7, newCoordsY:F
    const/4 v8, 0x0

    .line 1909
    .local v8, numberOfAddTrace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1911
    .local v13, totalPointerCount:I
    const/4 v11, 0x0

    .local v11, p:I
    :goto_0
    if-ge v11, v13, :cond_5

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1913
    .local v12, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v14

    .line 1914
    .local v14, traceCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 1915
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1916
    .local v15, x:F
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3400(Lcom/android/internal/widget/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1918
    .local v16, y:F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    .line 1919
    if-nez v4, :cond_2

    .line 1920
    move v9, v15

    .line 1921
    move/from16 v10, v16

    .line 1922
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1925
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1926
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1934
    :goto_2
    const/4 v4, 0x1

    .line 1952
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1914
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1929
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1931
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1932
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 1937
    :cond_2
    move v6, v15

    .line 1938
    move/from16 v7, v16

    .line 1939
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1948
    :goto_4
    move v9, v15

    .line 1949
    move/from16 v10, v16

    goto :goto_3

    .line 1943
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 1911
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1956
    .end local v5           #i:I
    .end local v12           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    .end local v14           #traceCount:I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1957
    .local v3, boundsOfPath:Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1965
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 1967
    const/16 v17, 0x0

    .line 1970
    :goto_6
    return v17

    .line 1961
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 1970
    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 931
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 939
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 943
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 944
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 946
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 947
    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, -0x4080

    .line 1034
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 1035
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x4100

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1042
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 1043
    iget v0, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x4080

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1045
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 983
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/SPenGestureView;->mHeaderBottom:I

    .line 985
    return-void
.end method

.method public resetVariable(I)V
    .locals 9
    .parameter "totalPointerSize"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x4080

    const/4 v5, 0x0

    .line 1978
    const/4 v2, 0x0

    .local v2, p:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1979
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 1980
    .local v3, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    invoke-virtual {v3}, Lcom/android/internal/widget/SPenGestureView$PointerState;->clearTrace()V

    .line 1981
    #setter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v3, v5}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$2902(Lcom/android/internal/widget/SPenGestureView$PointerState;Z)Z

    .line 1978
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1984
    .end local v3           #ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurDown:Z

    .line 1985
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mCurNumPointers:I

    .line 1986
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mMaxNumPointers:I

    .line 1987
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mExistOldCoords:Z

    .line 1988
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mIsLastPointer:Z

    .line 1989
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mIsFirstPointer:Z

    .line 1990
    iput-boolean v5, p0, Lcom/android/internal/widget/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1991
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsX:F

    .line 1992
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mOldCoordsY:F

    .line 1993
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsX:F

    .line 1994
    iput v8, p0, Lcom/android/internal/widget/SPenGestureView;->mNewCoordsY:F

    .line 1996
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointX:F

    .line 1997
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mEndPointY:F

    .line 1998
    iput v5, p0, Lcom/android/internal/widget/SPenGestureView;->mNumberOfAddTrace:I

    .line 1999
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointX:I

    .line 2000
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mFirstStartPointY:I

    .line 2001
    iput v7, p0, Lcom/android/internal/widget/SPenGestureView;->mPrevCoordY:I

    .line 2003
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 2005
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 2006
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v0, v4, :cond_2

    .line 2007
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v1, v4, :cond_1

    .line 2008
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I

    aget-object v4, v4, v0

    aput v7, v4, v1

    .line 2007
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2006
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2011
    .end local v1           #j:I
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I

    if-ge v0, v4, :cond_4

    .line 2012
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    iget v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I

    if-ge v1, v4, :cond_3

    .line 2013
    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I

    aget-object v4, v4, v0

    aput v7, v4, v1

    .line 2012
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2011
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2018
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_4
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointX:F

    .line 2019
    iput v6, p0, Lcom/android/internal/widget/SPenGestureView;->mStartPointY:F

    .line 2020
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 787
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "newFocus"

    .prologue
    .line 719
    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 721
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 406
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .parameter "isInvisible"

    .prologue
    .line 2655
    iget-boolean v0, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2656
    iput-boolean p1, p0, Lcom/android/internal/widget/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2658
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2393
    invoke-direct {p0}, Lcom/android/internal/widget/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2395
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SPenGestureView$PointerState;

    .line 2396
    .local v0, ps:Lcom/android/internal/widget/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/widget/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/widget/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2397
    if-ne v1, v4, :cond_0

    .line 2398
    iput-boolean v4, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2410
    :goto_0
    return-void

    .line 2402
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    .line 2407
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/widget/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method

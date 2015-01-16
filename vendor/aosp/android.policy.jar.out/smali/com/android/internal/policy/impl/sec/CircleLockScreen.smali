.class public Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mMissedMsgList:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 26
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 410
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 76
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 111
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 112
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 113
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 119
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 389
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 390
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 404
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 405
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 406
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 412
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 413
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 414
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 415
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 416
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 428
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 429
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_11

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 438
    .local v11, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 440
    .local v25, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_12

    .line 441
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v11           #drivingMode:I
    .end local v25           #unlockDrivingMode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 453
    .local v13, exploreByTouchMode:I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_13

    .line 454
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v13           #exploreByTouchMode:I
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusable(Z)V

    .line 462
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 463
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setDescendantFocusability(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usm_setting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/16 v22, 0x1

    .line 469
    .local v22, isUsm:Z
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 470
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    .line 472
    const v3, 0x109005e

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 482
    :goto_4
    const v3, 0x1020306

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/16 v17, 0x0

    .line 486
    .local v17, isEasyUxOn:Z
    :goto_5
    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v17, 0x1

    .line 488
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    .line 490
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    if-nez v17, :cond_4

    .line 491
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    .line 495
    :cond_4
    if-eqz v22, :cond_5

    .line 496
    const v3, 0x102030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 500
    :cond_5
    const v3, 0x102030b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 504
    const v3, 0x102030c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    const v3, 0x1020309

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 508
    const v3, 0x102030a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 510
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 516
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_8

    .line 518
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 519
    .local v16, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_7

    .line 520
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v16           #info:Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_a
    if-eqz v17, :cond_8

    .line 530
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 534
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 535
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 539
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_1d

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :goto_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v18

    .line 551
    .local v18, isLiveWallpaper:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 552
    .local v23, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    const/16 v20, 0x1

    .line 553
    .local v20, isRippleEffect:Z
    :goto_e
    if-nez v18, :cond_20

    if-eqz v23, :cond_20

    if-eqz v20, :cond_20

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 557
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 630
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 641
    new-instance v3, Lcom/android/internal/policy/impl/sec/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    .line 644
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 645
    new-instance v3, Lcom/android/internal/policy/impl/sec/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    .line 650
    :goto_10
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v19

    .line 651
    .local v19, isNewMissedWidgetIsUsed:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMidDevice()Z

    move-result v3

    if-nez v3, :cond_22

    .line 653
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 663
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    const/16 v21, 0x1

    .line 664
    .local v21, isTickerOn:Z
    :goto_12
    if-eqz v21, :cond_26

    if-nez v17, :cond_26

    if-nez v22, :cond_26

    .line 665
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_25

    .line 666
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    .line 676
    :goto_13
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    .line 683
    const v3, 0x1020307

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 691
    const v3, 0x102030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_9

    .line 695
    const v3, 0x1020308

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 704
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v3, :cond_a

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 708
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_27

    .line 709
    new-instance v24, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 711
    .local v24, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 717
    .end local v24           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 718
    if-eqz v19, :cond_28

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 724
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 743
    :cond_c
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 745
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 747
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_e

    .line 748
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_e

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 757
    .local v8, mChecked:I
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_2d

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2c

    const/4 v14, 0x1

    .line 760
    .local v14, flag:Z
    :goto_18
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutApplied()Z

    move-result v3

    if-nez v3, :cond_d

    .line 761
    const/16 v3, 0x65

    if-ge v8, v3, :cond_2f

    const/4 v14, 0x1

    .line 764
    :cond_d
    :goto_19
    if-eqz v14, :cond_e

    if-nez v22, :cond_e

    .line 767
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    .line 783
    .local v7, helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_30

    .line 784
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 790
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 795
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v14           #flag:Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_f

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 799
    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 800
    const v3, 0x102030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 806
    :cond_10
    :goto_1b
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 807
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 810
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMissedEventCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 820
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 822
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    return-void

    .line 432
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v17           #isEasyUxOn:Z
    .end local v18           #isLiveWallpaper:Z
    .end local v19           #isNewMissedWidgetIsUsed:Z
    .end local v20           #isRippleEffect:Z
    .end local v21           #isTickerOn:Z
    .end local v22           #isUsm:Z
    .end local v23           #isWaterRippleConfig:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    .restart local v11       #drivingMode:I
    .restart local v25       #unlockDrivingMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 457
    .end local v11           #drivingMode:I
    .end local v25           #unlockDrivingMode:I
    .restart local v13       #exploreByTouchMode:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 466
    .end local v13           #exploreByTouchMode:I
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 475
    .restart local v15       #inflater:Landroid/view/LayoutInflater;
    .restart local v22       #isUsm:Z
    :cond_15
    const v3, 0x109005f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_4

    .line 485
    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 486
    .restart local v17       #isEasyUxOn:Z
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 488
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 489
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 515
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 523
    :catch_0
    move-exception v12

    .line 524
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 537
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_b

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1c

    .line 542
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 545
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 552
    .restart local v18       #isLiveWallpaper:Z
    .restart local v23       #isWaterRippleConfig:Z
    :cond_1f
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 553
    .restart local v20       #isRippleEffect:Z
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 647
    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    goto/16 :goto_10

    .line 655
    .restart local v19       #isNewMissedWidgetIsUsed:Z
    :cond_22
    if-eqz v19, :cond_23

    .line 656
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v6, p5

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 658
    :cond_23
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 663
    :cond_24
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 668
    .restart local v21       #isTickerOn:Z
    :cond_25
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    goto/16 :goto_13

    .line 672
    :cond_26
    const v3, 0x102030e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_13

    .line 713
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_14

    .line 730
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_29

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 735
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_15

    .line 743
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 755
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #mChecked:I
    goto/16 :goto_17

    .line 758
    :cond_2c
    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_2d
    const/16 v3, 0x6f

    if-ge v8, v3, :cond_2e

    const/4 v14, 0x1

    goto/16 :goto_18

    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_18

    .line 761
    .restart local v14       #flag:Z
    :cond_2f
    const/4 v14, 0x0

    goto/16 :goto_19

    .line 787
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_30
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    goto/16 :goto_1a

    .line 801
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v14           #flag:Z
    :cond_31
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutDisable()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 802
    const v3, 0x102030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1b
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 968
    :goto_0
    return-void

    .line 963
    :cond_0
    if-eqz p1, :cond_1

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 4

    .prologue
    .line 914
    const/4 v1, 0x0

    .line 915
    .local v1, unlockWidget:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v2, :cond_4

    .line 917
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSPenTabletDevice()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v2, :cond_3

    .line 918
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIsConfigurationChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 919
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getRippleUnlockView()Landroid/view/View;

    move-result-object v0

    .line 921
    .local v0, rippleUnlockView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    if-nez v2, :cond_1

    .line 922
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v1           #unlockWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 931
    .end local v0           #rippleUnlockView:Landroid/view/View;
    .restart local v1       #unlockWidget:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setRippleUnlockView(Landroid/view/View;)V

    .line 939
    :goto_1
    return-object v1

    .line 924
    .restart local v0       #rippleUnlockView:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v3, "Assign previous unlock view"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move-object v1, v0

    goto :goto_0

    .line 928
    .end local v0           #rippleUnlockView:Landroid/view/View;
    :cond_2
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v1           #unlockWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockWidget:Landroid/view/View;
    goto :goto_0

    .line 933
    :cond_3
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v1           #unlockWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockWidget:Landroid/view/View;
    goto :goto_1

    .line 936
    :cond_4
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .end local v1           #unlockWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockWidget:Landroid/view/View;
    goto :goto_1
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 899
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    return v0

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 1322
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1323
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1326
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1327
    const/4 v3, 0x1

    .line 1328
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v1

    .line 1341
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1342
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needToShowHelpPage()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1289
    const/4 v0, 0x3

    new-array v9, v0, [Landroid/net/Uri;

    .line 1290
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1291
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1292
    const/4 v0, 0x2

    const-string v1, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1294
    const/4 v8, 0x0

    .line 1296
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 1297
    const/4 v6, 0x0

    .line 1300
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1304
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "HelpHub is installed, but doesn\'t have uri."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1314
    .end local v8           #result:I
    if-eqz v6, :cond_0

    .line 1315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1318
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return v8

    .line 1309
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #result:I
    :cond_1
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1314
    :cond_2
    if-eqz v6, :cond_3

    .line 1315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1314
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x1040722

    const v1, 0x104071f

    .line 829
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_4

    .line 830
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 831
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 858
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_3

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040723

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 844
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_7

    .line 845
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 846
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040721

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 851
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_8

    .line 852
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 854
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040720

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 891
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1119
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "cleanUp()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_1

    .line 1122
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v1, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1124
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 1129
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-ne v1, v4, :cond_b

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSPenTabletDevice()Z

    move-result v1

    if-ne v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v1, :cond_b

    .line 1130
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIsConfigurationChanged()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1131
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getRippleUnlockView()Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, rippleUnlockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Remove unlock view"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1150
    .end local v0           #rippleUnlockView:Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->cleanUp()V

    .line 1152
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v1, :cond_3

    .line 1153
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/UsimWidget;->cleanUp()V

    .line 1155
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v1, :cond_4

    .line 1156
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->cleanUp()V

    .line 1158
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1159
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1161
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v1, :cond_6

    .line 1162
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->cleanUp()V

    .line 1164
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v1, :cond_7

    .line 1165
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->cleanUp()V

    .line 1167
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1168
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1169
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1173
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1175
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1176
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1177
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1178
    return-void

    .line 1138
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Clean up unlock view"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->cleanUp()V

    .line 1143
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setRippleUnlockView(Landroid/view/View;)V

    goto :goto_0

    .line 1146
    :cond_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1147
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->cleanUp()V

    goto/16 :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1015
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1017
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1023
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 944
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 955
    :goto_0
    return v1

    .line 949
    :cond_0
    const-string v0, ""

    .line 950
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1258
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 1363
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCsSimStateChanged simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mIsWatterRipple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUnlockWidget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRippleBackground()V

    goto :goto_0
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1352
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1262
    return-void
.end method

.method public onMissedCallUpdate()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedEvent()V

    .line 1377
    :cond_0
    return-void
.end method

.method public onMissedMsgUpdate()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 1384
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 1088
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onPause()V

    .line 1091
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onPause()V

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onPause()V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onPause()V

    .line 1101
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_4

    .line 1102
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onPause()V

    .line 1104
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1105
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onPause()V

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onPause()V

    .line 1110
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onPause()V

    .line 1113
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1114
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1115
    :cond_8
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1254
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1212
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1218
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1220
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1232
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1266
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1271
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1272
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1273
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1274
    const/4 v1, 0x1

    .line 1276
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onResume()V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onResume()V

    .line 1038
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onResume()V

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onResume()V

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->cleanTouchListener()V

    .line 1047
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_5

    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onResume()V

    .line 1050
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onResume()V

    .line 1055
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1063
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_8

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1066
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_9

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onResume()V

    .line 1069
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_a

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_a

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onResume()V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1073
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    :cond_a
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1246
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1226
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1236
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1009
    :goto_0
    return v0

    .line 978
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1005
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_5

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->registerListener()V

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 983
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionDown()V

    .line 989
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 994
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_4

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 997
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_4

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    .line 1000
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionUp()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1009
    goto :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1358
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    if-eqz p1, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1192
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1195
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1199
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    :cond_1
    return-void

    .line 1182
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    :cond_0
    return-void
.end method

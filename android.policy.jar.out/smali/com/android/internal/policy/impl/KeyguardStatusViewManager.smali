.class public Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$8;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:[Ljava/lang/CharSequence;

.field private mCarrierView:[Landroid/widget/TextView;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

.field private mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

.field private mContainer:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private mEmergencyButtonEnabledBecauseSim2Locked:Z

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mEmergencyCircle:Landroid/widget/RelativeLayout;

.field private mEmergencyCircleLeft:Landroid/widget/LinearLayout;

.field private mEmergencyCircleRight:Landroid/widget/LinearLayout;

.field private mEmergencyDial:Landroid/widget/ImageView;

.field private mEmergencyList:Landroid/widget/ImageView;

.field private mEmergencyText:Landroid/widget/TextView;

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mInstructionText:Ljava/lang/String;

.field private mIsDisableCarrierTextViewVisibilityControl:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:[Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSpn:[Ljava/lang/CharSequence;

.field private mStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 7
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    .line 212
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZI)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZI)V
    .locals 10
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"
    .parameter "simCardId"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 90
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    .line 97
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsDisableCarrierTextViewVisibilityControl:Z

    .line 103
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 106
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 109
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 112
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/telephony/IccCard$State;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 121
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:[Ljava/lang/CharSequence;

    .line 129
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    .line 130
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:[Ljava/lang/CharSequence;

    .line 943
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$6;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 990
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, value:Ljava/lang/String;
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10400d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 229
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 230
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 231
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 233
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v6

    if-nez v6, :cond_2

    .line 234
    const v6, 0x1020486

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 235
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 236
    const v6, 0x1020487

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    .line 237
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 238
    new-instance v6, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p4}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .line 239
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 240
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTouchListerner:Landroid/view/View$OnTouchListener;

    .line 246
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    new-instance v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 259
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    const/4 v8, 0x0

    const v6, 0x1020382

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 260
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    const/4 v8, 0x1

    const v6, 0x1020383

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v8

    .line 261
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v6, v6, p6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v6, v6, p6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShouldDisplayCarrierInfo()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v6, v6, p6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_3
    const v6, 0x1020063

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 267
    const v6, 0x102035b

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 268
    const v6, 0x1020381

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 269
    const v6, 0x10203a2

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 270
    const v6, 0x1020359

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/TransportControlView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 271
    const v6, 0x102034d

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 272
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 273
    const v6, 0x1020064

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/DigitalClock;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 276
    const v6, 0x1020304

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    .line 279
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v6, :cond_4

    .line 280
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_5

    .line 284
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v7, 0x1040459

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 289
    :cond_5
    const v6, 0x1020268

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

    .line 290
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_6

    .line 292
    const v6, 0x102026a

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircle:Landroid/widget/RelativeLayout;

    .line 293
    const v6, 0x102026b

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;

    .line 294
    const v6, 0x102026c

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;

    .line 295
    const v6, 0x1020269

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    .line 296
    const v6, 0x102026e

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyList:Landroid/widget/ImageView;

    .line 297
    const v6, 0x102026d

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyDial:Landroid/widget/ImageView;

    .line 299
    new-instance v6, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p4}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .line 300
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 302
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTouchListerner:Landroid/view/View$OnTouchListener;

    .line 308
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    new-instance v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 321
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    new-instance v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 344
    :cond_6
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v7, v7, p6

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    .line 346
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 347
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 351
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 355
    const/4 v6, 0x5

    new-array v3, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v7, v7, p6

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v3, v6

    .line 357
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_9

    aget-object v4, v0, v1

    .line 358
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 359
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 357
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #scrollableViews:[Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :cond_8
    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10400d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    goto/16 :goto_0

    .line 362
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #scrollableViews:[Landroid/view/View;
    :cond_9
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/sec/CircleUnlockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleLeft:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircleRight:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyDial:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "icon"

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"
    .parameter "simCardId"

    .prologue
    const/4 v5, 0x0

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 554
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 556
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 563
    :cond_0
    :goto_0
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 572
    :cond_1
    :goto_1
    return-object v0

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104045f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 561
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 564
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040462

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:[Ljava/lang/CharSequence;

    aget-object v0, v1, p2

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 580
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 581
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_5

    .line 583
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_4

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 592
    :cond_2
    :goto_1
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 588
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104045f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 590
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 593
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040462

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 598
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 400
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1042
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1043
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1044
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1046
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDisplaySPNOnlyInCaseSamePLMN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1047
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1060
    .end local p1
    :cond_0
    :goto_2
    return-object p1

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p1
    :cond_1
    move v0, v3

    .line 1042
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 1043
    goto :goto_1

    .line 1051
    .restart local v1       #spnValid:Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1052
    :cond_4
    if-nez v0, :cond_0

    .line 1054
    if-eqz v1, :cond_5

    move-object p1, p2

    .line 1055
    goto :goto_2

    .line 1057
    :cond_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1058
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040454

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    .line 1060
    :cond_6
    const-string p1, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 816
    .end local p1
    :cond_0
    return-object p1
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 436
    :goto_0
    :pswitch_0
    return-void

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 498
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 500
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 497
    goto :goto_0

    .line 500
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 658
    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 10
    .parameter "simState"
    .parameter "simCardId"

    .prologue
    const v9, 0x1040463

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 663
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 664
    .local v2, simState1:Lcom/android/internal/telephony/IccCard$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 666
    .local v3, simState2:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsDisableCarrierTextViewVisibilityControl:Z

    if-nez v4, :cond_1

    .line 667
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    if-eqz v4, :cond_1

    .line 668
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    .line 671
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 685
    :cond_0
    :goto_0
    const-string v4, "1"

    const-string v5, "ril.MSIMM"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 692
    :cond_1
    const/4 v1, 0x0

    .line 693
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 694
    .local v0, carrierHelpTextId:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDualSlotDevice()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 695
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 696
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 697
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 698
    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 789
    :goto_1
    return-void

    .line 674
    .end local v0           #carrierHelpTextId:I
    .end local v1           #carrierText:Ljava/lang/CharSequence;
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getActiveSimCardId()I

    move-result v4

    if-nez v4, :cond_4

    .line 677
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 702
    .restart local v0       #carrierHelpTextId:I
    .restart local v1       #carrierText:Ljava/lang/CharSequence;
    :cond_5
    if-nez p2, :cond_8

    .line 703
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 707
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v5

    aput-object v5, v4, p2

    .line 708
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object p1, v4, p2

    .line 709
    sget-object v4, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$8;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 786
    :cond_7
    :goto_3
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 788
    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    goto :goto_1

    .line 704
    :cond_8
    if-ne p2, v6, :cond_6

    .line 705
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    goto :goto_2

    .line 711
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 712
    goto :goto_3

    .line 715
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104047c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 718
    const v0, 0x1040457

    .line 719
    goto :goto_3

    .line 726
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 729
    const v0, 0x1040467

    .line 730
    goto :goto_3

    .line 733
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040468

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 735
    const v0, 0x1040469

    .line 736
    if-nez p2, :cond_9

    .line 737
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_3

    .line 738
    :cond_9
    if-ne p2, v6, :cond_7

    .line 739
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    goto :goto_3

    .line 744
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 747
    const v0, 0x1040466

    .line 748
    if-nez p2, :cond_a

    .line 749
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_3

    .line 750
    :cond_a
    if-ne p2, v6, :cond_7

    .line 751
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    goto :goto_3

    .line 756
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040480

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 759
    if-nez p2, :cond_b

    .line 760
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_3

    .line 761
    :cond_b
    if-ne p2, v6, :cond_7

    .line 762
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    goto/16 :goto_3

    .line 767
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104047e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v5, p2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 770
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 772
    if-nez p2, :cond_c

    .line 773
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_3

    .line 774
    :cond_c
    if-ne p2, v6, :cond_7

    .line 775
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    goto/16 :goto_3

    .line 781
    :pswitch_7
    if-ne p2, v6, :cond_7

    .line 782
    const-string v1, ""

    goto/16 :goto_3

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText(I)V

    .line 532
    return-void
.end method

.method private updateCarrierText(I)V
    .locals 3
    .parameter "simCardId"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierText(), int:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCarrierText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_0
    return-void
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 886
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 887
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSim2Locked:Z

    if-eqz v4, :cond_4

    :cond_0
    move v0, v2

    .line 890
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    move v1, v2

    .line 899
    .local v1, shown:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isEmergencyCircleEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v2

    if-nez v2, :cond_2

    .line 900
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 901
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyText(I)V

    .line 915
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_a

    .line 916
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircle:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateICELayoutState(Landroid/widget/RelativeLayout;Landroid/widget/Button;IZ)V

    .line 921
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v3

    .line 887
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_5
    move v1, v3

    .line 890
    goto :goto_1

    .line 903
    .restart local v1       #shown:Z
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    if-eqz v2, :cond_7

    .line 904
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setVisibilityEmergencyText(I)V

    .line 905
    const/4 v1, 0x0

    goto :goto_2

    .line 907
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedSparePasswordExists()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 909
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 918
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    goto :goto_3
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 513
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 514
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_0
    return-void

    .line 513
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 516
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 522
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 523
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 524
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 526
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 526
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public disableCarrierTextViewVisibilityControl()V
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsDisableCarrierTextViewVisibilityControl:Z

    .line 1066
    return-void
.end method

.method public getActiveSimCardId()I
    .locals 5

    .prologue
    .line 793
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 794
    .local v1, simState1:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 795
    .local v2, simState2:Lcom/android/internal/telephony/IccCard$State;
    const/4 v0, 0x0

    .line 797
    .local v0, simCardId:I
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_2

    .line 799
    :cond_1
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0

    .line 801
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCsSimId()I

    move-result v0

    goto :goto_0
.end method

.method public getEmergencyCallButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 643
    :goto_0
    return-object v1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 624
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 625
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$8;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 643
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 620
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 627
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 629
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 631
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 633
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 635
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 637
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 639
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 641
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 1009
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallList()V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104045e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mClock:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->onResume()V

    .line 465
    :cond_2
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_0
    return-void
.end method

.method public resetStatusInfo()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 473
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 396
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 375
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "string"
    .parameter "simCardId"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:[Ljava/lang/CharSequence;

    aput-object p1, v0, p2

    .line 380
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 412
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 413
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 414
    return-void

    .line 412
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 370
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 385
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method public setVisibilityEmergencyCallButton(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1019
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 p1, 0x0

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    return-void
.end method

.method public setVisibilityEmergencyText(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1029
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1030
    const/4 p1, 0x4

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    :cond_1
    return-void
.end method

.method public updateICELayoutState(Z)V
    .locals 6
    .parameter "isShowingForotPattern"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 924
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockscreenRootIce:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 926
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 929
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 931
    .local v1, shown:Z
    :goto_1
    if-eqz p1, :cond_4

    .line 933
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircle:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 941
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    .line 926
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_3
    move v1, v3

    .line 929
    goto :goto_1

    .line 937
    .restart local v1       #shown:Z
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCircle:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateICELayoutState(Landroid/widget/RelativeLayout;Landroid/widget/Button;IZ)V

    goto :goto_2
.end method

.method updateStatusLines(Z)V
    .locals 1
    .parameter "showStatusLines"

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 485
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 486
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 487
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatus1()V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText(I)V

    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText(I)V

    .line 492
    return-void
.end method

.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private final TURN_ON_BT_TIMEOUT:I

.field private final TURN_ON_EXTRA_VOL_TIMEOUT:I

.field private final TURN_ON_SPEAKER_TIMEOUT:I

.field private final UNHOLD_BUTTON_BLINK:I

.field private final UNHOLD_BUTTON_DELAY:I

.field private final UPDATE_BT_BUTTON:I

.field private final UPDATE_EXTRAVOL_BUTTON:I

.field private final UPDATE_SPEAKER_BUTTON:I

.field private mAddButton:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mBtHeadsetIcon:Landroid/widget/ImageView;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mCdmaSwapButton:Landroid/widget/Button;

.field private mChatOnID:Ljava/lang/String;

.field private mContactButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

.field private mExtraVlolButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mHearingCorrectionIcon:Landroid/widget/ImageView;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/view/View;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallIconContainer:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field private mIsEasyModeOn:Z

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field private mLastIncomingCallActionTime:J

.field private mLeftArrow:Landroid/view/View;

.field private mManageConfButton:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/Button;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/widget/ImageButton;

.field private mMultiCallButtonContainer:Landroid/widget/LinearLayout;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPopupVisible:Z

.field private mPrevIsEasyModeOn:Z

.field private mRecordButton:Landroid/widget/Button;

.field private mRecordOffIcon:Landroid/graphics/drawable/Drawable;

.field private mRecordOnIcon:Landroid/graphics/drawable/Drawable;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgDrawerLayout:Landroid/view/View;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRightArrow:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/view/View;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mSwitchButtonContainer:Landroid/widget/LinearLayout;

.field private mUnholdButton:Landroid/view/View;

.field private mUnholdButtonBlinkCount:I

.field private mWebExButton:Landroid/widget/Button;

.field private prevIsOnehandOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 121
    const-string v1, "onehand_dialer_enabled"

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 122
    const-string v1, "onehand_direction"

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 124
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 196
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_SPEAKER_BUTTON:I

    .line 197
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_SPEAKER_TIMEOUT:I

    .line 199
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_BT_BUTTON:I

    .line 200
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_BT_TIMEOUT:I

    .line 202
    const/16 v1, 0x82

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_EXTRAVOL_BUTTON:I

    .line 203
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_EXTRA_VOL_TIMEOUT:I

    .line 205
    const/16 v1, 0x8c

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->UNHOLD_BUTTON_BLINK:I

    .line 206
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->UNHOLD_BUTTON_DELAY:I

    .line 207
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mChatOnID:Ljava/lang/String;

    .line 214
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 268
    const-string v1, "InCallTouchUi constructor..."

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- this = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- context "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", attrs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 275
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 277
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 278
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 281
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 282
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {v3, p1, p0}, Lcom/android/phone/RcsShare;->fetchIncallButtonLayout(ZLandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 307
    :goto_1
    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move v1, v3

    .line 274
    goto :goto_0

    .line 285
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const v1, 0x7f040065

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 290
    :cond_2
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_3

    .line 291
    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 295
    :cond_3
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_4

    .line 296
    const v1, 0x7f04004e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 301
    :cond_4
    const v1, 0x7f04004c

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1
.end method

.method private UnholdButtonBlink()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/16 v3, 0x8c

    const/4 v1, 0x0

    .line 1370
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-eqz v0, :cond_2

    .line 1372
    iget v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1373
    :goto_0
    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1382
    :goto_1
    iget v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    .line 1383
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1384
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1391
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 1372
    goto :goto_0

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    const/high16 v1, 0x41d0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    const/high16 v2, 0x437f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1387
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iput v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButtonBlinkCount:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/EndCallButtonsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->UnholdButtonBlink()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    return-object v0
.end method

.method private dumpBottomButtonState()V
    .locals 2

    .prologue
    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1407
    if-nez p0, :cond_0

    .line 1408
    const-string v0, "(null)"

    .line 1425
    :goto_0
    return-object v0

    .line 1410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1411
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string v0, "INVISIBLE"

    goto :goto_1

    :cond_3
    const-string v0, "GONE"

    goto :goto_1

    .line 1415
    :cond_4
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_5

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1418
    :cond_5
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1420
    :cond_6
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1880
    const-string v0, "hideIncomingCallWidget()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1931
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1932
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1934
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1935
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2148
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2152
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2153
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCallWidget(). widget visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1950
    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1959
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1962
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowRespondViaSms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    if-eqz v0, :cond_2

    .line 1980
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1981
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    :goto_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2008
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->reset()V

    .line 2029
    return-void

    .line 1990
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1652
    const-string v0, "showAudioModePopup()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1654
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 1655
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1656
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1657
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1659
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1661
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v1

    .line 1662
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1664
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1666
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1667
    return-void
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 905
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 919
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 922
    const-string v0, "updateInCallControls()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v5}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 927
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 928
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    if-eqz v6, :cond_1b

    move v0, v2

    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 930
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1c

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 932
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v0, :cond_1d

    move v0, v2

    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_3
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 939
    :cond_1
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_20

    .line 940
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_1f

    move v0, v2

    :goto_4
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :goto_5
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_3

    .line 960
    if-eq v4, v3, :cond_2

    const/4 v0, 0x3

    if-ne v4, v0, :cond_24

    .line 967
    :cond_2
    const-string v0, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_3
    :goto_6
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 981
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 987
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v7, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 988
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    .line 989
    if-eqz v0, :cond_5

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    if-nez v8, :cond_5

    .line 990
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    move v0, v2

    .line 994
    :cond_5
    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 995
    if-eqz v0, :cond_26

    .line 996
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0e039d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1005
    :goto_7
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_27

    move v0, v2

    :goto_8
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1009
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1010
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1016
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1031
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_28

    .line 1033
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0e01cd

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    :cond_7
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1055
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1057
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1058
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "call_extra_volume"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1063
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_extra_vol"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1066
    const-string v7, "extra_volume"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    if-ne v0, v3, :cond_29

    .line 1068
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1070
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1071
    const-string v0, "InCallTouchUi"

    const-string v7, "mExtraVlolButton.setEnabled(true)"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1075
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1081
    :cond_a
    :goto_a
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1082
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6e

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1083
    const-string v0, "InCallTouchUi"

    const-string v7, "mSpeakerButton.setEnabled(inCallControlState.speakerEnabled)"

    invoke-static {v0, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1089
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1091
    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1092
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x78

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1093
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1098
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1101
    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->updateInCallIcons(Lcom/android/phone/InCallControlState;)V

    .line 1104
    const-string v0, "onscreen_manage_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1105
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v0, :cond_2c

    .line 1106
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :cond_d
    :goto_d
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v0, :cond_2e

    .line 1116
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1118
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v0, :cond_2d

    .line 1119
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    if-eqz v0, :cond_e

    .line 1122
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8c

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8c

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1130
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    :goto_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1179
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v0, :cond_f

    .line 1185
    const-string v0, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v0, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_f
    const-string v0, "thrway_active_disable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1189
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    :cond_10
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-ne v4, v10, :cond_12

    .line 1196
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v6

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_38

    .line 1197
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v0, v6, :cond_37

    .line 1198
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02c6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1214
    :cond_11
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->>  canMulti"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1216
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v0, :cond_3a

    .line 1217
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1226
    :cond_12
    :goto_11
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-ne v4, v10, :cond_14

    .line 1228
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1229
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1233
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    :cond_14
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1241
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v0, :cond_15

    if-ne v4, v10, :cond_3b

    .line 1242
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    :cond_16
    :goto_12
    if-ne v4, v10, :cond_17

    .line 1262
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_17

    .line 1268
    const-string v0, "InCallTouchUi"

    const-string v1, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_17
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1275
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v3, p0, v0, v1, v4}, Lcom/android/phone/RcsShare;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1279
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    .line 1293
    :cond_18
    :goto_13
    const-string v0, "ultimate_standby_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1294
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isUSMEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1295
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    .line 1296
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1298
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1a

    .line 1299
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1341
    :cond_1a
    const-string v0, "At the end of updateInCallControls()."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->dumpBottomButtonState()V

    .line 1344
    return-void

    :cond_1b
    move v0, v1

    .line 928
    goto/16 :goto_0

    :cond_1c
    move v0, v2

    .line 931
    goto/16 :goto_1

    :cond_1d
    move v0, v1

    .line 932
    goto/16 :goto_2

    :cond_1e
    move v0, v2

    .line 933
    goto/16 :goto_3

    :cond_1f
    move v0, v1

    .line 940
    goto/16 :goto_4

    .line 943
    :cond_20
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_22

    .line 944
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    if-nez v6, :cond_21

    move v0, v2

    :goto_14
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_21
    move v0, v1

    .line 944
    goto :goto_14

    .line 955
    :cond_22
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    if-nez v6, :cond_23

    move v0, v2

    :goto_15
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_23
    move v0, v1

    .line 955
    goto :goto_15

    .line 969
    :cond_24
    if-ne v4, v10, :cond_25

    .line 972
    const-string v0, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 975
    :cond_25
    const-string v0, "InCallTouchUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6

    .line 1000
    :cond_26
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0e039c

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_27
    move v0, v1

    .line 1005
    goto/16 :goto_8

    .line 1039
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0e01cc

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1042
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1077
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 1087
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_b

    .line 1096
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_c

    .line 1108
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1126
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 1127
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 1132
    :cond_2e
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_35

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallControls: inCallControlState.canSwap = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", phoneType ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1134
    if-eq v4, v3, :cond_2f

    const/4 v0, 0x3

    if-ne v4, v0, :cond_31

    .line 1136
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->setHasHoldingBGCall(Z)V

    .line 1137
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    :cond_30
    :goto_16
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 1140
    :cond_31
    if-ne v4, v10, :cond_34

    .line 1141
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1143
    :cond_32
    const-string v0, "updateInCallControls: mCdmaSwapButton.setVisibility"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1144
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    if-nez v6, :cond_33

    move v0, v2

    :goto_17
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_16

    :cond_33
    move v0, v1

    .line 1144
    goto :goto_17

    .line 1149
    :cond_34
    const-string v0, "InCallTouchUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_16

    .line 1164
    :cond_35
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v0, :cond_36

    .line 1165
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1167
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 1173
    :cond_36
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 1200
    :cond_37
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v0, v6, :cond_11

    .line 1201
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02bd

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 1204
    :cond_38
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v6

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v6, :cond_11

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1206
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v0, v6, :cond_39

    .line 1207
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1208
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02c6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 1209
    :cond_39
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v0

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v0, v6, :cond_11

    .line 1210
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1211
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0e02c5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 1222
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 1244
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-nez v3, :cond_3c

    iget-boolean v3, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_3d

    :cond_3c
    move v1, v2

    :cond_3d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    .line 1280
    :cond_3e
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1281
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 1282
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto/16 :goto_13

    .line 1284
    :cond_3f
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_18

    .line 1285
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    goto/16 :goto_13
.end method

.method private updateInCallIcons(Lcom/android/phone/InCallControlState;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1429
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1430
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1432
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_8

    .line 1437
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v4, :cond_3

    :cond_0
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    :cond_1
    const-string v0, "noise_reduction_icon_no_display_always"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1451
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHearingCorrectionIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoiceCallEq()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1453
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1455
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBtHeadsetIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1438
    goto :goto_1

    .line 1449
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v3

    .line 1451
    goto :goto_3

    :cond_7
    move v2, v3

    .line 1455
    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    .line 1683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1685
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2158
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2163
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 1753
    const/4 v0, 0x0

    .line 1756
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1759
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1765
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1767
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 770
    packed-switch v0, :pswitch_data_0

    .line 850
    :pswitch_0
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 853
    :goto_0
    return-void

    .line 798
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 802
    :pswitch_2
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "InCallTouchUi"

    const-string v2, "###SPEAKER_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 804
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 805
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 812
    :pswitch_3
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 815
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 822
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    goto :goto_0

    .line 830
    :pswitch_5
    const-string v1, "extra_volume_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    const-string v1, "InCallTouchUi"

    const-string v2, "###EXTRA_VOLUME_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 832
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 833
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 835
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 838
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 844
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 847
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x7f090149
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter

    .prologue
    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 1728
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x1

    .line 315
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 321
    const v5, 0x7f09017c

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/IncomingCallWidget;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 322
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 325
    const v5, 0x7f090212

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SlidingDrawer;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 326
    const v5, 0x7f090215

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 327
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const v5, 0x7f09017d

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    .line 331
    :cond_0
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const v5, 0x7f090216

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    .local v1, rejectOptionText:Landroid/widget/TextView;
    const v5, 0x7f0e077b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 336
    .end local v1           #rejectOptionText:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v6, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 346
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v6, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 366
    const v5, 0x7f09017e

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 367
    const v5, 0x7f090147

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    .line 368
    const v5, 0x7f090157

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    .line 371
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 373
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    const/high16 v6, -0x8000

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    :cond_2
    const v5, 0x7f09011e

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EndCallButtonsView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    .line 379
    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v3}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 380
    .local v3, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0, v7, v8}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 381
    .local v0, lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v8}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 385
    .local v2, rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090149

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 386
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 389
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09014b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 390
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 393
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09014a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    .line 394
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 397
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090150

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 398
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090151

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    .line 401
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09014f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 404
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 408
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090155

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 410
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 414
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090165

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 415
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090152

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 421
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 425
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090153

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 426
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 432
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090154

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 433
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v5, :cond_4

    .line 437
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090169

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    .line 438
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 442
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090168

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    .line 443
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 451
    :cond_4
    new-instance v4, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    .line 454
    .local v4, smallerTouchListenerExceptLeftEdge:Landroid/view/View$OnTouchListener;
    const-string v5, "onscreen_manage_conference"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 455
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09015b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    .line 456
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 458
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09015d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    .line 462
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09015e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    .line 463
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 465
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 466
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09015f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    .line 467
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 469
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 470
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090160

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 471
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    const-string v5, "support_lgt_multi_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 477
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090161

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    .line 478
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090162

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    .line 479
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090163

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 480
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_6

    .line 481
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 486
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 492
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09014c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    .line 493
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "voice_call_recording_menu"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 497
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09014d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 498
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 503
    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090164

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 504
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090158

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 509
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f090159

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHearingCorrectionIcon:Landroid/widget/ImageView;

    .line 512
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 513
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBtHeadsetIcon:Landroid/widget/ImageView;

    .line 516
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020418

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020417

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 518
    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v5, :cond_a

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020401

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020408

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 549
    :goto_0
    return-void

    .line 521
    :cond_a
    const-string v5, "support_easy_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v5, :cond_b

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020406

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 525
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 526
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020407

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 2068
    return-void
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 2081
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1712
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 1713
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1717
    :goto_0
    return v0

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v0

    .line 1717
    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1791
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1792
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1870
    :goto_0
    return-void

    .line 1805
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1856
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 1807
    :pswitch_0
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1808
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1815
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 1819
    :pswitch_1
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1820
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1848
    :pswitch_2
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1852
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 1805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1701
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    .line 1703
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 311
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x8

    const/4 v6, 0x1

    .line 556
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v5, :cond_1

    .line 557
    const-string v5, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v5, "feature_sec_lock_screen"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 563
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isDisconnecting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 566
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockIconText:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mTouchLockIconText:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 569
    :cond_4
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 575
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState: current state = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 577
    const/4 v3, 0x0

    .line 578
    .local v3, showIncomingCallControls:Z
    const/4 v2, 0x0

    .line 580
    .local v2, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 581
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 588
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v8, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 596
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 597
    const-string v5, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 598
    const/4 v3, 0x1

    .line 630
    :cond_6
    :goto_1
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 631
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 619
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 620
    const/4 v2, 0x1

    goto :goto_1

    .line 622
    :cond_8
    const-string v5, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_9
    if-eqz v2, :cond_12

    .line 648
    const-string v5, "- updateState: showing in-call controls..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 650
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 652
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v5, v5, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v8, :cond_e

    .line 660
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5, p1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 661
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v11, :cond_a

    .line 662
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    const-wide/16 v9, 0x3e8

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 664
    :cond_a
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_b
    :goto_2
    if-eqz v3, :cond_13

    .line 692
    const-string v5, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 693
    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 702
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v7}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 720
    :goto_3
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_14

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_14

    .line 730
    :goto_4
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "hw_home_key"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 733
    :cond_c
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    :cond_d
    const-string v5, "disable_button_bt_touch_sound"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 738
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    .line 666
    :cond_e
    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_11

    move v5, v6

    :goto_5
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 668
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eq v5, v8, :cond_f

    .line 669
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 670
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 674
    :cond_f
    const-string v5, "support_easy_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 675
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 676
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eq v5, v8, :cond_10

    .line 677
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 678
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 682
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 683
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    move v5, v7

    .line 667
    goto :goto_5

    .line 687
    :cond_12
    const-string v5, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 688
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 704
    :cond_13
    const-string v5, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 705
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 709
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_3

    .line 727
    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_4

    .line 740
    :cond_15
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0
.end method

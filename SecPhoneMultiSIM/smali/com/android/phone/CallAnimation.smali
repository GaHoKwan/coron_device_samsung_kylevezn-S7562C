.class public Lcom/android/phone/CallAnimation;
.super Ljava/lang/Object;
.source "CallAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallAnimation$1;,
        Lcom/android/phone/CallAnimation$AnimationType;
    }
.end annotation


# static fields
.field public static final DBG:I

.field private static mAniType:Lcom/android/phone/CallAnimation$AnimationType;

.field private static sInstance:Lcom/android/phone/CallAnimation;


# instance fields
.field private mBannerAlpha:Landroid/view/animation/AlphaAnimation;

.field private mBannerTrans:Landroid/view/animation/TranslateAnimation;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpad:Landroid/widget/TableLayout;

.field private mDtmfEditText:Landroid/widget/EditText;

.field private mDtmfTrans:Landroid/view/animation/TranslateAnimation;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

.field private mIncomingCallRightWidget:Landroid/widget/FrameLayout;

.field private mInsetPhoto:Landroid/widget/ImageView;

.field private mKeypadTrans:Landroid/view/animation/TranslateAnimation;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryPhoto:Landroid/widget/ImageView;

.field private mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryPhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    sput v0, Lcom/android/phone/CallAnimation;->DBG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static cleanInsetPhotoAnimation()V
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    iget-object v0, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    iget-object v0, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 419
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 422
    :cond_0
    return-void
.end method

.method private cleanViewsAnimation()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 449
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 450
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 452
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 456
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 458
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 461
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 462
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 464
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    .line 465
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 467
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 468
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 470
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_f

    .line 471
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 473
    :cond_f
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 474
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 475
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 478
    :cond_10
    return-void
.end method

.method public static clearAnimation()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->cleanViewsAnimation()V

    .line 144
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->resetViewHandles()V

    .line 146
    :cond_0
    return-void
.end method

.method private dialpadBannerAlphaAnimation(Z)V
    .locals 3
    .parameter "isOpen"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 283
    if-eqz p1, :cond_7

    .line 284
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 290
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    :cond_6
    return-void

    .line 286
    :cond_7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0
.end method

.method private dialpadBannerAnimation(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 219
    const-string v1, "use_alpha_anim_for_banner"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/android/phone/CallAnimation;->dialpadBannerAlphaAnimation(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-eqz p1, :cond_9

    .line 225
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 230
    :goto_1
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    if-eqz p1, :cond_a

    .line 232
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f40

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    .line 238
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const v3, 0x10a0006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_4
    const/4 v0, 0x0

    .line 249
    .local v0, callStateTrans:Landroid/view/animation/TranslateAnimation;
    if-eqz p1, :cond_b

    .line 250
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 254
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 256
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 260
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 263
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 268
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    :cond_7
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 273
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 227
    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_9
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 234
    :cond_a
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f40

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 252
    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    :cond_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #callStateTrans:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0       #callStateTrans:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_3
.end method

.method private dialpadDtmfEditTextAnimation(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 202
    if-eqz p1, :cond_1

    .line 203
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    return-void

    .line 205
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private dialpadKeypadAnimation(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 187
    if-eqz p1, :cond_1

    .line 188
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    return-void

    .line 190
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private dialpadPhotoAnimation(Z)V
    .locals 5
    .parameter "isOpen"

    .prologue
    const-wide/16 v3, 0xc8

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, photoAlpha:Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    .line 323
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 324
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 330
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 332
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    :cond_2
    return-void

    .line 326
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 327
    .restart local v0       #photoAlpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0
.end method

.method private incomingCallAnimation()V
    .locals 12

    .prologue
    .line 343
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 344
    .local v0, mPhotoTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3e4ccccd

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 345
    .local v1, mRejectMsgTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const v4, -0x41b33333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 346
    .local v2, mAcceptTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const v5, 0x3e4ccccd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 348
    .local v3, mRejectTrans:Landroid/view/animation/TranslateAnimation;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 350
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 351
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 357
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 361
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 362
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v4, :cond_3

    .line 363
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 367
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 368
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    .line 369
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x10a0006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 373
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 374
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    .line 375
    iget-object v4, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    :cond_5
    invoke-virtual {v3, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 379
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 97
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0900cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 100
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EndCallButtonsView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 102
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 103
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 104
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 105
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 107
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 108
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 111
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPeriodMark:Landroid/widget/ImageView;

    .line 118
    :goto_0
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    .line 124
    .local v0, incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 126
    iget-object v1, v0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, v1, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090212

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 131
    .end local v0           #incomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    :cond_2
    return-void

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 554
    const-string v0, "CallAnimation"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private resetViewHandles()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 482
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 483
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 484
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDialpad:Landroid/widget/TableLayout;

    .line 485
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfEditText:Landroid/widget/EditText;

    .line 486
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 487
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 488
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPrimaryPhoto:Landroid/widget/ImageView;

    .line 489
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 490
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mInsetPhoto:Landroid/widget/ImageView;

    .line 491
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallStateLabel:Landroid/widget/TextView;

    .line 492
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mElapsedTime:Landroid/widget/TextView;

    .line 493
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 494
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallLeftWidget:Landroid/widget/FrameLayout;

    .line 495
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mIncomingCallRightWidget:Landroid/widget/FrameLayout;

    .line 496
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mRejectMsgSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 497
    iput-object v0, p0, Lcom/android/phone/CallAnimation;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 498
    return-void
.end method

.method private start(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 149
    sget-object v2, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    sput-object p1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    move v0, v1

    .line 179
    :cond_1
    return v0

    .line 151
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 152
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "zaninzc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    .line 154
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadKeypadAnimation(Z)V

    .line 164
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    .line 165
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lcom/android/phone/CallAnimation;->dialpadPhotoAnimation(Z)V

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/CallAnimation;->incomingCallAnimation()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static startAnimation(Lcom/android/phone/CallAnimation$AnimationType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;-><init>()V

    sput-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    .line 137
    :cond_0
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0}, Lcom/android/phone/CallAnimation;->init()V

    .line 138
    sget-object v0, Lcom/android/phone/CallAnimation;->sInstance:Lcom/android/phone/CallAnimation;

    invoke-direct {v0, p0}, Lcom/android/phone/CallAnimation;->start(Lcom/android/phone/CallAnimation$AnimationType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerTrans:Landroid/view/animation/TranslateAnimation;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mBannerAlpha:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_0

    .line 527
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/phone/CallAnimation;->dialpadDtmfEditTextAnimation(Z)V

    goto :goto_0

    .line 531
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDtmfTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_2

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    invoke-direct {p0, v2}, Lcom/android/phone/CallAnimation;->dialpadBannerAnimation(Z)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mKeypadTrans:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 539
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/phone/CallAnimation;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->onDialerClose(Z)V

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 519
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallAnimation;->log(Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/android/phone/CallAnimation$1;->$SwitchMap$com$android$phone$CallAnimation$AnimationType:[I

    sget-object v1, Lcom/android/phone/CallAnimation;->mAniType:Lcom/android/phone/CallAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 515
    :pswitch_0
    return-void

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

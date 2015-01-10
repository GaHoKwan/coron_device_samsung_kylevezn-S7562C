.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;,
        Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;,
        Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;,
        Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field public static final DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private static sHughFontEnabled:Z


# instance fields
.field private mAccountIconLayoutHeight:I

.field private final mAccountIconSize:I

.field public mAccountIconsLayout:Landroid/widget/LinearLayout;

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private final mCallButtonPadding:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxHeight:I

.field private final mCheckBoxMarginLeft:I

.field private final mCheckBoxMarginRight:I

.field private mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field private final mCheckBoxWidthForDeleteAnimation:I

.field private mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private final mDataViewWidthWeight:I

.field private mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultPhotoViewSize:I

.field private mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

.field private mGalTitleAndCompanyTextView:Landroid/widget/TextView;

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private final mGapBetweenPresenceIconAndAccountIcons:I

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mIsEasyMode:Z

.field private mIsVoLTEEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private final mLabelViewWidthWeight:I

.field private mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mListCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mListCallButtonPadding:I

.field private mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mListCallVerticalDividerVisible:Z

.field private mListCallVerticalDividerWidth:I

.field private final mMarginRightForActivatedBackground:I

.field private final mMarginRightForFastScroll:I

.field private final mMaxNumberOfAccountIcon:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private final mPhotoMarginLeft:I

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private final mPresenceIconMarginTop:I

.field private final mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field public mRcsContentObserver:Landroid/database/ContentObserver;

.field public mRcsIconPosition:I

.field public mRcsIconView:Landroid/widget/ImageView;

.field public mRcsItemPosition:I

.field public mRcsServiceLookupUri:Landroid/net/Uri;

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStarredIcon:Landroid/widget/ImageView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I

.field private specWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 173
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 283
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, -0x100

    const/4 v8, 0x5

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 166
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 174
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_CHECK_BOX_POSITION:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 192
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 252
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 277
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 278
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 285
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 300
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mIsVoLTEEnabled:Z

    .line 336
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 339
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v6, v1, :cond_1

    .line 340
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 351
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 353
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    .line 360
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 362
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 364
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    .line 366
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    .line 368
    const/16 v1, 0xe

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    .line 370
    const/16 v1, 0xf

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 372
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 374
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    .line 376
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    .line 378
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    .line 380
    const/16 v1, 0x16

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 382
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 384
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 386
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    .line 388
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    .line 390
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    .line 392
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 394
    const/16 v1, 0x1d

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 397
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->setPadding(IIII)V

    .line 407
    new-instance v1, Lcom/android/contacts/format/PrefixHighlighter;

    const/16 v2, 0x12

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/contacts/format/PrefixHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    .line 412
    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    .line 414
    const/16 v1, 0x1f

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    .line 416
    const/16 v1, 0x20

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    .line 418
    const/16 v1, 0x21

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    .line 420
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    .line 422
    const/16 v1, 0x23

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxWidthForDeleteAnimation:I

    .line 424
    const/16 v1, 0x24

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    .line 426
    const/16 v1, 0x25

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    .line 428
    const/16 v1, 0x26

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    .line 430
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    .line 432
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 435
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 438
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    .line 444
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 447
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 448
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 452
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 456
    :cond_0
    new-instance v1, Lcom/android/contacts/format/DisplayNameFormatter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-direct {v1, v2}, Lcom/android/contacts/format/DisplayNameFormatter;-><init>(Lcom/android/contacts/format/PrefixHighlighter;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    .line 459
    new-instance v1, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;-><init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    .line 460
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setId(I)V

    .line 462
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setDuplicateParentStateEnabled(Z)V

    .line 463
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 464
    return-void

    .line 345
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/contacts/list/ContactListItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/contacts/list/ContactListItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactListItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactListItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method private ensureListCallVerticalDivider()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020471

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I

    .line 642
    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v1, :cond_0

    .line 649
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v1, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 664
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    .line 673
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 675
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    goto :goto_0

    .line 668
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    .line 669
    .local v0, defaultPhotoViewSize:I
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 670
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-eqz v1, :cond_4

    .end local v0           #defaultPhotoViewSize:I
    :goto_2
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    goto :goto_0

    .restart local v0       #defaultPhotoViewSize:I
    :cond_3
    move v1, v2

    .line 669
    goto :goto_1

    :cond_4
    move v0, v2

    .line 670
    goto :goto_2
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020471

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 632
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    .line 634
    :cond_0
    return-void
.end method

.method private getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 1848
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ATT_YP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020755

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1864
    :goto_0
    return-object v0

    .line 1861
    :cond_0
    instance-of v1, v0, Lcom/android/contacts/model/ExchangeAccountType;

    if-eqz v1, :cond_1

    .line 1862
    check-cast v0, Lcom/android/contacts/model/ExchangeAccountType;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1864
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1402
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private isPhoneAccount(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1834
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1835
    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1841
    :cond_0
    :goto_1
    return v2

    .line 1834
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1841
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .parameter "textView"
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 1236
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1241
    :goto_0
    return-void

    .line 1239
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method


# virtual methods
.method public DelListCallButton()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1065
    :cond_0
    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 603
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 604
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 605
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 606
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 607
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 714
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 717
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 720
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 721
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 687
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 688
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 691
    :cond_0
    return-void
.end method

.method public getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1197
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    .line 1198
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1199
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 1202
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->clearAnimation()V

    .line 1207
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
    .locals 2

    .prologue
    .line 1664
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 1669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxPosition:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    goto :goto_0
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1337
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    .line 1338
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1339
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1340
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1341
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1269
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1272
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1273
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getGalTitleAndCompanyNameTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1145
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    return-object v0

    .line 1145
    :cond_1
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1174
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1175
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1178
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1188
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 6

    .prologue
    const v5, 0x7f11004c

    const v2, 0x7f11004b

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 946
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 947
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 948
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 952
    sget-boolean v0, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 965
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 969
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 970
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 974
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 989
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 992
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0

    .line 955
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110068

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 965
    :cond_3
    const/16 v0, 0x10

    goto :goto_1

    .line 978
    :cond_4
    sget-boolean v0, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    if-eqz v0, :cond_5

    .line 979
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 981
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1119
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1126
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0

    .line 1126
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    .locals 2

    .prologue
    .line 1646
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1651
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    goto :goto_0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 844
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 845
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_1

    .line 846
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10102af

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 854
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 857
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 858
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 861
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0

    .line 848
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 816
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 820
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 821
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0225

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 830
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/QuickContactBadge;->setPadding(IIII)V

    .line 831
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setBackgroundColor(I)V

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 835
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1299
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1300
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1301
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1303
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1305
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStarredIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1213
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1316
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1318
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1319
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1321
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110056

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1323
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1325
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCheckBox()V
    .locals 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1499
    :cond_0
    return-void
.end method

.method public hideDisplayName()V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1457
    :cond_0
    return-void
.end method

.method public hideGalTitleAndCompany()V
    .locals 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1492
    :cond_0
    return-void
.end method

.method public hideListCallButton()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1059
    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1475
    :cond_0
    return-void
.end method

.method protected isGonevisible(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 618
    if-nez p1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInvisible(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 614
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

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
    .line 700
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 701
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 704
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 530
    sub-int v1, p5, p3

    .line 531
    .local v1, height:I
    sub-int v5, p4, p2

    .line 534
    .local v5, width:I
    const/4 v4, 0x0

    .line 535
    .local v4, topBound:I
    move v0, v1

    .line 536
    .local v0, bottomBound:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v2

    .line 537
    .local v2, leftBound:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v6

    sub-int v3, v5, v6

    .line 541
    .local v3, rightBound:I
    iget-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v6, :cond_1

    .line 542
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v6, v2, v9, v3, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 546
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 547
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v6, v7, v9, v3, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 560
    :cond_0
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    add-int/2addr v4, v6

    .line 564
    :cond_1
    iget-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v6, :cond_2

    .line 565
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v7, v1, v7

    invoke-virtual {v6, v2, v7, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 570
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v0, v6

    .line 573
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v6, v9, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 575
    iget-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 576
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 581
    :cond_3
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 582
    iget-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v6, :cond_6

    .line 583
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    add-int/2addr v2, v6

    .line 594
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-boolean v7, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForActivatedBackground:I

    sub-int/2addr v3, v7

    .end local v3           #rightBound:I
    :cond_5
    invoke-virtual {v6, v2, v4, v3, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layout(IIII)V

    .line 599
    return-void

    .line 585
    .restart local v3       #rightBound:I
    :cond_6
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    add-int/2addr v2, v6

    goto :goto_0

    .line 588
    :cond_7
    iget-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactListItemView;->isGonevisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 591
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    sub-int/2addr v3, v6

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 489
    invoke-static {v4, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    .line 492
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v2, :cond_3

    .line 493
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v1, v2, v3

    .line 499
    .local v1, preferredHeight:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v2, v4, v4}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->measure(II)V

    .line 500
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getMeasuredHeight()I

    move-result v0

    .line 503
    .local v0, height:I
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v2, :cond_0

    .line 504
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v2

    .line 508
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 511
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 515
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    const/high16 v4, -0x8000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 520
    :cond_1
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 522
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 525
    :cond_2
    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->specWidth:I

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 526
    return-void

    .line 495
    .end local v0           #height:I
    .end local v1           #preferredHeight:I
    :cond_3
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .restart local v1       #preferredHeight:I
    goto :goto_0
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 871
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 872
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 3
    .parameter "keepHorizontalPadding"
    .parameter "keepVerticalPadding"

    .prologue
    const/4 v2, 0x0

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 889
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 890
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 891
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 894
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 899
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 901
    :cond_1
    return-void
.end method

.method public removePhotoViewForDeleteMode()V
    .locals 2

    .prologue
    .line 876
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode(ZZ)V

    .line 877
    return-void
.end method

.method public removePhotoViewForDeleteMode(ZZ)V
    .locals 3
    .parameter "keepHorizontalPadding"
    .parameter "keepVerticalPadding"

    .prologue
    const/4 v2, 0x0

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 906
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 907
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 908
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 911
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 914
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 916
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 919
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 922
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 925
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 927
    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    .line 930
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1635
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1638
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    .line 1639
    return-void
.end method

.method public setActivatedStateDrawables(Z)V
    .locals 4
    .parameter "isChaingSplitRatioMode"

    .prologue
    const/4 v3, 0x0

    .line 1871
    if-eqz p1, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1873
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawableForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1874
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackgroundForSplitRatioChangingMode:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 1881
    :goto_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1885
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1891
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->drawableStateChanged()V

    .line 1892
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->jumpDrawablesToCurrentState()V

    .line 1893
    return-void

    .line 1876
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1877
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1878
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1887
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1622
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1623
    return-void
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    .line 1358
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1360
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1361
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    .line 1224
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1233
    :cond_1
    :goto_0
    return-void

    .line 1229
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1230
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 729
    return-void
.end method

.method public setGalTitleAndCompanyName(Ljava/lang/String;I)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1099
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    .line 1102
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    :cond_2
    :goto_0
    return-void

    .line 1107
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListItemView;->getGalTitleAndCompanyNameTextView(Ljava/lang/String;)Landroid/widget/TextView;

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedPrefix([C)V
    .locals 0
    .parameter "upperCasePrefix"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 940
    return-void
.end method

.method public setHorizontalDivider(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 808
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 809
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 810
    return-void
.end method

.method public setHugeFontEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1897
    sput-boolean p1, Lcom/android/contacts/list/ContactListItemView;->sHughFontEnabled:Z

    .line 1898
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1244
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    .line 1247
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1257
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    :goto_1
    return-void

    .line 1252
    :cond_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1259
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnListCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listcallButtonClickListener"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 475
    return-void
.end method

.method public setPhoneticName([CI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 1077
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1089
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 1090
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1385
    if-eqz p1, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1387
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1389
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1392
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1393
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1399
    :cond_1
    :goto_0
    return-void

    .line 1395
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 483
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 735
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 736
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;Z)V
    .locals 4
    .parameter "title"
    .parameter "allCap"

    .prologue
    const/4 v3, 0x0

    .line 742
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 745
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 746
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 747
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 749
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 753
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 771
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    .line 789
    :goto_2
    return-void

    .line 749
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :cond_4
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_2
.end method

.method public setSectionHeaderBackGround(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 796
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 797
    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 798
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    :cond_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    .line 1290
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1376
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "unknownNameText"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/format/DisplayNameFormatter;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mIsVoLTEEnabled:Z

    .line 1627
    return-void
.end method

.method public showAccountIcons(Landroid/database/Cursor;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v0, 0x0

    .line 1772
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1774
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->removeView(Landroid/view/View;)V

    .line 1777
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1781
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1829
    :goto_0
    return-void

    .line 1785
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    .line 1788
    invoke-static {v1, v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1790
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1791
    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconPosition:I

    .line 1792
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    .line 1793
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const v2, 0x7f02038a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1794
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1795
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1800
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isPhoneAccount(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1801
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 1803
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1805
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1807
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v1, v6, :cond_5

    .line 1808
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mMaxNumberOfAccountIcon:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1810
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1811
    const v2, 0x7f020589

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1812
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1824
    :cond_3
    if-nez v0, :cond_4

    .line 1825
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1828
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1816
    :cond_5
    new-instance v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1817
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->getAccountIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1818
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I

    invoke-virtual {v0, v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1819
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    const/4 v1, 0x1

    .line 1803
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method public showCheckBox(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1687
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1689
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1691
    :cond_0
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .parameter "cursor"
    .parameter "dataColumnIndex"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1618
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 1619
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;IIZI)V
    .locals 7
    .parameter "cursor"
    .parameter "nameColumnIndex"
    .parameter "alternativeNameColumnIndex"
    .parameter "highlightingEnabled"
    .parameter "displayOrder"

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v1}, Lcom/android/contacts/format/DisplayNameFormatter;->getNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1409
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v1}, Lcom/android/contacts/format/DisplayNameFormatter;->getAlternateNameBuffer()Landroid/database/CharArrayBuffer;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, prefixForIndian:[C
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1419
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    .line 1425
    :goto_0
    if-eqz v0, :cond_2

    .line 1426
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    invoke-virtual {v2, p5, p4, v0}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1438
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0225

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_0
    return-void

    .line 1422
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    goto :goto_0

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDisplayNameFormatter:Lcom/android/contacts/format/DisplayNameFormatter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v2, p5, p4, v3}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public showDisplayNameAsGalSearchShowMore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0261

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1449
    return-void
.end method

.method public showGalTitleAndCompany(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, size:I
    if-eqz p1, :cond_0

    .line 1480
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1481
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setGalTitleAndCompanyName(Ljava/lang/String;I)V

    .line 1485
    :goto_0
    return-void

    .line 1483
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setGalTitleAndCompanyName(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showListCallButton(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0205ca

    const v6, 0x7f0205b8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_1

    .line 1020
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    .line 1021
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setHoverPopupType(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0341

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f0205b4

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setBackgroundResource(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v7}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    div-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButtonPadding:I

    div-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 1029
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1031
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->addView(Landroid/view/View;)V

    .line 1034
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1035
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mIsVoLTEEnabled:Z

    if-eqz v0, :cond_6

    .line 1036
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1037
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f0205ba

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 1051
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 1053
    return-void

    .line 1039
    :cond_3
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    goto :goto_0

    .line 1041
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f0205b7

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    goto :goto_0

    .line 1045
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    goto :goto_0

    .line 1048
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v7}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .parameter "cursor"
    .parameter "phoneticNameColumnIndex"

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1461
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1462
    .local v0, phoneticNameSize:I
    if-eqz v0, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1467
    :goto_0
    return-void

    .line 1465
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .parameter "cursor"
    .parameter "presenceColumnIndex"
    .parameter "contactStatusColumnIndex"

    .prologue
    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1535
    .local v1, presence:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1536
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1537
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1539
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    const/4 v2, 0x0

    .line 1542
    .local v2, statusMessage:Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1543
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1547
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1548
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1550
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1551
    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 1557
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1558
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1611
    :goto_0
    return-void

    .line 1562
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1565
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1566
    if-eqz v2, :cond_2

    const-string v1, "deferred_snippeting"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1567
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1569
    if-gez v1, :cond_1

    move-object v1, v7

    :goto_1
    const-string v4, "deferred_snippeting_query"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\u2026"

    const/4 v6, 0x5

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/provider/ContactsContract;->snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1580
    :goto_2
    if-eqz v4, :cond_8

    .line 1581
    const/4 v0, 0x0

    .line 1582
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1583
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1584
    if-ne v1, v8, :cond_3

    .line 1610
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 1577
    goto :goto_2

    .line 1587
    :cond_3
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 1588
    if-eq v1, v8, :cond_4

    .line 1589
    add-int/lit8 v0, v1, 0x1

    .line 1591
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1592
    if-eq v1, v8, :cond_7

    .line 1593
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1594
    if-eq v1, v8, :cond_7

    .line 1599
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1600
    :goto_5
    if-ge v0, v1, :cond_6

    .line 1601
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1602
    if-eq v5, v3, :cond_5

    if-eq v5, v3, :cond_5

    .line 1604
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1600
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1607
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    move-object v7, v4

    goto :goto_3
.end method

.method public showStarredIcon(Landroid/database/Cursor;I)V
    .locals 3
    .parameter "cursor"
    .parameter "starredColumnIndex"

    .prologue
    const/4 v1, 0x0

    .line 1757
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1758
    .local v0, starred:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1759
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1760
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1768
    :cond_0
    :goto_1
    return-void

    .end local v0           #starred:Z
    :cond_1
    move v0, v1

    .line 1757
    goto :goto_0

    .line 1764
    .restart local v0       #starred:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStarredIcon()Landroid/widget/ImageView;

    .line 1765
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1766
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.class public Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;
.super Ljava/lang/Object;
.source "DialpadListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# static fields
.field private static isVoLTEEnabled:Z


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mLastDrawVisible:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 6
    .parameter "context"
    .parameter "listView"

    .prologue
    const v5, 0x7f0d0425

    const v4, 0x7f0d0341

    const v3, 0x7f0c009d

    const v2, 0x7f02034b

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mHasPhoneNumber:Z

    .line 63
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectHeight:I

    .line 64
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectWidth:I

    .line 65
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawVisible:I

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    sget-boolean v0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->isVoLTEEnabled:Z

    if-eqz v0, :cond_4

    .line 105
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 123
    const-string v0, "DialpadListSweepActionHandler"

    const-string v1, "========= DIVYA true constructor ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0350

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 144
    return-void

    .line 110
    :cond_1
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0424

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020654

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 128
    const-string v0, "DialpadListSweepActionHandler"

    const-string v1, "========= DIVYA false constructor ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 13
    .parameter "canvas"
    .parameter "sweepText"
    .parameter "drawProgress"
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    .line 346
    const/high16 v9, 0x3fa0

    const v10, 0x3e4ccccd

    sub-float v10, p3, v10

    mul-float v3, v9, v10

    .line 348
    .local v3, opacity:F
    float-to-double v9, v3

    const-wide v11, 0x3fa999999999999aL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 349
    const/4 v3, 0x0

    .line 352
    :cond_0
    const/high16 v9, 0x437f

    mul-float/2addr v9, v3

    float-to-int v7, v9

    .line 353
    .local v7, textColor:I
    const/high16 v9, 0x437f

    mul-float/2addr v9, v3

    float-to-int v6, v9

    .line 355
    .local v6, shadowColor:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 356
    .local v5, saveCount:I
    new-instance v8, Landroid/graphics/Paint;

    const/16 v9, 0x101

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 357
    .local v8, textPaint:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 358
    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 359
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "huge_font"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 360
    iget-object v9, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 361
    .local v2, SweepActionBarHugeTextSize:I
    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    div-int/lit8 v9, v2, 0x2

    iget v10, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v9, v10

    int-to-float v0, v9

    move/from16 p5, v0

    .line 369
    .end local v2           #SweepActionBarHugeTextSize:I
    :goto_0
    const/4 v7, -0x1

    .line 370
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p1, p2, v0, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 374
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 375
    return-void

    .line 364
    :cond_1
    iget v9, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private setupDrawablesBounds(II)V
    .locals 5
    .parameter "height"
    .parameter "top"

    .prologue
    const/4 v4, 0x0

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v0, tempDrawableRect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 396
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 398
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 404
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 406
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 408
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 412
    return-void
.end method


# virtual methods
.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 7
    .parameter "itemIndex"

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v4, "DialpadListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ItemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v4, "DialpadListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ListView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v4, "DialpadListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ChildCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 154
    .local v2, sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, listItem:Landroid/view/View;
    const/4 v1, 0x0

    .line 167
    .local v1, listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 168
    const v4, 0x7f0901d2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    const-string v4, "DialpadListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction =======>>>listItem=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listItemWithoutHeaderAndBottomDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 186
    .end local v2           #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :goto_0
    return-object v2

    .restart local v2       #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_0
    move-object v2, v3

    .line 173
    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 182
    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "context"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rect"
    .parameter "canvas"

    .prologue
    .line 193
    const-string v1, "DialpadListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rect.height====>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    :cond_0
    const/4 v9, 0x1

    .line 198
    .local v9, isTouching:Z
    :goto_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    const/4 v8, 0x1

    .line 199
    .local v8, isDragging:Z
    :goto_1
    const/4 v7, 0x0

    .line 201
    .local v7, SweepTop:I
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 202
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1, v7}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->setupDrawablesBounds(II)V

    .line 203
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectHeight:I

    .line 204
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mLastDrawRectWidth:I

    .line 210
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    .line 211
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 336
    :cond_3
    :goto_2
    return-void

    .line 196
    .end local v7           #SweepTop:I
    .end local v8           #isDragging:Z
    .end local v9           #isTouching:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 198
    .restart local v9       #isTouching:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 216
    .restart local v7       #SweepTop:I
    .restart local v8       #isDragging:Z
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    if-eqz v9, :cond_3

    .line 220
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 221
    .local v10, saveCount:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 228
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 240
    .end local v10           #saveCount:I
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_a

    .line 241
    move v4, p3

    .line 243
    .local v4, drawProgress:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v4, v1

    if-lez v1, :cond_8

    .line 244
    const/high16 v4, 0x3f80

    .line 248
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 253
    .restart local v10       #saveCount:I
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3

    .line 288
    .end local v4           #drawProgress:F
    .end local v10           #saveCount:I
    :cond_a
    const/high16 v1, -0x4080

    mul-float v4, v1, p3

    .line 290
    .restart local v4       #drawProgress:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v4, v1

    if-lez v1, :cond_b

    .line 291
    const/high16 v4, 0x3f80

    .line 295
    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 301
    .restart local v10       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 309
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 310
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 330
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    .line 340
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .parameter "hasPhoneNumber"

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->mHasPhoneNumber:Z

    .line 416
    return-void
.end method

.class public Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
.super Landroid/widget/EditText;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mFontSize:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F

.field private mScaledWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 110
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 50
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 55
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 65
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 70
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 72
    iput v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 81
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 121
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 124
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 279
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 289
    return-void
.end method

.method public getFontSizeRatio()D
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :pswitch_0
    const-wide/high16 v0, 0x3ff0

    .line 268
    :goto_0
    return-wide v0

    .line 260
    :pswitch_1
    const-wide v0, 0x3feb333333333333L

    goto :goto_0

    .line 262
    :pswitch_2
    const-wide v0, 0x3fedc28f5c28f5c3L

    goto :goto_0

    .line 268
    :pswitch_3
    const-wide v0, 0x3ff4cccccccccccdL

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v10, 0x0

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 300
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 302
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 303
    .local v2, textWidth:F
    const/4 v6, 0x0

    .line 304
    .local v6, measureWidth:F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getFontSizeRatio()D

    move-result-wide v8

    div-double/2addr v3, v8

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v7, v0

    .line 305
    .local v7, textSize:F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 306
    .local v1, textPaint:Landroid/text/TextPaint;
    const-string v0, "feature_qvga"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 307
    const/high16 v0, 0x4000

    mul-float/2addr v0, v2

    const/high16 v3, 0x40e0

    sub-float v2, v0, v3

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 311
    if-ge p3, p4, :cond_4

    .line 313
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 316
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 317
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 323
    cmpl-float v0, v6, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    .line 350
    :cond_2
    :goto_1
    return-void

    .line 320
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 325
    :cond_4
    if-le p3, p4, :cond_2

    .line 327
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 330
    :cond_5
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v7, v0

    .line 331
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 337
    cmpl-float v0, v6, v2

    if-lez v0, :cond_8

    .line 338
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 339
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 345
    goto :goto_1

    .line 334
    :cond_6
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 342
    :cond_7
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 347
    :cond_8
    cmpg-float v0, v6, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 140
    .local v1, ret:Z
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 142
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    :cond_0
    return v1
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    .line 154
    .local v0, added:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v2

    .line 155
    .local v2, removed:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 156
    .local v1, length:I
    if-le v0, v2, :cond_2

    .line 157
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 158
    sub-int v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 159
    sub-int v3, v0, v2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 172
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 173
    :cond_1
    :goto_1
    return-void

    .line 160
    .restart local v0       #added:I
    .restart local v1       #length:I
    .restart local v2       #removed:I
    :cond_2
    if-le v2, v0, :cond_1

    .line 161
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 162
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 163
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    goto :goto_0

    .line 167
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 254
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mFontSize:I

    .line 255
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 215
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 216
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 229
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 230
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter "scaledDensity"

    .prologue
    .line 201
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 202
    return-void
.end method

.method public setScaledWidth(F)V
    .locals 0
    .parameter "scaleWidth"

    .prologue
    .line 250
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 251
    return-void
.end method

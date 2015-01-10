.class public Lcom/android/contacts/list/ContactListPinnedHeaderView;
.super Landroid/view/ViewGroup;
.source "ContactListPinnedHeaderView.java"


# instance fields
.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountTextView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private mHeaderBackgroundHeight:I

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xc

    const/high16 v5, -0x100

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    .line 68
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    .line 70
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    .line 72
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderUnderlineHeight:I

    .line 74
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderUnderlineColor:I

    .line 76
    const/16 v1, 0x16

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    .line 78
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    .line 80
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingRight:I

    .line 82
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContactsCountTextColor:I

    .line 84
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountViewTextSize:I

    .line 87
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 96
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextIndent:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method private isViewMeasurable(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 199
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


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 130
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v0, v1, v2

    .line 133
    .local v0, width:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    sub-int v3, p4, p2

    iget v4, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 138
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->isViewMeasurable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mPaddingRight:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, -0x8000

    .line 114
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->resolveSize(II)I

    move-result v0

    .line 116
    .local v0, width:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 119
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->isViewMeasurable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 125
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderBackgroundHeight:I

    iget v2, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderUnderlineHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 126
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 180
    return-void
.end method

.method public setCountView(Ljava/lang/String;)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListPinnedHeaderView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
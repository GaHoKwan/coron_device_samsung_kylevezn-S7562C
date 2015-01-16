.class public Lcom/sec/widget/lso/internal/LSOContainerView;
.super Landroid/widget/LinearLayout;
.source "LSOContainerView.java"


# instance fields
.field private final lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemContainer;)V
    .locals 5
    .parameter "context"
    .parameter "lsoContainer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/sec/widget/lso/internal/LSOContainerView;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/sec/widget/lso/internal/LSOContainerView;->lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;

    .line 56
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    :goto_0
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemContainer;->getOrientation()Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    move-result-object v1

    sget-object v2, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {p2, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 75
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 77
    invoke-direct {p0}, Lcom/sec/widget/lso/internal/LSOContainerView;->addViews()V

    .line 78
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private addViews()V
    .locals 6

    .prologue
    .line 81
    iget-object v5, p0, Lcom/sec/widget/lso/internal/LSOContainerView;->lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-virtual {v5}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v2

    .line 83
    .local v2, numChildViews:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 84
    iget-object v5, p0, Lcom/sec/widget/lso/internal/LSOContainerView;->lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-virtual {v5, v0}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v1

    .line 85
    .local v1, lsoData:Landroid/app/enterprise/lso/LSOItemData;
    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/sec/widget/lso/internal/LSOContainerView;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sec/widget/lso/internal/LSOItemView;->getView(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemData;)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 90
    invoke-direct {p0, v1}, Lcom/sec/widget/lso/internal/LSOContainerView;->getLayoutParams(Landroid/app/enterprise/lso/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 91
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 97
    .end local v1           #lsoData:Landroid/app/enterprise/lso/LSOItemData;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private getLayoutParams(Landroid/app/enterprise/lso/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 8
    .parameter "lsoData"

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v5}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v6}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v7}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    :cond_0
    const/4 v3, -0x2

    .line 106
    .local v3, width:I
    const/4 v0, -0x2

    .line 107
    .local v0, height:I
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWeight()F

    move-result v2

    .line 109
    .local v2, weight:F
    invoke-virtual {p1, v5}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWidth()I

    move-result v3

    .line 113
    :cond_1
    invoke-virtual {p1, v6}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getHeight()I

    move-result v0

    .line 117
    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 118
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 123
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual {p1, v7}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 128
    .end local v0           #height:I
    .end local v2           #weight:F
    .end local v3           #width:I
    :cond_3
    return-object v1

    .line 120
    .restart local v0       #height:I
    .restart local v2       #weight:F
    .restart local v3       #width:I
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0
.end method

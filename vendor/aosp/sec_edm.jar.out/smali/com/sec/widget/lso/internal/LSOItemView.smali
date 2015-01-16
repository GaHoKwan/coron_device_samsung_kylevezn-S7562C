.class public Lcom/sec/widget/lso/internal/LSOItemView;
.super Ljava/lang/Object;
.source "LSOItemView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemData;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "lsoData"

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v2

    .line 53
    .local v2, viewType:B
    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_0
    if-nez v1, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 92
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v1

    .line 55
    .restart local v1       #view:Landroid/view/View;
    :pswitch_0
    new-instance v1, Landroid/widget/Space;

    .end local v1           #view:Landroid/view/View;
    invoke-direct {v1, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v1, Lcom/sec/widget/lso/internal/LSOTextView;

    .end local v1           #view:Landroid/view/View;
    move-object v3, p1

    check-cast v3, Landroid/app/enterprise/lso/LSOItemText;

    invoke-direct {v1, p0, v3}, Lcom/sec/widget/lso/internal/LSOTextView;-><init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemText;)V

    .line 60
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 63
    :pswitch_2
    new-instance v1, Lcom/sec/widget/lso/internal/LSOImageView;

    .end local v1           #view:Landroid/view/View;
    move-object v3, p1

    check-cast v3, Landroid/app/enterprise/lso/LSOItemImage;

    invoke-direct {v1, p0, v3}, Lcom/sec/widget/lso/internal/LSOImageView;-><init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemImage;)V

    .line 64
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .line 67
    :pswitch_3
    new-instance v1, Lcom/sec/widget/lso/internal/LSOContainerView;

    .end local v1           #view:Landroid/view/View;
    move-object v3, p1

    check-cast v3, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v1, p0, v3}, Lcom/sec/widget/lso/internal/LSOContainerView;-><init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemContainer;)V

    .line 68
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    :pswitch_4
    move-object v3, p1

    .line 71
    check-cast v3, Landroid/app/enterprise/lso/LSOItemWidget;

    invoke-static {p0, v3}, Lcom/sec/widget/lso/internal/LSOWidgetView;->getWidget(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemWidget;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getBgColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 85
    .local v0, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    const-string v3, "android:alpha"

    invoke-virtual {v0, v3}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "android:alpha"

    invoke-virtual {v0, v3}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class public Lcom/sec/widget/lso/internal/LSOTextView;
.super Landroid/widget/TextView;
.source "LSOTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/widget/lso/internal/LSOTextView$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemText;)V
    .locals 0
    .parameter "context"
    .parameter "lsoText"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/sec/widget/lso/internal/LSOTextView;->init(Landroid/app/enterprise/lso/LSOItemText;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getTextSize(Landroid/app/enterprise/lso/LSOItemText;)F
    .locals 3
    .parameter "lsoText"

    .prologue
    .line 94
    invoke-static {}, Landroid/app/enterprise/lso/LSOUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextSize()Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    .line 123
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextSize()Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    .line 99
    .local v0, nativeVal:F
    sget-object v1, Lcom/sec/widget/lso/internal/LSOTextView$1;->$SwitchMap$android$app$enterprise$lso$LSOItemText$LSOTextSize:[I

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextSize()Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    const v0, 0x3feccccd

    .line 102
    goto :goto_0

    .line 105
    :pswitch_1
    const v0, 0x3ff70a3d

    .line 106
    goto :goto_0

    .line 109
    :pswitch_2
    const/high16 v0, 0x4000

    .line 110
    goto :goto_0

    .line 113
    :pswitch_3
    const v0, 0x40266666

    .line 114
    goto :goto_0

    .line 117
    :pswitch_4
    const v0, 0x40666666

    .line 118
    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public init(Landroid/app/enterprise/lso/LSOItemText;)V
    .locals 4
    .parameter "lsoText"

    .prologue
    .line 58
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sec/widget/lso/internal/LSOTextView;->getTextSize(Landroid/app/enterprise/lso/LSOItemText;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->getTextStyle()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    :cond_2
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 80
    .local v0, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    const-string v1, "android:maxLines"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    const-string v1, "android:maxLines"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    :cond_3
    const-string v1, "android:singleLine"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const-string v1, "android:singleLine"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 90
    .end local v0           #attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    :cond_4
    return-void

    .line 65
    :cond_5
    const/high16 v1, -0x100

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

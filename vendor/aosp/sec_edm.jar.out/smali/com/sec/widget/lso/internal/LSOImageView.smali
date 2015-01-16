.class public Lcom/sec/widget/lso/internal/LSOImageView;
.super Landroid/widget/ImageView;
.source "LSOImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemImage;)V
    .locals 5
    .parameter "context"
    .parameter "lsoImage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Landroid/app/enterprise/lso/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v3

    .line 52
    .local v3, maxWidth:I
    invoke-static {p1}, Landroid/app/enterprise/lso/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v2

    .line 54
    .local v2, maxHeight:I
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 56
    .local v0, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    const-string v4, "android:maxWidth"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "android:maxWidth"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 60
    :cond_0
    const-string v4, "android:maxHeight"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    const-string v4, "android:maxHeight"

    invoke-virtual {v0, v4}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .end local v0           #attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    :cond_1
    const/16 v4, 0x80

    invoke-virtual {p2, v4}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/app/enterprise/lso/LSOUtils;->getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    const/16 v4, 0x200

    invoke-virtual {p2, v4}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-virtual {p2}, Landroid/app/enterprise/lso/LSOItemImage;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_3
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

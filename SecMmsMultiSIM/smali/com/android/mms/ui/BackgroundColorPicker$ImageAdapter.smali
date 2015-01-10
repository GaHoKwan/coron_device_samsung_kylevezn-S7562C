.class Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackgroundColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    .line 652
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    .line 653
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 657
    sget v0, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 661
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 665
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v5, 0x42c8

    const/4 v4, 0x1

    .line 671
    if-nez p2, :cond_2

    .line 672
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, imageView:Landroid/widget/ImageView;
    :goto_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-ne p1, v1, :cond_3

    .line 682
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    :goto_1
    if-nez p1, :cond_0

    .line 688
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 689
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 692
    :cond_0
    sget v1, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 694
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->access$500(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 702
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v1, :cond_1

    .line 703
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 707
    :cond_1
    return-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_2
    move-object v0, p2

    .line 674
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #imageView:Landroid/widget/ImageView;
    goto :goto_0

    .line 684
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 697
    :cond_4
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.class Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BubbleTypePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BubbleTypePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private final BUBBLE_STYLE_IMAGE_HEIGHT:I

.field private final BUBBLE_STYLE_IMAGE_WIDTH:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter "c"
    .parameter "type"

    .prologue
    const/16 v4, 0x140

    const/16 v3, 0xf0

    const/16 v2, 0x50

    const/16 v1, 0x64

    .line 316
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 307
    iput v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->BUBBLE_STYLE_IMAGE_WIDTH:I

    .line 309
    iput v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->BUBBLE_STYLE_IMAGE_HEIGHT:I

    .line 317
    iput-object p2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    .line 319
    iput p3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v0, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v3, :cond_2

    .line 323
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageWidth:I

    .line 324
    iput v2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageHeight:I

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_2
    iput v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageWidth:I

    .line 327
    iput v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageHeight:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 334
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v0, v0

    .line 336
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 340
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 341
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 347
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f02029d

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 353
    if-nez p2, :cond_3

    .line 354
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, imageView:Landroid/widget/ImageView;
    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 361
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 364
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mImageHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-ne v1, v7, :cond_4

    .line 370
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-ne v1, v6, :cond_6

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-ne p1, v1, :cond_5

    .line 376
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 398
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v1}, Lcom/android/mms/ui/BubbleTypePicker;->access$200(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_8

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-le v1, v7, :cond_8

    .line 399
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v3, v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 401
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$202(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    .line 408
    :cond_2
    :goto_3
    return-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_3
    move-object v0, p2

    .line 356
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #imageView:Landroid/widget/ImageView;
    goto/16 :goto_0

    .line 372
    :cond_4
    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 382
    :cond_5
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 386
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-ne p1, v1, :cond_7

    .line 387
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 393
    :cond_7
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 402
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v1}, Lcom/android/mms/ui/BubbleTypePicker;->access$300(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->mType:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-le v1, v7, :cond_2

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v3, v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 405
    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #setter for: Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/BubbleTypePicker;->access$302(Lcom/android/mms/ui/BubbleTypePicker;Z)Z

    goto :goto_3
.end method

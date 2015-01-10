.class public Lcom/samsung/mms/location/PinBubbleView;
.super Ljava/lang/Object;
.source "PinBubbleView.java"


# static fields
.field public static final CLIPPED_BUBBLE:I = 0x1

.field public static final CLIPPED_FAVORITE:I = 0x2

.field public static final CLIPPED_NOTHING:I = 0x0

.field private static final PADDING_ACCURACY_X:I = 0x6

.field private static final PADDING_ACCURACY_X_TEXT:F = 3.33f

.field private static final PADDING_ACCURACY_Y:I = 0x7

.field private static final PADDING_ACCURACY_Y_TEXT:F = 65.0f

.field private static final PADDING_BOTTOM_MEDIA:I = 0x12

.field private static final PADDING_BOTTOM_TEXT:I = 0x24

.field private static final PADDING_MAIN_X:I = 0x0

.field private static final PADDING_MAIN_Y:I = 0x1

.field private static final PADDING_MEDIA:I = 0x1

.field private static final PADDING_SECONDARY1_X:I = 0x2

.field private static final PADDING_SECONDARY1_Y:I = 0x3

.field private static final PADDING_SECONDARY2_X:I = 0x4

.field private static final PADDING_SECONDARY2_Y:I = 0x5

.field private static final PADDING_SUBTITLE1_X_MEDIA:F = 3.33f

.field private static final PADDING_SUBTITLE1_X_TEXT:F = 3.33f

.field private static final PADDING_SUBTITLE1_Y_MEDIA:F = 19.33f

.field private static final PADDING_SUBTITLE1_Y_TEXT:F = 34.66f

.field private static final PADDING_SUBTITLE2_X_MEDIA:F = 3.33f

.field private static final PADDING_SUBTITLE2_X_TEXT:F = 3.33f

.field private static final PADDING_SUBTITLE2_Y_MEDIA:F = 35.0f

.field private static final PADDING_SUBTITLE2_Y_TEXT:F = 49.33f

.field private static final PADDING_TITLE:I = 0x0

.field private static final PADDING_TITLE_TEXT:I = 0x14

.field private static final PADDING_TITLE_X_MEDIA:F = 3.33f

.field private static final PADDING_TITLE_X_TEXT:F = 3.33f

.field private static final PADDING_TITLE_Y_MEDIA:F = 4.66f

.field private static final PADDING_TITLE_Y_TEXT:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "PinBubbleView"

.field private static final TEXT_SIZE_LARGE:I = 0x19

.field private static final TEXT_SIZE_MEDIUM:I = 0x12

.field private static final TEXT_SIZE_SMALL:I = 0xc


# instance fields
.field private accuracyText:Ljava/lang/String;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private final bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

.field private bubbleMediaBitmap:Landroid/graphics/Bitmap;

.field private final bubblePadding:[[F

.field private final bubbleRectangle:Lcom/nbi/map/data/Rectangle;

.field private final bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private final bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private isFavorite:Z

.field private isLoading:Z

.field private isMedia:Z

.field private final loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

.field private mContext:Landroid/content/Context;

.field private padX:I

.field private padY:I

.field private final paintAccuracy:Landroid/graphics/Paint;

.field private final paintLoading:Landroid/graphics/Paint;

.field private final paintSubtitle1:Landroid/graphics/Paint;

.field private final paintSubtitle2:Landroid/graphics/Paint;

.field private final paintTitle:Landroid/graphics/Paint;

.field private subTitleText1:Ljava/lang/String;

.field private subTitleText2:Ljava/lang/String;

.field private textStartX:F

.field private textStartY:F

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 9
    .parameter "context"
    .parameter "windowManager"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, -0x100

    const v8, 0x40551eb8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    .line 98
    iput-boolean v7, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    .line 110
    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    .line 116
    const v2, 0x7f020196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    .line 117
    const v2, 0x7f0200f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    .line 121
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    const/high16 v3, 0x4190

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    .line 127
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    const/high16 v3, 0x4140

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    .line 133
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    const/high16 v3, 0x4140

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    .line 140
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    .line 142
    invoke-direct {p0, v0}, Lcom/samsung/mms/location/PinBubbleView;->initLoadingBubble(Landroid/util/DisplayMetrics;)V

    .line 144
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    .line 145
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    const/high16 v3, -0x4180

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 148
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    const/high16 v3, 0x4140

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    const/4 v2, 0x2

    const/16 v3, 0x8

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    .line 153
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    aput v3, v2, v7

    .line 154
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/high16 v3, 0x41a0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    .line 155
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 156
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x3

    const v4, 0x420aa3d7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 157
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x4

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 158
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x5

    const v4, 0x424551ec

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 159
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 160
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x7

    const/high16 v4, 0x4282

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 162
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    aput v3, v2, v7

    .line 163
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const v3, 0x40951eb8

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    .line 164
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 165
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x3

    const v4, 0x419aa3d7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 166
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x4

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 167
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x5

    const/high16 v4, 0x420c

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 168
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    .line 169
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x7

    const/high16 v4, 0x4282

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 171
    iput-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    .line 172
    return-void
.end method

.method private initLoadingBubble(Landroid/util/DisplayMetrics;)V
    .locals 7
    .parameter "metrics"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 224
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, -0x4180

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 225
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, 0x4190

    iget v4, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v0, loadingBounds:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a03f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, strLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4282

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    .line 233
    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x4058600000000000L

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    .line 234
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawMediaBubble(Landroid/graphics/Canvas;)V

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/PinBubbleView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawLoadingBubble(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawAddressBubble(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawAddressBubble(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 259
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v10}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    iget-boolean v5, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 268
    .local v3, favorite:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 269
    .local v2, bubbleFramePadding:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 270
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v1, v5, v6

    .line 271
    .local v1, bubHeight:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 272
    .local v4, picHeight:I
    if-nez v4, :cond_0

    .line 273
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 275
    :cond_0
    sub-int v5, v1, v4

    div-int/lit8 v0, v5, 0x2

    .line 277
    .local v0, bitmapDrawY:I
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v8

    add-int/2addr v8, v0

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v7, v7, v11

    aget v7, v7, v11

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v8, v8, v11

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v7, v7, v11

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v8, v8, v11

    const/4 v9, 0x3

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_1
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 299
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v7, v7, v11

    aget v7, v7, v12

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v8, v8, v11

    aget v8, v8, v13

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v7, v7, v11

    const/4 v8, 0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v8, v8, v11

    const/4 v9, 0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    :cond_2
    :goto_1
    return-void

    .line 266
    .end local v0           #bitmapDrawY:I
    .end local v1           #bubHeight:I
    .end local v2           #bubbleFramePadding:Landroid/graphics/Rect;
    .end local v3           #favorite:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #picHeight:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    .line 312
    .restart local v0       #bitmapDrawY:I
    .restart local v1       #bubHeight:I
    .restart local v2       #bubbleFramePadding:Landroid/graphics/Rect;
    .restart local v3       #favorite:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #picHeight:I
    :cond_4
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v7, v7, v11

    aget v7, v7, v12

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v8, v8, v11

    aget v8, v8, v13

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawLoadingBubble(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 199
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v10}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a03f9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, strLoading:Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v0, loadingBounds:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 211
    .local v4, width:I
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 212
    .local v1, pos_x:I
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 214
    .local v2, pos_y:I
    int-to-float v5, v1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method protected drawMediaBubble(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    .line 329
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    aget v3, v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x2

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x4

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    :cond_1
    return-void
.end method

.method public isInPinbuble(FF)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 540
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicked at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle Top "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle Left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int v1, v4, v5

    .line 547
    .local v1, starLeft:I
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, 0xc

    .line 548
    .local v2, starRight:I
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v3

    .line 549
    .local v3, starTop:I
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 551
    .local v0, starBottom:I
    iget-boolean v4, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    if-nez v4, :cond_0

    .line 553
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    .line 556
    const-string v4, "NGM"

    const-string v5, "Clicked on Star"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v4, 0x2

    .line 565
    .end local v0           #starBottom:I
    .end local v1           #starLeft:I
    .end local v2           #starRight:I
    .end local v3           #starTop:I
    :goto_0
    return v4

    .line 561
    .restart local v0       #starBottom:I
    .restart local v1       #starLeft:I
    .restart local v2       #starRight:I
    .restart local v3       #starTop:I
    :cond_0
    const-string v4, "NGM"

    const-string v5, "Not Clicked on Star"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v4, 0x1

    goto :goto_0

    .line 565
    .end local v0           #starBottom:I
    .end local v1           #starLeft:I
    .end local v2           #starRight:I
    .end local v3           #starTop:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    return v0
.end method

.method public setAddressData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/nbi/map/data/Rectangle;
    .locals 13
    .parameter "title"
    .parameter "subTitle1"
    .parameter "subTitle2"
    .parameter "accuracy"
    .parameter "favorite"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 376
    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    .line 380
    :cond_0
    :goto_0
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    .line 381
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 382
    iput-object p2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    .line 384
    :cond_1
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    .line 385
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 386
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    .line 388
    :cond_2
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    .line 389
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    .line 390
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    .line 392
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 393
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 394
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 396
    iget-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    .line 397
    iget-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    .line 399
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 400
    .local v5, titleBounds:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 401
    .local v3, subTitleBounds1:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 402
    .local v4, subTitleBounds2:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 404
    .local v1, accuracyBounds:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 405
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 406
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 407
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 409
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    .line 410
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    .line 412
    const-string v8, "PinBubbleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bubble width is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v7, "PinBubbleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bubble height is:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    :goto_5
    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    :goto_6
    add-int/2addr v6, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    :goto_7
    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v8, v6}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    .line 432
    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    :goto_9
    add-int/2addr v9, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_a
    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x24

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 439
    .local v2, frameInsets:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 441
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    .line 442
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    .line 443
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    .line 444
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    .line 446
    const-string v6, "PinBubbleView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bubble width After padding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v6, "PinBubbleView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bubble height After padding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_3
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    .line 451
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    .line 453
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    .line 454
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    .line 478
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v6

    .line 377
    .end local v1           #accuracyBounds:Landroid/graphics/Rect;
    .end local v2           #frameInsets:Landroid/graphics/Rect;
    .end local v3           #subTitleBounds1:Landroid/graphics/Rect;
    .end local v4           #subTitleBounds2:Landroid/graphics/Rect;
    .end local v5           #titleBounds:Landroid/graphics/Rect;
    :cond_4
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    const-string v6, "Loading..."

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    goto/16 :goto_0

    .line 396
    :cond_5
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto/16 :goto_1

    .line 397
    :cond_6
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto/16 :goto_2

    .line 412
    .restart local v1       #accuracyBounds:Landroid/graphics/Rect;
    .restart local v3       #subTitleBounds1:Landroid/graphics/Rect;
    .restart local v4       #subTitleBounds2:Landroid/graphics/Rect;
    .restart local v5       #titleBounds:Landroid/graphics/Rect;
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto/16 :goto_4

    .line 416
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_6

    .line 428
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto/16 :goto_8

    .line 432
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_a
.end method

.method public setImageData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nbi/map/data/Rectangle;
    .locals 9
    .parameter "mediaImage"
    .parameter "title"
    .parameter "subTitle1"
    .parameter "subTitle2"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 491
    iput-object p2, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    .line 492
    iput-object p3, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    .line 493
    iput-object p4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    .line 494
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    .line 495
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    .line 497
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 498
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 499
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 501
    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    .line 503
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 504
    .local v3, titleBounds:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 505
    .local v1, subTitleBounds1:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 507
    .local v2, subTitleBounds2:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 508
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 509
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 511
    const-string v5, "PinBubbleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetImageData height is:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, p5}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    .line 515
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, p6}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    .line 516
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    .line 517
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {v5, v4}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    .line 520
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 521
    .local v0, frameInsets:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    .line 524
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    .line 525
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    .line 526
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    .line 529
    :cond_0
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    .line 530
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    .line 532
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    .line 533
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    .line 535
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v4

    .line 511
    .end local v0           #frameInsets:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_0

    .line 517
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_1
.end method

.method public setIsLoading(Z)V
    .locals 0
    .parameter "_isLoading"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    .line 238
    return-void
.end method

.method public setLoadingData(II)Lcom/nbi/map/data/Rectangle;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    .line 247
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v0
.end method

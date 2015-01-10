.class final Lcom/nbi/map/android/c;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field nz:Lcom/nbi/map/android/MapView;

.field private qm:I

.field private qn:I

.field private qo:I

.field qp:Lcom/nbi/map/android/a;

.field qq:Lcom/nbi/map/android/a;

.field qr:Lcom/nbi/map/android/a;

.field qs:Lcom/nbi/map/android/a;

.field qt:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nbi/map/android/MapView;)V
    .locals 3

    const/high16 v2, 0x40e0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    iput-object p1, p0, Lcom/nbi/map/android/c;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nbi/map/android/c;->qm:I

    mul-float v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nbi/map/android/c;->qn:I

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/nbi/map/android/c;->qo:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/nbi/map/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->ig()Lnbisdk/mt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p5}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    const v4, -0x101009e

    aput v4, v2, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v6, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nbi/map/android/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/android/c;->iX()V

    return-void
.end method

.method static synthetic b(Lcom/nbi/map/android/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/android/c;->iY()V

    return-void
.end method

.method private iX()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getZoomLevel()I

    move-result v3

    iget-object v0, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->cB()I

    move-result v0

    iget-object v4, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v4}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/b;->cA()I

    move-result v4

    iget-object v5, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    if-ge v3, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    if-le v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private iY()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nbi/map/android/c;->qt:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->pe()Lcom/nbi/map/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isTrafficLayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final iW()V
    .locals 7

    iget-object v1, p0, Lcom/nbi/map/android/c;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/map/android/a;

    invoke-direct {v0, v1}, Lcom/nbi/map/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    iget-object v2, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    const-string v3, "zoomout_hot.png"

    const-string v4, "zoomout_disabled.png"

    const-string v5, "zoomout.png"

    new-instance v6, Lcom/nbi/map/android/c$3;

    invoke-direct {v6, p0}, Lcom/nbi/map/android/c$3;-><init>(Lcom/nbi/map/android/c;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nbi/map/android/c;->a(Landroid/content/Context;Lcom/nbi/map/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/c;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nbi/map/android/a;

    invoke-direct {v0, v1}, Lcom/nbi/map/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    iget-object v2, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    const-string v3, "zoomin_hot.png"

    const-string v4, "zoomin_disabled.png"

    const-string v5, "zoomin.png"

    new-instance v6, Lcom/nbi/map/android/c$4;

    invoke-direct {v6, p0}, Lcom/nbi/map/android/c$4;-><init>(Lcom/nbi/map/android/c;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nbi/map/android/c;->a(Landroid/content/Context;Lcom/nbi/map/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/c;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nbi/map/android/a;

    invoke-direct {v0, v1}, Lcom/nbi/map/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    iget-object v2, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    const-string v3, "traffic_hide_hot.png"

    const-string v4, "traffic_disabled.png"

    const-string v5, "traffic_hide.png"

    new-instance v6, Lcom/nbi/map/android/c$1;

    invoke-direct {v6, p0}, Lcom/nbi/map/android/c$1;-><init>(Lcom/nbi/map/android/c;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nbi/map/android/c;->a(Landroid/content/Context;Lcom/nbi/map/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/nbi/map/android/c;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/nbi/map/android/a;

    invoke-direct {v0, v1}, Lcom/nbi/map/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    iget-object v2, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    const-string v3, "traffic_hot.png"

    const-string v4, "traffic_disabled.png"

    const-string v5, "traffic_show.png"

    new-instance v6, Lcom/nbi/map/android/c$2;

    invoke-direct {v6, p0}, Lcom/nbi/map/android/c$2;-><init>(Lcom/nbi/map/android/c;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nbi/map/android/c;->a(Landroid/content/Context;Lcom/nbi/map/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/nbi/map/android/c;->iX()V

    invoke-direct {p0}, Lcom/nbi/map/android/c;->iY()V

    return-void
.end method

.method final iZ()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/android/c;->iX()V

    invoke-direct {p0}, Lcom/nbi/map/android/c;->iY()V

    return-void
.end method

.method protected final l(II)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/nbi/map/android/c;->qn:I

    sub-int v1, p1, v0

    iget v0, p0, Lcom/nbi/map/android/c;->qo:I

    sub-int v5, p2, v0

    iget-object v0, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget-object v4, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v5, v4

    iget-object v6, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v4, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v5, v4

    iget-object v6, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    invoke-virtual {v6, v1, v4, v0, v5}, Landroid/view/View;->layout(IIII)V

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    if-nez v1, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    if-eqz v3, :cond_6

    iget v1, p0, Lcom/nbi/map/android/c;->qm:I

    sub-int/2addr v0, v1

    :goto_3
    iget-object v1, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v5, v2

    iget-object v3, p0, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v3, v1, v2, v0, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v5, v2

    iget-object v3, p0, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    invoke-virtual {v3, v1, v2, v0, v5}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/nbi/map/android/c;->qn:I

    sub-int v0, p1, v0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0
.end method

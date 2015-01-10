.class public Lcom/nbi/map/android/PinImage;
.super Ljava/lang/Object;


# instance fields
.field private vG:I

.field private vH:I

.field private vI:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/nbi/map/android/PinImage;-><init>(IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nbi/map/android/PinImage;->vG:I

    iput p2, p0, Lcom/nbi/map/android/PinImage;->vH:I

    iput-object p3, p0, Lcom/nbi/map/android/PinImage;->vI:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/PinImage;->vI:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTipX()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/PinImage;->vG:I

    return v0
.end method

.method public getTipY()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/PinImage;->vH:I

    return v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/PinImage;->vI:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTipX(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/PinImage;->vG:I

    return-void
.end method

.method public setTipY(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/PinImage;->vH:I

    return-void
.end method

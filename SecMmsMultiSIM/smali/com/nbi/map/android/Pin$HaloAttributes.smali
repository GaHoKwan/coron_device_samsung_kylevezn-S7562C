.class public Lcom/nbi/map/android/Pin$HaloAttributes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/Pin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HaloAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_BORDER_COLOR:I = 0x0

.field public static final DEFAULT_BORDER_STYLE:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle; = null

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_FILL_COLOR:I = 0x0

.field public static final DEFAULT_FILL_ENABLE_SETTING:Z = true

.field public static final DEFAULT_MIN_RADIUS_IN_PIXEL_TO_DRAW:I = 0x5

.field public static final DEFAULT_MIN_ZOOM_LEVEL_TO_DRAW:I = 0xa

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_SCREEN_BORDER_COLOR:I = 0x0

.field public static final DEFAULT_SCREEN_BORDER_WIDTH_IN_DP:I = 0x7

.field public static final DEFAULT_STROKE_WIDTH:I = 0x1


# instance fields
.field private Ar:I

.field private As:I

.field private At:Z

.field private Au:I

.field private Av:I

.field private Aw:I

.field private Ax:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

.field private Ay:I

.field private Az:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xff

    const/16 v0, 0xa0

    const/16 v1, 0xd2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_FILL_COLOR:I

    const/16 v0, 0x1e

    const/16 v1, 0x90

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_BORDER_COLOR:I

    sget-object v0, Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;->SOLID:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    sput-object v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_BORDER_STYLE:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    const/16 v0, 0x7b

    const/16 v1, 0xa5

    const/16 v2, 0xcd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_SCREEN_BORDER_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ar:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->As:I

    iput-boolean v1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->At:Z

    sget v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_FILL_COLOR:I

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Au:I

    sget v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_BORDER_COLOR:I

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Av:I

    iput v1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Aw:I

    sget-object v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_BORDER_STYLE:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    iput-object v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ax:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    sget v0, Lcom/nbi/map/android/Pin$HaloAttributes;->DEFAULT_SCREEN_BORDER_COLOR:I

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ay:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Az:I

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Av:I

    return v0
.end method

.method public getBorderStyle()Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ax:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Au:I

    return v0
.end method

.method public getFillColorEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->At:Z

    return v0
.end method

.method public getMinRadiusInPixelToDraw()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->As:I

    return v0
.end method

.method public getMinZoomLevelToDraw()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ar:I

    return v0
.end method

.method public getScreenBorderColor()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ay:I

    return v0
.end method

.method public getScreenBorderWidthInDp()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Az:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Aw:I

    return v0
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Av:I

    return-void
.end method

.method public setBorderStyle(Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ax:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Au:I

    return-void
.end method

.method public setFillColorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->At:Z

    return-void
.end method

.method public setMinRadiusInPixelToDraw(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->As:I

    return-void
.end method

.method public setMinZoomLevelToDraw(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ar:I

    return-void
.end method

.method public setScreenBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Ay:I

    return-void
.end method

.method public setScreenBorderWidthInDp(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Az:I

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    const/16 v0, 0x1e

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_0
    :goto_0
    iput p1, p0, Lcom/nbi/map/android/Pin$HaloAttributes;->Aw:I

    return-void

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

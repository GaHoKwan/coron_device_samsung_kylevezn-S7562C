.class public Lnbisdk/dh;
.super Lnbisdk/eq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/dh$a;,
        Lnbisdk/dh$b;
    }
.end annotation


# static fields
.field private static CR:Z


# instance fields
.field private CB:Lnbisdk/pg;

.field private CC:Lnbisdk/if;

.field private CD:Lnbisdk/if;

.field private CE:Lcom/nbi/map/android/Pin;

.field private CF:Lcom/nbi/map/android/Pin;

.field private CG:I

.field private CH:I

.field private CI:I

.field private CJ:Z

.field private CK:[I

.field private CL:[D

.field private CM:I

.field private CN:I

.field protected CO:Z

.field private CP:I

.field private CQ:J

.field private CS:Lcom/nbi/map/data/Rectangle;

.field private CT:Lnbisdk/gq;

.field private CU:Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;

.field private CV:Lnbisdk/dh$b;

.field private CW:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/if;",
            ">;"
        }
    .end annotation
.end field

.field private eS:Lnbisdk/qk;

.field private eV:Lcom/nbi/map/data/BoundingBox;

.field private eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

.field private eX:Ljava/lang/Object;

.field private iX:Lcom/nbi/map/android/POILayer;

.field private sR:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/eq;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const-string v0, "PinLayer"

    iput-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    iput v1, p0, Lnbisdk/dh;->CG:I

    iput v1, p0, Lnbisdk/dh;->CH:I

    iput v1, p0, Lnbisdk/dh;->CI:I

    iput-boolean v5, p0, Lnbisdk/dh;->CJ:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lnbisdk/dh;->CK:[I

    new-array v0, v2, [D

    iput-object v0, p0, Lnbisdk/dh;->CL:[D

    const/16 v0, 0x14

    iput v0, p0, Lnbisdk/dh;->CM:I

    iput v5, p0, Lnbisdk/dh;->CN:I

    const/16 v0, 0x1f4

    iput v0, p0, Lnbisdk/dh;->CP:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/dh;->CQ:J

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v0, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    new-instance v0, Lnbisdk/pg;

    invoke-direct {v0}, Lnbisdk/pg;-><init>()V

    iput-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    new-instance v0, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v0}, Lcom/nbi/map/data/MapLocation;-><init>()V

    invoke-virtual {p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nbi/map/data/MapLocation;->setLatLon(DD)V

    new-instance v1, Lcom/nbi/map/data/Place;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    new-instance v0, Lcom/nbi/map/android/Pin;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;)V

    iput-object v0, p0, Lnbisdk/dh;->CE:Lcom/nbi/map/android/Pin;

    iget-object v1, p0, Lnbisdk/dh;->CE:Lcom/nbi/map/android/Pin;

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0, v6}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    iget-object v0, p0, Lnbisdk/dh;->CE:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0, v6}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nbi/map/android/PinImage;->setTipX(I)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0, v6}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nbi/map/android/PinImage;->setTipY(I)V

    new-instance v0, Lnbisdk/if;

    iget-object v1, p0, Lnbisdk/dh;->CE:Lcom/nbi/map/android/Pin;

    invoke-direct {v0, v1}, Lnbisdk/if;-><init>(Lcom/nbi/map/android/Pin;)V

    iput-object v0, p0, Lnbisdk/dh;->CC:Lnbisdk/if;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lnbisdk/dh;->CP:I

    iput-boolean v5, p0, Lnbisdk/dh;->CO:Z

    invoke-virtual {p0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBI_PIN_LAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/dh;->CJ:Z

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lnbisdk/dh;->CM:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnbisdk/dh;->CM:I

    return-void
.end method

.method static synthetic Y(Z)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnbisdk/dh;->CR:Z

    return v0
.end method

.method private a(Lnbisdk/if;)Lcom/nbi/map/data/Rectangle;
    .locals 3

    invoke-virtual {p1, p0}, Lnbisdk/if;->j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    iget v2, p0, Lnbisdk/dh;->CM:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    iget v2, p0, Lnbisdk/dh;->CM:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    iget v2, p0, Lnbisdk/dh;->CM:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    iget v2, p0, Lnbisdk/dh;->CM:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    return-object v0
.end method

.method static synthetic a(Lnbisdk/dh;)Lnbisdk/pg;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    return-object v0
.end method

.method private a(Lnbisdk/if;ZZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    const/4 v1, 0x2

    new-array v5, v1, [I

    invoke-virtual {p1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    invoke-virtual {p1, p0}, Lnbisdk/if;->j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v3}, Lnbisdk/gp;->i(II)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v7

    :goto_1
    if-nez p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move v5, v7

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v3}, Lnbisdk/gp;->i(II)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2, v1}, Lnbisdk/gp;->i(II)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4, v1}, Lnbisdk/gp;->i(II)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v7

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    invoke-virtual {p1, p0}, Lnbisdk/if;->k(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gez v0, :cond_9

    :goto_2
    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_8

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0xa

    move v2, v0

    :goto_3
    if-gez v1, :cond_7

    move v0, v1

    :goto_4
    if-nez v2, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p0, v2, v0, v6, p3}, Lnbisdk/au$d;->a(IIZZ)V

    goto/16 :goto_0

    :cond_7
    move v0, v6

    goto :goto_4

    :cond_8
    move v2, v0

    goto :goto_3

    :cond_9
    move v0, v6

    goto :goto_2

    :cond_a
    move v0, v6

    goto :goto_1
.end method

.method private a(I[D)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v3}, Lnbisdk/pg;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v3, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v3

    iget v4, v3, Lnbisdk/jt;->oZ:I

    if-ne v4, p1, :cond_2

    aget-wide v0, p2, v1

    invoke-virtual {v3, v0, v1}, Lnbisdk/jt;->setLatitude(D)V

    aget-wide v0, p2, v2

    invoke-virtual {v3, v0, v1}, Lnbisdk/jt;->setLongitude(D)V

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Lnbisdk/if;II)Z
    .locals 1

    invoke-direct {p0, p1}, Lnbisdk/dh;->a(Lnbisdk/if;)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    return v0
.end method

.method private b(Lnbisdk/ip;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v11, v0

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v12, v0

    invoke-virtual {p0}, Lnbisdk/dh;->eC()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {v1, p0, v2}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {v2, v11, v12}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dh;->CG:I

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "Click in bubble"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lnbisdk/dh;->CN:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v11, v12}, Lnbisdk/dh;->g(III)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v0, p0, Lnbisdk/dh;->CH:I

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dh;->CG:I

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/dh;->CN:I

    iget-object v0, p0, Lnbisdk/dh;->CK:[I

    const/4 v1, 0x0

    aput v11, v0, v1

    iget-object v0, p0, Lnbisdk/dh;->CK:[I

    const/4 v1, 0x1

    aput v12, v0, v1

    iget v0, p0, Lnbisdk/dh;->CH:I

    invoke-direct {p0, v0}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lnbisdk/if;->j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    iget-object v0, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    iget-object v1, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    iget-object v2, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x40

    iget-object v3, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x40

    iget-object v4, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/dh;->CQ:J

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "Using the current selected pin at this location."

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, -0x1

    const/16 v1, 0x81

    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v7}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnbisdk/if;

    new-instance v13, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v13}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {v6}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v6}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v6}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v14

    const/4 v0, 0x2

    new-array v5, v0, [I

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {v14}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v13, v0}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v14}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    const/4 v0, 0x1

    aget v0, v5, v0

    invoke-virtual {v14}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v13, v0}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v14}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    invoke-virtual {v13, v11, v12}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v9, v6, Lnbisdk/jt;->oZ:I

    :cond_5
    const/4 v0, -0x1

    if-eq v9, v0, :cond_9

    iput v9, p0, Lnbisdk/dh;->CH:I

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dh;->CG:I

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/dh;->CN:I

    iget-object v0, p0, Lnbisdk/dh;->CK:[I

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lnbisdk/dh;->CK:[I

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget v0, p0, Lnbisdk/dh;->CH:I

    invoke-direct {p0, v0}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lnbisdk/if;->j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    iget-object v0, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v0

    iget v1, p0, Lnbisdk/dh;->CM:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    iget v2, p0, Lnbisdk/dh;->CM:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lnbisdk/dh;->CM:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lnbisdk/dh;->CM:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/dh;->CQ:J

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "Found a pin at this location."

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v6}, Lnbisdk/dh;->a(Lnbisdk/if;)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v11, v12}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    if-eqz v0, :cond_15

    sub-int v0, v1, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, v2, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    if-ge v1, v8, :cond_15

    iget v9, v6, Lnbisdk/jt;->oZ:I

    move v2, v9

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_1
    iget v0, p0, Lnbisdk/dh;->CN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v0, p0, Lnbisdk/dh;->CH:I

    iget v1, p0, Lnbisdk/dh;->CI:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lnbisdk/dh;->CN:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v3, "Moving the pin."

    invoke-static {v2, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lnbisdk/gp;->a(II[D)V

    iget v3, p0, Lnbisdk/dh;->CG:I

    invoke-direct {p0, v3, v2}, Lnbisdk/dh;->a(I[D)Z

    invoke-direct {p0, v0, v1}, Lnbisdk/dh;->q(II)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lnbisdk/dh;->CN:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    invoke-virtual {p0}, Lnbisdk/dh;->eC()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    invoke-direct {p0, v2}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v3, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v3}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {v2, p0, v3}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {v3, v0, v1}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dh;->CG:I

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "handleMoveEvent() - Inside the bubble."

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lnbisdk/dh;->CN:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v3, "handleMoveEvent() - not in EVENT_STATE_MOVING"

    invoke-static {v2, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/dh;->CQ:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    sget-boolean v3, Lnbisdk/me;->DEBUG:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMoveEvent() - elapsed time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMoveEvent() - long press timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnbisdk/dh;->CP:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v2, p0, Lnbisdk/dh;->CS:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2, v0, v1}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "handleMoveEvent() - OUTSIDE THE BITMAP REGION"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v10}, Lnbisdk/dh;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_3
    const/4 v0, 0x0

    iget v1, p0, Lnbisdk/dh;->CN:I

    if-lez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0}, Lnbisdk/dh;->oC()V

    goto/16 :goto_0

    :cond_15
    move v1, v8

    move v2, v9

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private bV(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, p1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    instance-of v1, v0, Lnbisdk/if;

    if-eqz v1, :cond_0

    check-cast v0, Lnbisdk/if;

    invoke-virtual {v0}, Lnbisdk/if;->mp()V

    :cond_0
    return-void
.end method

.method private bW(I)Lnbisdk/if;
    .locals 5

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPinPlacemarkWithId() - trying to retrieve pin with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPinPlacemarkWithId() - number of placemarks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2}, Lnbisdk/pg;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPinPlacemarkWithId() - placemark at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lnbisdk/jt;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v2, v0, Lnbisdk/jt;->oZ:I

    if-ne v2, p1, :cond_2

    check-cast v0, Lnbisdk/if;

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lnbisdk/dh;->CN:I

    if-lez v0, :cond_f

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v3, "Up event occurred."

    invoke-static {v0, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lnbisdk/dh;->CN:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    iget v3, p0, Lnbisdk/dh;->CG:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    iget v3, p0, Lnbisdk/dh;->CG:I

    invoke-direct {p0, v3}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v3

    if-nez v3, :cond_1

    iput v2, p0, Lnbisdk/dh;->CN:I

    invoke-direct {p0}, Lnbisdk/dh;->oC()V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :goto_1
    return v1

    :cond_1
    invoke-virtual {v3}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x3c

    invoke-virtual {v6, v7, v8, v5}, Lnbisdk/gp;->a(II[D)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v6

    iget v7, p0, Lnbisdk/dh;->CG:I

    new-instance v8, Lcom/nbi/map/data/Coordinates;

    aget-wide v9, v5, v2

    aget-wide v11, v5, v1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    invoke-interface {v6, v7, v8}, Lnbisdk/uu;->onPinDragEnd(ILcom/nbi/map/data/Coordinates;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->isDropPin()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping the pin at x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lnbisdk/dh;->CG:I

    invoke-direct {p0, v1, v5}, Lnbisdk/dh;->a(I[D)Z

    :goto_2
    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->isDropPin()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, p0}, Lnbisdk/if;->a(Lnbisdk/au$d;)V

    :cond_4
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v4, "Done moving the pin."

    invoke-static {v1, v4}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput v2, p0, Lnbisdk/dh;->CN:I

    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->nZ()V

    new-instance v4, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v4}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {v3, p0, v4}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    if-gez v1, :cond_e

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    :goto_3
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v3

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    if-gez v5, :cond_b

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v3

    :goto_4
    if-nez v3, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0, v3, v1, v2, v2}, Lnbisdk/au$d;->a(IIZZ)V

    :cond_7
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {p0, p0, v1}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_8
    :goto_5
    invoke-direct {p0}, Lnbisdk/dh;->oC()V

    move v1, v0

    goto/16 :goto_1

    :cond_9
    sget-boolean v5, Lnbisdk/me;->DEBUG:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving the pin to the original location at x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnbisdk/dh;->CL:[D

    aget-wide v7, v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnbisdk/dh;->CL:[D

    aget-wide v7, v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v1, p0, Lnbisdk/dh;->CG:I

    iget-object v5, p0, Lnbisdk/dh;->CL:[D

    invoke-direct {p0, v1, v5}, Lnbisdk/dh;->a(I[D)Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_d

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    sub-int v3, v4, v3

    goto :goto_4

    :cond_c
    iget v1, p0, Lnbisdk/dh;->CN:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    move v0, v2

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_4

    :cond_e
    move v1, v2

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_0
.end method

.method private g(III)Z
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget v3, v0, Lnbisdk/jt;->oZ:I

    if-ne v3, p1, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lnbisdk/dh;->a(Lnbisdk/if;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private oC()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/dh;->CG:I

    iput v0, p0, Lnbisdk/dh;->CH:I

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/dh;->CN:I

    return-void
.end method

.method private q(II)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lnbisdk/gp;->a(II[D)V

    iget-object v0, p0, Lnbisdk/dh;->CD:Lnbisdk/if;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/dh;->CD:Lnbisdk/if;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lnbisdk/if;->setLatitude(D)V

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/if;->setLongitude(D)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/dh;->CC:Lnbisdk/if;

    goto :goto_0
.end method


# virtual methods
.method public final P(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->size()I

    move-result v2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePin() - mPlacemarkCollection is empty or pin ID is undefined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePin() - trying to remove pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v3, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v3

    iget v3, v3, Lnbisdk/jt;->oZ:I

    if-ne v3, p1, :cond_5

    invoke-direct {p0, v1}, Lnbisdk/dh;->bV(I)V

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->removeAt(I)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Lcom/nbi/map/android/Pin;ZZZ)I
    .locals 9

    const/16 v8, 0xb

    const/4 v0, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/dh;->eV:Lcom/nbi/map/data/BoundingBox;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iget-object v2, p0, Lnbisdk/dh;->eV:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v2, v1}, Lcom/nbi/map/data/BoundingBox;->containsPoint(Lcom/nbi/map/data/Coordinates;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move p3, v5

    move p2, v5

    :cond_3
    new-instance v7, Lnbisdk/if;

    invoke-direct {v7, p1}, Lnbisdk/if;-><init>(Lcom/nbi/map/android/Pin;)V

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    if-gt v0, v8, :cond_5

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_5
    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0, v8}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ez()V

    :cond_7
    iput-boolean p2, v7, Lnbisdk/jt;->pa:Z

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v7}, Lnbisdk/pg;->a(Lnbisdk/jt;)V

    iget-object v0, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v7}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v7}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    :cond_9
    iget v0, v7, Lnbisdk/jt;->oZ:I

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 12

    const/4 v11, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lnbisdk/dh;->CR:Z

    if-nez v0, :cond_8

    move v2, v3

    :goto_0
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v2}, Lnbisdk/pg;->by(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    const/4 v1, 0x1

    iget v4, p0, Lnbisdk/dh;->CN:I

    if-ne v4, v11, :cond_0

    iget v4, v0, Lnbisdk/jt;->oZ:I

    iget v5, p0, Lnbisdk/dh;->CG:I

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lnbisdk/if;->getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;

    move-result-object v5

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v1

    check-cast v1, Lnbisdk/pj;

    invoke-virtual {v1}, Lnbisdk/gp;->getZoomLevel()I

    move-result v4

    invoke-virtual {v0}, Lnbisdk/if;->getErrorRadius()D

    move-result-wide v6

    double-to-int v6, v6

    if-lez v6, :cond_3

    invoke-virtual {v5}, Lcom/nbi/map/android/Pin$HaloAttributes;->getMinZoomLevelToDraw()I

    move-result v7

    if-lt v4, v7, :cond_3

    int-to-double v7, v6

    invoke-virtual {v0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Lnbisdk/gp;->b(DD)I

    move-result v4

    invoke-virtual {v5}, Lcom/nbi/map/android/Pin$HaloAttributes;->getMinRadiusInPixelToDraw()I

    move-result v5

    if-lt v4, v5, :cond_3

    invoke-virtual {v1}, Lnbisdk/pj;->li()Lnbisdk/pj;

    move-result-object v1

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lnbisdk/cj;->eS()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    int-to-double v6, v6

    invoke-virtual {v0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lnbisdk/gp;->b(DD)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v5}, Lnbisdk/cj;->fa()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v1, v4

    :goto_1
    invoke-virtual {v0, p0}, Lnbisdk/jt;->d(Lnbisdk/au$d;)V

    invoke-virtual {v0, p0, p1, v1}, Lnbisdk/jt;->a(Lnbisdk/au$d;Landroid/graphics/Canvas;I)V

    :cond_3
    invoke-virtual {v0, p1, p2, p0, p3}, Lnbisdk/if;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v1

    invoke-static {v1, v4}, Lnbisdk/q$a$a;->a(Lnbisdk/lt;I)I

    move-result v1

    goto :goto_1

    :cond_6
    iget v0, p0, Lnbisdk/dh;->CN:I

    if-ne v0, v11, :cond_8

    iget-object v0, p0, Lnbisdk/dh;->CE:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnbisdk/dh;->CD:Lnbisdk/if;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnbisdk/dh;->CC:Lnbisdk/if;

    :cond_7
    if-eqz v0, :cond_8

    const/16 v1, -0x3c

    invoke-virtual {v0, p1, p0, v3, v1}, Lnbisdk/if;->a(Landroid/graphics/Canvas;Lnbisdk/au$d;II)V

    :cond_8
    return-void

    :cond_9
    move v1, v4

    goto :goto_1
.end method

.method public final a(Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->CU:Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;

    return-void
.end method

.method public final a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

    return-void
.end method

.method public final a(Lcom/nbi/map/data/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->eV:Lcom/nbi/map/data/BoundingBox;

    return-void
.end method

.method public final a(Lnbisdk/gq;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->CT:Lnbisdk/gq;

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/hf;[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/dh;->oz()Lnbisdk/dh$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/dh$b;->d(Lnbisdk/hf;)Lnbisdk/dh$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/dh$a;->ml()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lnbisdk/dh$a;->mm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/dh;->CU:Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;

    iget-object v2, p0, Lnbisdk/dh;->iX:Lcom/nbi/map/android/POILayer;

    invoke-interface {v0, v1, v2, p2}, Lnbisdk/uu;->a(Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/POILayer;[B)V

    invoke-virtual {p0}, Lnbisdk/dh;->oz()Lnbisdk/dh$b;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Lnbisdk/dh$b;->a(Lnbisdk/hf;Ljava/util/Vector;)Lnbisdk/dh$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/dh;->CW:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lnbisdk/qk;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    return-void
.end method

.method public final a(IIZ)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v0

    if-nez v0, :cond_0

    move v5, v7

    :goto_0
    return v5

    :cond_0
    invoke-virtual {v0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    invoke-virtual {p0, p2, v7, p3}, Lnbisdk/au$d;->c(IZZ)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public final a(ILcom/nbi/map/android/Pin;ZZ)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2}, Lnbisdk/pg;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v2

    iget v2, v2, Lnbisdk/jt;->oZ:I

    if-ne v2, p1, :cond_6

    new-instance v2, Lnbisdk/if;

    invoke-direct {v2, p2}, Lnbisdk/if;-><init>(Lcom/nbi/map/android/Pin;)V

    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/4 v3, 0x7

    if-gt v0, v3, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_3
    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnbisdk/if;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnbisdk/if;->setLongitude(D)V

    :cond_4
    iput p1, v2, Lnbisdk/jt;->oZ:I

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1, v2}, Lnbisdk/pg;->a(ILnbisdk/jt;)V

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, p4}, Lnbisdk/dh;->a(IZ)Z

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(IZ)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnbisdk/dh;->fV()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v4, 0x0

    move v1, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget v5, v0, Lnbisdk/jt;->oZ:I

    if-ne v5, p1, :cond_3

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ez()V

    iput-boolean v3, v1, Lnbisdk/jt;->pa:Z

    invoke-direct {p0, v1, v2, p2}, Lnbisdk/dh;->a(Lnbisdk/if;ZZ)V

    iget-boolean v0, p0, Lnbisdk/dh;->CO:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/uu;->bd(I)V

    :cond_2
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v4

    goto :goto_2
.end method

.method public final a(Lcom/nbi/map/android/Pin;Z)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v4, 0x0

    move v1, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v5

    if-ne v5, p1, :cond_3

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ez()V

    iput-boolean v3, v1, Lnbisdk/jt;->pa:Z

    invoke-direct {p0, v1, v2, p2}, Lnbisdk/dh;->a(Lnbisdk/if;ZZ)V

    iget-boolean v0, p0, Lnbisdk/dh;->CO:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget v1, v1, Lnbisdk/jt;->oZ:I

    invoke-interface {v0, v1}, Lnbisdk/uu;->bd(I)V

    :cond_2
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v4

    goto :goto_2
.end method

.method public final a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)Z
    .locals 9

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    invoke-virtual {v0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v4

    sget-boolean v6, Lnbisdk/me;->DEBUG:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " latitude:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " longitude:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v6

    cmpg-double v0, v2, v6

    if-gez v0, :cond_3

    invoke-virtual {p1, v2, v3}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    :cond_3
    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v6

    cmpl-double v0, v2, v6

    if-lez v0, :cond_4

    invoke-virtual {p2, v2, v3}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    :cond_4
    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    cmpg-double v0, v4, v2

    if-gez v0, :cond_5

    invoke-virtual {p1, v4, v5}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    :cond_5
    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v4, v2

    if-lez v0, :cond_6

    invoke-virtual {p2, v4, v5}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4020

    div-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    sub-double v3, v1, v3

    if-eqz v0, :cond_b

    const-wide/high16 v1, 0x4010

    div-double v1, v3, v1

    :goto_3
    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v5

    add-double/2addr v1, v5

    invoke-virtual {p2, v1, v2}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    if-eqz v0, :cond_c

    const-wide/high16 v0, 0x4020

    div-double v0, v3, v0

    :goto_4
    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    sub-double v0, v2, v0

    invoke-virtual {p1, v0, v1}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    :cond_8
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point1 - lat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point2 - lat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_b
    const-wide/high16 v1, 0x4000

    div-double v1, v3, v1

    goto/16 :goto_3

    :cond_c
    const-wide/high16 v0, 0x4018

    div-double v0, v3, v0

    goto/16 :goto_4
.end method

.method public final a(Lnbisdk/ip;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - onTouchEvent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lnbisdk/dh;->b(Lnbisdk/ip;)Z

    move-result v0

    return v0
.end method

.method public final b(IIZ)I
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lnbisdk/gp;->a(II[D)V

    new-instance v4, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v4}, Lcom/nbi/map/data/MapLocation;-><init>()V

    aget-wide v5, v3, v2

    aget-wide v7, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nbi/map/data/MapLocation;->setLatLon(DD)V

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lnbisdk/uu;->onPinDropEvent(II)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_2

    iget v3, p0, Lnbisdk/dh;->CI:I

    if-eq v3, v0, :cond_0

    iget v0, p0, Lnbisdk/dh;->CI:I

    invoke-virtual {p0, v0}, Lnbisdk/dh;->P(I)Z

    :cond_0
    new-instance v0, Lcom/nbi/map/data/Place;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    new-instance v4, Lcom/nbi/map/android/Pin;

    const/4 v3, 0x4

    invoke-direct {v4, v3, v0, v1}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Z)V

    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v4, v1, v2, v0}, Lnbisdk/dh;->a(Lcom/nbi/map/android/Pin;ZZZ)I

    move-result v3

    iput v3, p0, Lnbisdk/dh;->CI:I

    iget-object v0, p0, Lnbisdk/dh;->iX:Lcom/nbi/map/android/POILayer;

    invoke-virtual {v4, v0}, Lcom/nbi/map/android/Pin;->setPOILayer(Lcom/nbi/map/android/POILayer;)V

    invoke-direct {p0, v3}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v4

    if-nez p3, :cond_4

    move v0, v1

    :goto_2
    invoke-direct {p0, v4, v1, v0}, Lnbisdk/dh;->a(Lnbisdk/if;ZZ)V

    :goto_3
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v2}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget v1, v0, Lnbisdk/jt;->oZ:I

    if-ne v1, v3, :cond_5

    invoke-virtual {v0, p0}, Lnbisdk/if;->a(Lnbisdk/au$d;)V

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    invoke-interface {v0, v3}, Lnbisdk/uu;->bc(I)V

    move v0, v3

    :cond_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_0
.end method

.method public b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 3

    invoke-virtual {p0}, Lnbisdk/dh;->fV()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v1

    iget-boolean v2, v1, Lnbisdk/jt;->pa:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lnbisdk/dh;->CN:I

    if-nez v2, :cond_2

    invoke-virtual {v1, p1, p2, p0, p3}, Lnbisdk/jt;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - onShowPress()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v1, p0, Lnbisdk/dh;->CN:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v2, "onShowPress event occurred."

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - onLongPress()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget v2, p0, Lnbisdk/dh;->CN:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lnbisdk/dh;->CH:I

    invoke-direct {p0, v2}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v2}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v3

    iget v4, p0, Lnbisdk/dh;->CH:I

    invoke-interface {v3, v4}, Lnbisdk/uu;->onPinDragRequest(I)Z

    move-result v3

    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->isDropPin()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    iget v0, p0, Lnbisdk/dh;->CH:I

    iput v0, p0, Lnbisdk/dh;->CG:I

    const/4 v0, 0x3

    iput v0, p0, Lnbisdk/dh;->CN:I

    new-array v0, v5, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4, v0}, Lnbisdk/gp;->a(II[D)V

    iget v2, p0, Lnbisdk/dh;->CG:I

    invoke-direct {p0, v2, v0}, Lnbisdk/dh;->a(I[D)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lnbisdk/dh;->q(II)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v2, "onLongPress event occurred. Moving the pin!"

    invoke-static {v0, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lnbisdk/dh;->oC()V

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v2, "onLongPress event occurred. Movement is NOT ALLOWED on this pin."

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lnbisdk/dh;->CO:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lnbisdk/dh;->CJ:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v0}, Lnbisdk/dh;->b(IIZ)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public final cancelPinDrag()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lnbisdk/dh;->CG:I

    iget-object v1, p0, Lnbisdk/dh;->CL:[D

    invoke-direct {p0, v0, v1}, Lnbisdk/dh;->a(I[D)Z

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/dh;->CN:I

    iput v2, p0, Lnbisdk/dh;->CG:I

    iput v2, p0, Lnbisdk/dh;->CH:I

    return-void
.end method

.method public final d(III)I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/dh;->g(III)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lnbisdk/dh;->f(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget v3, v0, Lnbisdk/jt;->oZ:I

    if-ne v3, p1, :cond_2

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lnbisdk/dh;->a(Lnbisdk/if;II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, v0, Lnbisdk/jt;->oZ:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lnbisdk/dh;->bV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnbisdk/au$d;->destroy()V

    return-void
.end method

.method public final dm()Lnbisdk/qk;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    return-object v0
.end method

.method protected final eB()Lcom/nbi/map/android/Pin;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/dh;->eC()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lnbisdk/dh;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    goto :goto_0
.end method

.method protected final eC()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v1

    iget-boolean v2, v1, Lnbisdk/jt;->pa:Z

    if-eqz v2, :cond_0

    iget v0, v1, Lnbisdk/jt;->oZ:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final ez()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2}, Lnbisdk/pg;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v2

    iput-boolean v1, v2, Lnbisdk/jt;->pa:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void
.end method

.method public final f(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    invoke-direct {p0, v0, p1, p2}, Lnbisdk/dh;->a(Lnbisdk/if;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Lnbisdk/jt;->oZ:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected fV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fX()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected final g(II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnbisdk/dh;->eC()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {v1, p0, v2}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getNextPin(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v2}, Lnbisdk/pg;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    iget v0, v0, Lnbisdk/jt;->oZ:I

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v4, v2}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v4

    if-eqz v0, :cond_2

    iget v0, v4, Lnbisdk/jt;->oZ:I

    goto :goto_0

    :cond_2
    iget v4, v4, Lnbisdk/jt;->oZ:I

    if-ne v4, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->iX:Lcom/nbi/map/android/POILayer;

    return-object v0
.end method

.method public final getPin(I)Lcom/nbi/map/android/Pin;
    .locals 4

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPin() - trying to retrieve pin with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPin() - Returning pin:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPinCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    return v0
.end method

.method public final getPrevPin(I)I
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    iget v0, v0, Lnbisdk/jt;->oZ:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v2

    move v2, v4

    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v3, v2}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v3

    if-eqz v0, :cond_2

    iget v0, v3, Lnbisdk/jt;->oZ:I

    goto :goto_0

    :cond_2
    iget v3, v3, Lnbisdk/jt;->oZ:I

    if-ne v3, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->eX:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lnbisdk/dh;->g(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/dh;->eC()I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Lnbisdk/dh;->CG:I

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v2, "onSingleTapConfirmed() - Click in bubble"

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lnbisdk/dh;->CO:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lnbisdk/uu;->onPinTouched(IZ)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v1

    new-instance v2, Lcom/nbi/map/data/TrafficIncident;

    invoke-virtual {p0, v0}, Lnbisdk/dh;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    check-cast v0, Lnbisdk/xb;

    iget-object v0, v0, Lnbisdk/xb;->CX:Lnbisdk/jh;

    invoke-direct {v2, v0}, Lcom/nbi/map/data/TrafficIncident;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lnbisdk/uu;->a(Lcom/nbi/map/data/TrafficIncident;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnbisdk/dh;->oC()V

    goto :goto_0
.end method

.method public final oA()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v1}, Lnbisdk/pg;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lnbisdk/dh;->bV(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->removeAll()V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    iget-object v0, p0, Lnbisdk/dh;->CT:Lnbisdk/gq;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/dh;->oz()Lnbisdk/dh$b;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dh$b;->nX()V

    :cond_1
    return-void
.end method

.method public final oB()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lnbisdk/dh;->CR:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnbisdk/dh$1;

    invoke-direct {v1, p0}, Lnbisdk/dh$1;-><init>(Lnbisdk/dh;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final oD()V
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->CT:Lnbisdk/gq;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/dh;->oz()Lnbisdk/dh$b;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dh$b;->flushCache()V

    invoke-virtual {p0}, Lnbisdk/dh;->removeAllPins()V

    :cond_0
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    aget v3, v2, v1

    aget v2, v2, v0

    invoke-virtual {p0, v3, v2}, Lnbisdk/dh;->g(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    new-instance v0, Lnbisdk/ip;

    invoke-direct {v0, p1}, Lnbisdk/ip;-><init>(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0}, Lnbisdk/dh;->b(Lnbisdk/ip;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "onFling - handling up event."

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2}, Lnbisdk/dh;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - onScroll(e1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - onScroll(e2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p0, Lnbisdk/dh;->CN:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lnbisdk/dh;->CH:I

    invoke-direct {p0, v0}, Lnbisdk/dh;->bW(I)Lnbisdk/if;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v3}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v5, v8, [I

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {v3}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    aget v0, v5, v6

    int-to-float v0, v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    aput v0, v5, v6

    aget v0, v5, v7

    int-to-float v0, v0

    sub-float/2addr v0, p4

    float-to-int v0, v0

    aput v0, v5, v7

    new-array v0, v8, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v1

    aget v2, v5, v6

    aget v3, v5, v7

    invoke-virtual {v1, v2, v3, v0}, Lnbisdk/gp;->a(II[D)V

    iget v1, p0, Lnbisdk/dh;->CG:I

    invoke-direct {p0, v1, v0}, Lnbisdk/dh;->a(I[D)Z

    aget v0, v5, v6

    aget v1, v5, v7

    invoke-direct {p0, v0, v1}, Lnbisdk/dh;->q(II)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->sR:Ljava/lang/String;

    const-string v1, "--------------------- SCROLL EVENT NOT HANDLED ---------------"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final ow()Lnbisdk/gq;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->CT:Lnbisdk/gq;

    return-object v0
.end method

.method public final ox()Lcom/nbi/map/data/BoundingBox;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->eV:Lcom/nbi/map/data/BoundingBox;

    return-object v0
.end method

.method public final oy()Lcom/nbi/map/android/MapView$UserParameterCallbackListener;
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

    return-object v0
.end method

.method final oz()Lnbisdk/dh$b;
    .locals 2

    iget-object v0, p0, Lnbisdk/dh;->CV:Lnbisdk/dh$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jH()Lnbisdk/pc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/pc;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-instance v1, Lnbisdk/dh$b;

    invoke-direct {v1, p0, v0}, Lnbisdk/dh$b;-><init>(Lnbisdk/dh;I)V

    iput-object v1, p0, Lnbisdk/dh;->CV:Lnbisdk/dh$b;

    :cond_0
    iget-object v0, p0, Lnbisdk/dh;->CV:Lnbisdk/dh$b;

    return-object v0
.end method

.method public final removeAllPins()V
    .locals 1

    iget-object v0, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnbisdk/dh;->oA()V

    goto :goto_0
.end method

.method public final setPOILayer(Lcom/nbi/map/android/POILayer;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->iX:Lcom/nbi/map/android/POILayer;

    return-void
.end method

.method public final setPinDuringDrag(Lcom/nbi/map/android/Pin;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {p1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnbisdk/dr;->K(I)Lcom/nbi/map/android/PinImage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_0
    iput-object p1, p0, Lnbisdk/dh;->CF:Lcom/nbi/map/android/Pin;

    new-instance v0, Lnbisdk/if;

    iget-object v1, p0, Lnbisdk/dh;->CF:Lcom/nbi/map/android/Pin;

    invoke-direct {v0, v1}, Lnbisdk/if;-><init>(Lcom/nbi/map/android/Pin;)V

    iput-object v0, p0, Lnbisdk/dh;->CD:Lnbisdk/if;

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lnbisdk/dh;->CD:Lnbisdk/if;

    iput-object v0, p0, Lnbisdk/dh;->CF:Lcom/nbi/map/android/Pin;

    goto :goto_0
.end method

.method public final setPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget v3, v0, Lnbisdk/jt;->oZ:I

    if-ne v3, p1, :cond_2

    invoke-virtual {v0, p2}, Lnbisdk/if;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/dh;->eS:Lnbisdk/qk;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0}, Lnbisdk/pg;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnbisdk/dh;->CB:Lnbisdk/pg;

    invoke-virtual {v0, v1}, Lnbisdk/pg;->bx(I)Lnbisdk/jt;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, p2}, Lnbisdk/if;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh;->eX:Ljava/lang/Object;

    return-void
.end method

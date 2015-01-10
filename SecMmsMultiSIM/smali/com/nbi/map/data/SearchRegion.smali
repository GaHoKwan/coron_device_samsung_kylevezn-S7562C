.class public Lcom/nbi/map/data/SearchRegion;
.super Ljava/lang/Object;


# static fields
.field public static final SEARCH_BOUNDING_BOX:I = 0x2

.field public static final SEARCH_CENTER:I = 0x1


# instance fields
.field private eV:Lcom/nbi/map/data/BoundingBox;

.field private jC:Lcom/nbi/map/data/Coordinates;

.field private jD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/SearchRegion;-><init>(Lcom/nbi/map/data/Coordinates;)V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/data/BoundingBox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbi/map/data/SearchRegion;->eV:Lcom/nbi/map/data/BoundingBox;

    const/4 v0, 0x2

    iput v0, p0, Lcom/nbi/map/data/SearchRegion;->jD:I

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/data/Coordinates;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbi/map/data/SearchRegion;->jC:Lcom/nbi/map/data/Coordinates;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nbi/map/data/SearchRegion;->jD:I

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/nbi/map/data/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/SearchRegion;->eV:Lcom/nbi/map/data/BoundingBox;

    return-object v0
.end method

.method public getCenter()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/SearchRegion;->jC:Lcom/nbi/map/data/Coordinates;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/SearchRegion;->jD:I

    return v0
.end method

.method public setBoundingBox(Lcom/nbi/map/data/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/SearchRegion;->eV:Lcom/nbi/map/data/BoundingBox;

    return-void
.end method

.method public setCenter(Lcom/nbi/map/data/Coordinates;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/SearchRegion;->jC:Lcom/nbi/map/data/Coordinates;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/SearchRegion;->jD:I

    return-void
.end method

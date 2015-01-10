.class public Lcom/nbi/map/data/FuelSummary;
.super Ljava/lang/Object;


# instance fields
.field private eh:Lcom/nbi/map/data/FuelProduct;

.field private ei:Lcom/nbi/map/data/FuelProduct;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/FuelProduct;Lcom/nbi/map/data/FuelProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbi/map/data/FuelSummary;->eh:Lcom/nbi/map/data/FuelProduct;

    iput-object p2, p0, Lcom/nbi/map/data/FuelSummary;->ei:Lcom/nbi/map/data/FuelProduct;

    return-void
.end method


# virtual methods
.method public getAverage()Lcom/nbi/map/data/FuelProduct;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelSummary;->eh:Lcom/nbi/map/data/FuelProduct;

    return-object v0
.end method

.method public getLow()Lcom/nbi/map/data/FuelProduct;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelSummary;->ei:Lcom/nbi/map/data/FuelProduct;

    return-object v0
.end method

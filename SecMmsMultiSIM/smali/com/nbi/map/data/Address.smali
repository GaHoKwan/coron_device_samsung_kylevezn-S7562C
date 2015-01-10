.class public Lcom/nbi/map/data/Address;
.super Ljava/lang/Object;


# instance fields
.field private qX:Ljava/lang/String;

.field private qY:Ljava/lang/String;

.field private qZ:Ljava/lang/String;

.field private ra:Ljava/lang/String;

.field private rb:Ljava/lang/String;

.field private rc:Ljava/lang/String;

.field private rd:Ljava/lang/String;

.field private re:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbi/map/data/Address;->qX:Ljava/lang/String;

    iput-object p2, p0, Lcom/nbi/map/data/Address;->qY:Ljava/lang/String;

    iput-object p3, p0, Lcom/nbi/map/data/Address;->qZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/nbi/map/data/Address;->ra:Ljava/lang/String;

    iput-object p5, p0, Lcom/nbi/map/data/Address;->rb:Ljava/lang/String;

    iput-object p6, p0, Lcom/nbi/map/data/Address;->rc:Ljava/lang/String;

    iput-object p7, p0, Lcom/nbi/map/data/Address;->rd:Ljava/lang/String;

    iput-object p8, p0, Lcom/nbi/map/data/Address;->re:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->ra:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->re:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->rb:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->qX:Ljava/lang/String;

    return-object v0
.end method

.method public getPostal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->rd:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->qY:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Address;->qZ:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->ra:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->re:Ljava/lang/String;

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->rb:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->qX:Ljava/lang/String;

    return-void
.end method

.method public setPostal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->rd:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->rc:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->qY:Ljava/lang/String;

    return-void
.end method

.method public setStreet2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/data/Address;->qZ:Ljava/lang/String;

    return-void
.end method

.class public Lcom/nbi/map/data/Phone;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final PHONE_FAX:I = 0x4

.field public static final PHONE_MOBILE:I = 0x3

.field public static final PHONE_NATIONAL:I = 0x2

.field public static final PHONE_PRIMARY:I = 0x0

.field public static final PHONE_SECONDARY:I = 0x1


# instance fields
.field private lo:Lnbisdk/di;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/di;

    invoke-direct {v0, p1, p2, p3, p4}, Lnbisdk/di;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/di;

    iput-object p1, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0}, Lnbisdk/di;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0}, Lnbisdk/di;->getType()I

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/di;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/di;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0, p1}, Lnbisdk/di;->setType(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Phone;->lo:Lnbisdk/di;

    invoke-virtual {v0}, Lnbisdk/di;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

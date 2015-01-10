.class public Lcom/nbi/map/data/ExtendedPlaceData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_HOURS_OF_OPERATION:Ljava/lang/String; = "hours-of-operation"

.field public static final KEY_OFFER_DESCRIPTION:Ljava/lang/String; = "offer-description"

.field public static final KEY_OFFER_EXPIRATION_TIME:Ljava/lang/String; = "offer-expiration-date"

.field public static final KEY_OFFER_NAME:Ljava/lang/String; = "offer-name"

.field public static final KEY_OFFER_TEXT:Ljava/lang/String; = "offer-text"

.field public static final KEY_OFFER_URL:Ljava/lang/String; = "offer-url"

.field public static final KEY_PARKING:Ljava/lang/String; = "parking"


# instance fields
.field private dN:Lnbisdk/jj;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/jj;

    iput-object p1, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    return-void
.end method


# virtual methods
.method public getAverageRating()F
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->getAverageRating()F

    move-result v0

    return v0
.end method

.method public getDataPair(I)Lcom/nbi/map/data/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Pair;

    iget-object v1, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v1, p1}, Lnbisdk/jj;->aG(I)Lnbisdk/vl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Pair;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDataPairCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->getDataPairCount()I

    move-result v0

    return v0
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0, p1}, Lnbisdk/jj;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedContent()Lcom/nbi/map/data/FormattedTextBlock;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/FormattedTextBlock;

    iget-object v1, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v1}, Lnbisdk/jj;->iu()Lnbisdk/in;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FormattedTextBlock;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    return-object v0
.end method

.method public getRatingsCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->getRatingsCount()I

    move-result v0

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->getTagline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->hasRating()Z

    move-result v0

    return v0
.end method

.method public isEnhancedPOI()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ExtendedPlaceData;->dN:Lnbisdk/jj;

    invoke-virtual {v0}, Lnbisdk/jj;->isEnhancedPOI()Z

    move-result v0

    return v0
.end method

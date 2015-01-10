.class public abstract Lcom/nbi/map/search/coupons/store/StoreSearchInformation;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStore(I)Lcom/nbi/coupons/data/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getStoreCount()I
.end method

.method public abstract hasMoreResult()Z
.end method

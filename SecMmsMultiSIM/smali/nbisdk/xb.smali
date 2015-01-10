.class public final Lnbisdk/xb;
.super Lcom/nbi/map/android/Pin;


# instance fields
.field CX:Lnbisdk/jh;


# direct methods
.method public constructor <init>(ILnbisdk/jh;)V
    .locals 1

    new-instance v0, Lcom/nbi/map/data/Place;

    invoke-direct {v0, p2}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;)V

    iput-object p2, p0, Lnbisdk/xb;->CX:Lnbisdk/jh;

    return-void
.end method

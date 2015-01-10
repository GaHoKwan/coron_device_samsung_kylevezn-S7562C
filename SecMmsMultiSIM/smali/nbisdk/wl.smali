.class public final Lnbisdk/wl;
.super Lnbisdk/yx;


# instance fields
.field private BE:Lnbisdk/ce;


# direct methods
.method public constructor <init>(Lnbisdk/ce;Lnbisdk/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/yx;-><init>(Lnbisdk/qa;Lnbisdk/ap;)V

    iput-object p1, p0, Lnbisdk/wl;->BE:Lnbisdk/ce;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ze;)V
    .locals 3

    new-instance v0, Lnbisdk/ze;

    const-string v1, "load-image-request"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    const-string v1, "image-url"

    iget-object v2, p0, Lnbisdk/wl;->BE:Lnbisdk/ce;

    invoke-virtual {v2}, Lnbisdk/ce;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

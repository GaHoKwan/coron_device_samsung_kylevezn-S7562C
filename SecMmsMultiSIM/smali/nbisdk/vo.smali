.class public final Lnbisdk/vo;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ba;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private ax:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static v(Lnbisdk/ql;)Lnbisdk/vo;
    .locals 2

    new-instance v0, Lnbisdk/vo;

    invoke-direct {v0}, Lnbisdk/vo;-><init>()V

    const-string v1, "image-url"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vo;->N:Ljava/lang/String;

    const-string v1, "small-thumb-url"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vo;->ax:Ljava/lang/String;

    const-string v1, "medium-thumb-url"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vo;->L:Ljava/lang/String;

    const-string v1, "large-thumb-url"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vo;->M:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vo;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getLargeThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vo;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediumThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vo;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmallThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vo;->ax:Ljava/lang/String;

    return-object v0
.end method

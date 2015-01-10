.class public Lnbisdk/dk;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ay:I

.field private fR:Lnbisdk/gw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnbisdk/gw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "match type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "poi"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/dk;->ay:I

    :goto_0
    iput-object p1, p0, Lnbisdk/dk;->N:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/dk;->ax:Ljava/lang/String;

    iput-object p4, p0, Lnbisdk/dk;->fR:Lnbisdk/gw;

    return-void

    :cond_1
    const-string v0, "address"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/dk;->ay:I

    goto :goto_0

    :cond_2
    const-string v0, "airport"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lnbisdk/dk;->ay:I

    goto :goto_0

    :cond_3
    const-string v0, "gas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lnbisdk/dk;->ay:I

    goto :goto_0

    :cond_4
    const-string v0, "category"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iput v0, p0, Lnbisdk/dk;->ay:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid match type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final dY()Lnbisdk/gw;
    .locals 1

    iget-object v0, p0, Lnbisdk/dk;->fR:Lnbisdk/gw;

    return-object v0
.end method

.method public final getLine1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dk;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getLine2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/dk;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchType()I
    .locals 1

    iget v0, p0, Lnbisdk/dk;->ay:I

    return v0
.end method

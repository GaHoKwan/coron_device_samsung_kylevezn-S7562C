.class final Lnbisdk/ae;
.super Lnbisdk/s;


# direct methods
.method constructor <init>(Lnbisdk/v;Lnbisdk/gv;Z)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lnbisdk/s;-><init>(Lnbisdk/gv;Z)V

    return-void
.end method


# virtual methods
.method public final J()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "request.type"

    if-ne p1, v0, :cond_0

    const-string v0, "POST"

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lnbisdk/s;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

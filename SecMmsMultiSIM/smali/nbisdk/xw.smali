.class public final Lnbisdk/xw;
.super Lnbisdk/vh;

# interfaces
.implements Lnbisdk/xu;


# direct methods
.method public constructor <init>(Lnbisdk/ts;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/vh;-><init>(Lnbisdk/ts;)V

    return-void
.end method


# virtual methods
.method public final uploadComplete(Ljava/lang/String;ILnbisdk/ut;)V
    .locals 2

    invoke-static {}, Lnbisdk/kw;->jc()Lnbisdk/yj;

    move-result-object v0

    const/16 v1, 0x55

    invoke-interface {v0, p3, p0, v1, p1}, Lnbisdk/yj;->a(Lcom/navbuilder/nb/b;Lnbisdk/ts;ILjava/lang/Object;)V

    return-void
.end method

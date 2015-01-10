.class public final Lnbisdk/kj;
.super Lnbisdk/sw;

# interfaces
.implements Lnbisdk/no;


# instance fields
.field private pW:Lnbisdk/zb;

.field private pX:Lnbisdk/wl;


# direct methods
.method public constructor <init>(Lnbisdk/zb;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/sw;-><init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    iput-object p1, p0, Lnbisdk/kj;->pW:Lnbisdk/zb;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lnbisdk/sw;->P()V

    new-instance v0, Lnbisdk/sb;

    invoke-direct {v0}, Lnbisdk/sb;-><init>()V

    new-instance v1, Lnbisdk/vr;

    invoke-direct {v1}, Lnbisdk/vr;-><init>()V

    const-string v2, "image-url"

    invoke-static {p2, v2}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnbisdk/vr;->N:Ljava/lang/String;

    const-string v2, "image-bytes"

    invoke-virtual {p2, v2}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lnbisdk/vr;->aW:[B

    iput-object v1, v0, Lnbisdk/sb;->xx:Lnbisdk/ik;

    iget-object v1, p0, Lnbisdk/kj;->pW:Lnbisdk/zb;

    invoke-interface {v1, v0, p0}, Lnbisdk/zb;->a(Lnbisdk/dx;Lnbisdk/no;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, v3}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x42

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, v1}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, v3}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    throw v0
.end method

.method public final a(Lnbisdk/ce;)V
    .locals 1

    new-instance v0, Lnbisdk/wl;

    invoke-direct {v0, p1, p0}, Lnbisdk/wl;-><init>(Lnbisdk/ce;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/kj;->pX:Lnbisdk/wl;

    iget-object v0, p0, Lnbisdk/kj;->pX:Lnbisdk/wl;

    invoke-super {p0, v0}, Lnbisdk/sw;->a(Lnbisdk/yx;)V

    return-void
.end method

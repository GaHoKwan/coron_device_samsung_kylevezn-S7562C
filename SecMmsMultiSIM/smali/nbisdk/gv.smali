.class public final Lnbisdk/gv;
.super Ljava/lang/Object;


# static fields
.field private static final ls:Ljava/lang/Boolean;

.field private static final lt:Ljava/lang/Boolean;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private ce:Ljava/lang/String;

.field private cg:Ljava/lang/String;

.field private ch:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private cj:Ljava/lang/String;

.field private ck:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private hR:Ljava/lang/String;

.field private ir:I

.field private ks:Z

.field private lq:Ljava/util/Hashtable;

.field private lr:Ljava/util/Hashtable;

.field private lu:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lnbisdk/gv;->ls:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lnbisdk/gv;->lt:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fc0

    iput v0, p0, Lnbisdk/gv;->ir:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/gv;->ks:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    const-string v1, "retry_times"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    const-string v1, "retry_interval"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    const-string v1, "conn_idle_timeout"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    const-string v1, "req_timeout"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    const-string v1, "connection_read_timeout"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J()I
    .locals 1

    iget v0, p0, Lnbisdk/gv;->ir:I

    return v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    sget-object v0, Lnbisdk/gv;->ls:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lnbisdk/gv;->lt:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final aQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final aR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final aS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final ae(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->ax:Ljava/lang/String;

    return-void
.end method

.method public final af(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->cg:Ljava/lang/String;

    return-void
.end method

.method public final ag(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final al(I)V
    .locals 0

    iput p1, p0, Lnbisdk/gv;->ir:I

    return-void
.end method

.method public final b(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->lr:Ljava/util/Hashtable;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticationToken is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/gv;->N:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "carrier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/gv;->M:Ljava/lang/String;

    return-void
.end method

.method public final g([B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->lu:[B

    return-void
.end method

.method public final gI()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/gv;->ks:Z

    return v0
.end method

.method public final gJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final gK()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->lr:Ljava/util/Hashtable;

    return-object v0
.end method

.method public final gL()[Lnbisdk/tg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gM()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public final gO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public final gP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public final gQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->ck:Ljava/lang/String;

    return-object v0
.end method

.method public final gR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final gS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->hR:Ljava/lang/String;

    return-object v0
.end method

.method public final gT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientGuid()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->lu:[B

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnbisdk/gv;->ce:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/gv;->L:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceId is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnbisdk/gv;->ch:Ljava/lang/String;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->ci:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->cj:Ljava/lang/String;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->ck:Ljava/lang/String;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->Y:Ljava/lang/String;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->cl:Ljava/lang/String;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gv;->hR:Ljava/lang/String;

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/gv;->lq:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final y(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/gv;->cg:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/gv;->ax:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/gv;->ce:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/gv;->L:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/gv;->M:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/gv;->lr:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

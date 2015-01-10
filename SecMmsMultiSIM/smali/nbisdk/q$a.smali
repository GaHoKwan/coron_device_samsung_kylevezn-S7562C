.class final Lnbisdk/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/q$a$a;
    }
.end annotation


# instance fields
.field private final EG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnbisdk/fd;",
            ">;"
        }
    .end annotation
.end field

.field private final EH:Lnbisdk/lh;

.field private final EI:Lnbisdk/ps;

.field private EJ:J

.field private final zj:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lnbisdk/ew;Lnbisdk/ew;Ljava/lang/Runnable;)V
    .locals 9

    const-wide/high16 v7, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnbisdk/q$a;->EG:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/q$a;->EJ:J

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v0, Lnbisdk/ff;

    new-instance v1, Lnbisdk/q$a$a;

    invoke-direct {v1, p0}, Lnbisdk/q$a$a;-><init>(Lnbisdk/q$a;)V

    invoke-direct {v0, v1}, Lnbisdk/ff;-><init>(Lnbisdk/lp;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v1

    new-instance v2, Lnbisdk/sc;

    invoke-direct {v2, v0}, Lnbisdk/sc;-><init>(Lnbisdk/ts;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lnbisdk/wn;

    invoke-direct {v0, v2}, Lnbisdk/wn;-><init>(Lnbisdk/lp;)V

    iput-object v0, p0, Lnbisdk/q$a;->EH:Lnbisdk/lh;

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lnbisdk/ew;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p3}, Lnbisdk/ew;->getLatitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    div-double/2addr v1, v7

    invoke-virtual {p2}, Lnbisdk/ew;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p3}, Lnbisdk/ew;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/ew;-><init>(DD)V

    new-instance v1, Lnbisdk/ps;

    invoke-direct {v1, v0}, Lnbisdk/ps;-><init>(Lnbisdk/mi;)V

    iput-object v1, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    iget-object v0, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lnbisdk/dg;->U(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lnbisdk/dg;->H(I)V

    iget-object v0, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    invoke-virtual {v0, p2, p3}, Lnbisdk/dg;->a(Lnbisdk/cl;Lnbisdk/cl;)V

    iput-object p4, p0, Lnbisdk/q$a;->zj:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lnbisdk/q$a;J)J
    .locals 0

    iput-wide p1, p0, Lnbisdk/q$a;->EJ:J

    return-wide p1
.end method

.method static synthetic a(Lnbisdk/q$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnbisdk/q$a;->EG:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/q$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lnbisdk/q$a;->zj:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lnbisdk/q$a;->EH:Lnbisdk/lh;

    invoke-virtual {v0}, Lnbisdk/md;->cancelRequest()V

    return-void
.end method

.method public final load()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lnbisdk/q$a;->EH:Lnbisdk/lh;

    invoke-virtual {v2}, Lnbisdk/md;->isRequestInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/q$a;->EJ:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    iget-object v1, p0, Lnbisdk/q$a;->EH:Lnbisdk/lh;

    iget-object v2, p0, Lnbisdk/q$a;->EI:Lnbisdk/ps;

    invoke-virtual {v1, v2}, Lnbisdk/lh;->a(Lnbisdk/ps;)V

    goto :goto_0
.end method

.method public final oP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnbisdk/fd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/q$a;->EG:Ljava/util/List;

    return-object v0
.end method

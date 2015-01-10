.class public Lnbisdk/au$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private bJ:Ljava/util/Timer;

.field private final bK:Ljava/lang/Runnable;

.field final synthetic bL:Lnbisdk/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/au;JJ)V
    .locals 6

    const-wide/32 v2, 0xea60

    iput-object p1, p0, Lnbisdk/au$a;->bL:Lnbisdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnbisdk/au$a;->bJ:Ljava/util/Timer;

    new-instance v0, Lnbisdk/tp;

    invoke-direct {v0, p0}, Lnbisdk/tp;-><init>(Lnbisdk/au$a;)V

    iput-object v0, p0, Lnbisdk/au$a;->bK:Ljava/lang/Runnable;

    iget-object v0, p0, Lnbisdk/au$a;->bJ:Ljava/util/Timer;

    new-instance v1, Lnbisdk/au$a$1;

    invoke-direct {v1, p0, p1}, Lnbisdk/au$a$1;-><init>(Lnbisdk/au$a;Lnbisdk/au;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/cn;
    .locals 2

    new-instance v1, Lnbisdk/cn;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/cn;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->aL(I)V

    return-object v1
.end method

.method public static a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;)Lnbisdk/dh;
    .locals 2

    new-instance v1, Lnbisdk/dh;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/dh;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0x3200

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->aL(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->setVisible(Z)V

    return-object v1
.end method

.method public static a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;I)Lnbisdk/dh;
    .locals 2

    new-instance v1, Lnbisdk/dh;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/dh;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    invoke-virtual {v1, p4}, Lnbisdk/au$d;->aL(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->setVisible(Z)V

    return-object v1
.end method

.method static synthetic a(Lnbisdk/au$a;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lnbisdk/au$a;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->i(Lnbisdk/au;)Lnbisdk/hu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/au$a;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->i(Lnbisdk/au;)Lnbisdk/hu;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    move v3, v4

    move v2, v4

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->dy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->dz()Z

    move v0, v1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lnbisdk/au$a;->bL:Lnbisdk/au;

    invoke-virtual {v0, v1}, Lnbisdk/ct;->m(Z)V

    iget-object v0, p0, Lnbisdk/au$a;->bL:Lnbisdk/au;

    invoke-virtual {v0, v4}, Lnbisdk/au;->I(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lnbisdk/au$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$a;->bK:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;)Lnbisdk/nw;
    .locals 2

    new-instance v1, Lnbisdk/nw;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/nw;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0x30d4

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->aL(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lnbisdk/nw;->setVisible(Z)V

    return-object v1
.end method

.method public static b(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/ve;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lnbisdk/ve;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/ve;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    const/16 v0, 0x5dc

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->aL(I)V

    invoke-virtual {v1, v2}, Lnbisdk/au$d;->setVisible(Z)V

    const-string v0, "png"

    invoke-virtual {v1, v0}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    const-string v0, "192"

    invoke-virtual {v1, v0}, Lnbisdk/ct;->H(Ljava/lang/String;)V

    const-string v0, "route"

    invoke-virtual {v1, v0}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnbisdk/au$d;->F(Z)V

    invoke-virtual {v1, v2}, Lnbisdk/ct;->l(Z)V

    return-object v1
.end method

.method public static c(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/dr;
    .locals 2

    new-instance v1, Lnbisdk/dr;

    invoke-virtual {p3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v1, p0, p1, p2, v0}, Lnbisdk/dr;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->aL(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lnbisdk/au$d;->setVisible(Z)V

    return-object v1
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$a;->bJ:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lnbisdk/au$a;->bJ:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au$a;->bJ:Ljava/util/Timer;

    return-void
.end method

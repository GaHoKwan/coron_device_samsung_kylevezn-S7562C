.class public final Lnbisdk/tt;
.super Ljava/lang/Object;


# static fields
.field public static final bp:J

.field private static yD:Lnbisdk/tt;


# instance fields
.field private cZ:I

.field private ci:Ljava/lang/String;

.field private wf:Ljava/util/Vector;

.field private yE:Lnbisdk/dz;

.field private yF:Lcom/navbuilder/nb/e;

.field private yG:Lnbisdk/qv;

.field private yH:Lnbisdk/ak;

.field private yI:Lnbisdk/ev;

.field private yJ:Ljava/util/Vector;

.field private yK:Lnbisdk/y;

.field private yL:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x12d53d80

    sub-long/2addr v0, v2

    sput-wide v0, Lnbisdk/tt;->bp:J

    return-void
.end method

.method private constructor <init>(Lcom/navbuilder/nb/e;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/tt;->ci:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/tt;->yJ:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/tt;->wf:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/tt;->yL:Ljava/util/Vector;

    const-string v0, "main"

    invoke-static {v0}, Lnbisdk/dn$b;->W(Ljava/lang/String;)Lnbisdk/qv;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    invoke-virtual {v0}, Lnbisdk/qv;->R()V

    return-void
.end method

.method static synthetic a(Lnbisdk/tt;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->wf:Ljava/util/Vector;

    return-object v0
.end method

.method public static a(Lnbisdk/dz;Lnbisdk/ev;Lcom/navbuilder/nb/e;)V
    .locals 4

    sget-object v0, Lnbisdk/tt;->yD:Lnbisdk/tt;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/tt;

    invoke-direct {v0, p2}, Lnbisdk/tt;-><init>(Lcom/navbuilder/nb/e;)V

    sput-object v0, Lnbisdk/tt;->yD:Lnbisdk/tt;

    :cond_0
    sget-object v1, Lnbisdk/tt;->yD:Lnbisdk/tt;

    iput-object p0, v1, Lnbisdk/tt;->yE:Lnbisdk/dz;

    new-instance v0, Lnbisdk/y;

    invoke-interface {p0}, Lnbisdk/dz;->eP()Lnbisdk/jm;

    move-result-object v2

    invoke-direct {v0, v2}, Lnbisdk/y;-><init>(Lnbisdk/jm;)V

    iput-object v0, v1, Lnbisdk/tt;->yK:Lnbisdk/y;

    iput-object p1, v1, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-interface {p0}, Lnbisdk/dz;->eG()Lnbisdk/nd;

    move-result-object v0

    invoke-interface {p0}, Lnbisdk/dz;->eH()Lnbisdk/dc;

    move-result-object v2

    invoke-static {v0, v2}, Lnbisdk/jf;->a(Lnbisdk/nd;Lnbisdk/dc;)V

    const/16 v0, 0x13

    :try_start_0
    invoke-interface {p1, v0}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/tt;->ci:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lnbisdk/tt;->bl(I)I

    move-result v0

    iput v0, v1, Lnbisdk/tt;->cZ:I

    iget v0, v1, Lnbisdk/tt;->cZ:I

    if-gez v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    iput v0, v1, Lnbisdk/tt;->cZ:I

    iget-object v0, v1, Lnbisdk/tt;->yH:Lnbisdk/ak;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lnbisdk/tt;->yH:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->ae()V

    const/4 v0, 0x0

    iput-object v0, v1, Lnbisdk/tt;->yH:Lnbisdk/ak;

    :cond_1
    iget-object v0, v1, Lnbisdk/tt;->yI:Lnbisdk/ev;

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnbisdk/z;

    iget-object v2, v1, Lnbisdk/tt;->yE:Lnbisdk/dz;

    iget-object v3, v1, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-direct {v0, v2, v3}, Lnbisdk/z;-><init>(Lnbisdk/dz;Lnbisdk/ev;)V

    iput-object v0, v1, Lnbisdk/tt;->yH:Lnbisdk/ak;

    :goto_2
    return-void

    :cond_2
    iget v0, v1, Lnbisdk/tt;->cZ:I

    goto :goto_1

    :cond_3
    new-instance v0, Lnbisdk/u;

    iget-object v2, v1, Lnbisdk/tt;->yE:Lnbisdk/dz;

    iget-object v3, v1, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-direct {v0, v2, v3}, Lnbisdk/u;-><init>(Lnbisdk/dz;Lnbisdk/ev;)V

    iput-object v0, v1, Lnbisdk/tt;->yH:Lnbisdk/ak;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lnbisdk/tt;)Lnbisdk/qv;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    return-object v0
.end method

.method public static b(Lnbisdk/ru;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    invoke-virtual {v0, p0, p1}, Lnbisdk/qv;->a(Lnbisdk/ru;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lnbisdk/ev;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-interface {p0, v1}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static d(Lnbisdk/ru;)V
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    invoke-virtual {v0, p0}, Lnbisdk/qv;->a(Lnbisdk/ru;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized d(S)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/tt;->yJ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lnbisdk/tt;->yJ:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/navbuilder/nb/a;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/navbuilder/nb/a;->a(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static mP()Lnbisdk/tt;
    .locals 2

    sget-object v0, Lnbisdk/tt;->yD:Lnbisdk/tt;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NBInternal not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnbisdk/tt;->yD:Lnbisdk/tt;

    return-object v0
.end method


# virtual methods
.method public final N()V
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->nQ()[Lcom/navbuilder/nb/c;

    return-void
.end method

.method public final O()V
    .locals 3

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->nQ()[Lcom/navbuilder/nb/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/navbuilder/nb/c;->L()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/tt;->yH:Lnbisdk/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tt;->yH:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->ae()V

    iput-object v1, p0, Lnbisdk/tt;->yH:Lnbisdk/ak;

    :cond_0
    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    invoke-virtual {v0}, Lnbisdk/qv;->P()V

    iput-object v1, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/tt;->d(S)V

    iget-object v0, p0, Lnbisdk/tt;->wf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-object v1, p0, Lnbisdk/tt;->wf:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/tt;->yL:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/tt;->yK:Lnbisdk/y;

    invoke-virtual {v0}, Lnbisdk/y;->P()V

    iput-object v1, p0, Lnbisdk/tt;->yK:Lnbisdk/y;

    invoke-static {}, Lnbisdk/pu;->close()V

    iget-object v0, p0, Lnbisdk/tt;->yE:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eF()Lnbisdk/kd;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/kd;->destroy()V

    iput-object v1, p0, Lnbisdk/tt;->yE:Lnbisdk/dz;

    iput-object v1, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    sput-object v1, Lnbisdk/tt;->yD:Lnbisdk/tt;

    return-void
.end method

.method public final declared-synchronized a(Lcom/navbuilder/nb/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/tt;->yJ:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lnbisdk/zx;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    new-instance v1, Lnbisdk/kk;

    invoke-direct {v1, p0, p1}, Lnbisdk/kk;-><init>(Lnbisdk/tt;Lnbisdk/zx;)V

    invoke-virtual {v0, v1}, Lnbisdk/qv;->b(Lnbisdk/ru;)Z

    return-void
.end method

.method public final b(Lnbisdk/fk;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->nQ()[Lcom/navbuilder/nb/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/navbuilder/nb/c;->a(Lnbisdk/fk;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lnbisdk/zx;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    new-instance v1, Lnbisdk/kn;

    invoke-direct {v1, p0, p1}, Lnbisdk/kn;-><init>(Lnbisdk/tt;Lnbisdk/zx;)V

    invoke-virtual {v0, v1}, Lnbisdk/qv;->b(Lnbisdk/ru;)Z

    return-void
.end method

.method public final bl(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-interface {v0, p1}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final bm(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-interface {v0, p1}, Lnbisdk/ev;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->nQ()[Lcom/navbuilder/nb/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/navbuilder/nb/c;->a(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final mQ()Lnbisdk/ak;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yH:Lnbisdk/ak;

    return-object v0
.end method

.method public final mR()Lnbisdk/dz;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yE:Lnbisdk/dz;

    return-object v0
.end method

.method public final mS()Lnbisdk/gv;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yH:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->X()Lnbisdk/gv;

    move-result-object v0

    return-object v0
.end method

.method public final mT()Lnbisdk/ev;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yI:Lnbisdk/ev;

    return-object v0
.end method

.method public final mU()Lcom/navbuilder/nb/e;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    return-object v0
.end method

.method public final mV()Lnbisdk/qv;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yG:Lnbisdk/qv;

    return-object v0
.end method

.method public final mW()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final mX()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yI:Lnbisdk/ev;

    invoke-static {v0}, Lnbisdk/tt;->b(Lnbisdk/ev;)Z

    move-result v0

    return v0
.end method

.method public final mY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public final mZ()I
    .locals 1

    iget v0, p0, Lnbisdk/tt;->cZ:I

    return v0
.end method

.method public final na()Lnbisdk/y;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yK:Lnbisdk/y;

    return-object v0
.end method

.method public final nb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/tt;->yI:Lnbisdk/ev;

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "en"

    :cond_0
    return-object v0
.end method

.method public final nc()Lnbisdk/rk;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->yE:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eM()Lnbisdk/rk;

    move-result-object v0

    return-object v0
.end method

.method public final nd()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/tt;->wf:Ljava/util/Vector;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/tt;->yF:Lcom/navbuilder/nb/e;

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->nQ()[Lcom/navbuilder/nb/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/navbuilder/nb/c;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

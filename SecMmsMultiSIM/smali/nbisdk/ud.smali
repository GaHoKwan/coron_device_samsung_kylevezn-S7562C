.class public final Lnbisdk/ud;
.super Ljava/lang/Object;


# instance fields
.field private final zj:Ljava/lang/Runnable;

.field private zk:Lnbisdk/pd;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/jw;

    invoke-direct {v0}, Lnbisdk/jw;-><init>()V

    iput-object v0, p0, Lnbisdk/ud;->zk:Lnbisdk/pd;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/ud;->zj:Ljava/lang/Runnable;

    return-void
.end method

.method private static bp(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lnbisdk/pd;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ud;->zk:Lnbisdk/pd;

    return-void
.end method

.method public final bn(I)V
    .locals 1

    invoke-static {p1}, Lnbisdk/ud;->bp(I)V

    iget-object v0, p0, Lnbisdk/ud;->zk:Lnbisdk/pd;

    invoke-interface {v0, p0, p1}, Lnbisdk/pd;->a(Lnbisdk/ud;I)V

    return-void
.end method

.method public final bo(I)V
    .locals 1

    invoke-static {p1}, Lnbisdk/ud;->bp(I)V

    iget-object v0, p0, Lnbisdk/ud;->zk:Lnbisdk/pd;

    invoke-interface {v0, p0, p1}, Lnbisdk/pd;->b(Lnbisdk/ud;I)V

    return-void
.end method

.method final nf()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ud;->zj:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

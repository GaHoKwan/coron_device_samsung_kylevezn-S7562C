.class public Lnbisdk/bk;
.super Ljava/lang/Object;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/bk;->aB:Ljava/util/Vector;

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, "road-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/bk;->aB:Ljava/util/Vector;

    new-instance v3, Lnbisdk/fo;

    invoke-direct {v3, v0}, Lnbisdk/fo;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/bk;->aB:Ljava/util/Vector;

    new-instance v1, Lnbisdk/fo;

    invoke-direct {v1}, Lnbisdk/fo;-><init>()V

    invoke-static {v0, v1}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    return-void
.end method

.method public static a(Lnbisdk/aj;Lcom/navbuilder/nb/e;)Lnbisdk/fn;
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/bk;->a(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    new-instance v0, Lnbisdk/sn;

    invoke-direct {v0, p0, p1}, Lnbisdk/sn;-><init>(Lnbisdk/aj;Lcom/navbuilder/nb/e;)V

    return-object v0
.end method

.method public static a(Lnbisdk/o;Lcom/navbuilder/nb/e;)Lnbisdk/jc;
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/bk;->a(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    new-instance v0, Lnbisdk/tl;

    invoke-direct {v0, p0, p1}, Lnbisdk/tl;-><init>(Lnbisdk/o;Lcom/navbuilder/nb/e;)V

    return-object v0
.end method

.method public static a(Lnbisdk/mz;Lcom/navbuilder/nb/e;)Lnbisdk/nm;
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/bk;->a(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    new-instance v0, Lnbisdk/sy;

    invoke-direct {v0, p0, p1}, Lnbisdk/sy;-><init>(Lnbisdk/mz;Lcom/navbuilder/nb/e;)V

    return-object v0
.end method

.method public static a(Lnbisdk/zb;Lcom/navbuilder/nb/e;)Lnbisdk/no;
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/bk;->a(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    new-instance v0, Lnbisdk/kj;

    invoke-direct {v0, p0, p1}, Lnbisdk/kj;-><init>(Lnbisdk/zb;Lcom/navbuilder/nb/e;)V

    return-object v0
.end method

.method private static a(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

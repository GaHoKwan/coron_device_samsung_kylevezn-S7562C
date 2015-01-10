.class public final Lnbisdk/jf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/jf$a;
    }
.end annotation


# static fields
.field private static aP:Lnbisdk/ir;

.field private static final cg:Ljava/lang/String;

.field public static jy:Z

.field private static of:Ljava/util/Hashtable;

.field protected static ol:Lnbisdk/nd;

.field private static on:Lnbisdk/jf$a;

.field private static oo:Lnbisdk/dc;


# instance fields
.field private ce:Ljava/lang/String;

.field private om:Lnbisdk/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lnbisdk/jf;->jy:Z

    const-string v0, "nim-master-store"

    invoke-static {v0}, Lnbisdk/jf;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnbisdk/jf;->cg:Ljava/lang/String;

    const-wide/high16 v0, 0x2000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    sput-object v0, Lnbisdk/jf;->aP:Lnbisdk/ir;

    return-void
.end method

.method private constructor <init>(Lnbisdk/cz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    iput-object p2, p0, Lnbisdk/jf;->ce:Ljava/lang/String;

    return-void
.end method

.method static a(Lnbisdk/nd;Lnbisdk/dc;)V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    sput-object p0, Lnbisdk/jf;->ol:Lnbisdk/nd;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnbisdk/jf;->jy:Z

    sput-object p1, Lnbisdk/jf;->oo:Lnbisdk/dc;

    new-instance v0, Lnbisdk/jf$a;

    invoke-direct {v0}, Lnbisdk/jf$a;-><init>()V

    sput-object v0, Lnbisdk/jf;->on:Lnbisdk/jf$a;

    invoke-virtual {v0}, Lnbisdk/jf$a;->P()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static at(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnbisdk/me;->sA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static au(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-static {p0}, Lnbisdk/jf;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/cz;

    if-eqz v0, :cond_0

    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lnbisdk/jf;->ol:Lnbisdk/nd;

    invoke-interface {v0, v1}, Lnbisdk/nd;->aL(Ljava/lang/String;)V

    sget-object v0, Lnbisdk/jf;->on:Lnbisdk/jf$a;

    invoke-virtual {v0, v1}, Lnbisdk/jf$a;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static av(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid uri : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    invoke-interface {v0, p0}, Lnbisdk/dc;->P(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static aw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid filename : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    invoke-interface {v0, p0}, Lnbisdk/dc;->Q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ax(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid filename : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnbisdk/jf;->oo:Lnbisdk/dc;

    invoke-interface {v0, p0}, Lnbisdk/dc;->O(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)Lnbisdk/jf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-static {p0}, Lnbisdk/jf;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnbisdk/jf;->ol:Lnbisdk/nd;

    invoke-interface {v1, v0, p1}, Lnbisdk/nd;->d(Ljava/lang/String;Z)Lnbisdk/cz;

    move-result-object v1

    sget-object v2, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnbisdk/jf;->on:Lnbisdk/jf$a;

    invoke-virtual {v2, v1, v0}, Lnbisdk/jf$a;->a(Lnbisdk/cz;Ljava/lang/String;)V

    new-instance v0, Lnbisdk/jf;

    invoke-direct {v0, v1, p0}, Lnbisdk/jf;-><init>(Lnbisdk/cz;Ljava/lang/String;)V

    return-object v0
.end method

.method public static im()V
    .locals 2

    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/cz;

    invoke-interface {v0}, Lnbisdk/cz;->close()V

    goto :goto_0

    :cond_0
    sget-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    :cond_1
    return-void
.end method

.method static synthetic in()Lnbisdk/ir;
    .locals 1

    sget-object v0, Lnbisdk/jf;->aP:Lnbisdk/ir;

    return-object v0
.end method

.method static synthetic io()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnbisdk/jf;->cg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a([BIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0, p1}, Lnbisdk/cz;->b([B)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->ce:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/jf;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnbisdk/jf;->of:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0}, Lnbisdk/cz;->close()V

    return-void
.end method

.method public final a(I[BIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p4}, Lnbisdk/cz;->a(I[BII)V

    return-void
.end method

.method public final aA(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0, p1}, Lnbisdk/cz;->A(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final am()I
    .locals 1

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0}, Lnbisdk/cz;->dL()I

    move-result v0

    return v0
.end method

.method public final b(Lnbisdk/fz;)Lnbisdk/ch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnbisdk/cz;->a(Lnbisdk/fz;)Lnbisdk/ch;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0}, Lnbisdk/cz;->clear()V

    return-void
.end method

.method public final b(I[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p4}, Lnbisdk/cz;->a(I[BII)V

    return-void
.end method

.method public final c([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0, p1}, Lnbisdk/cz;->b([B)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jf;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final il()Lnbisdk/cz;
    .locals 1

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    return-object v0
.end method

.method public final l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/jf;->om:Lnbisdk/cz;

    invoke-interface {v0, p1}, Lnbisdk/cz;->B(I)V

    return-void
.end method

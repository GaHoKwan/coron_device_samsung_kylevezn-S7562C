.class public final Lnbisdk/ug;
.super Lnbisdk/dw;

# interfaces
.implements Lcom/navbuilder/nb/a;


# static fields
.field private static zr:Lnbisdk/yn;

.field private static zs:Ljava/util/Hashtable;


# instance fields
.field private jy:Z

.field private zt:Lnbisdk/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnbisdk/ug;->zs:Ljava/util/Hashtable;

    new-instance v0, Lnbisdk/ug;

    invoke-direct {v0}, Lnbisdk/ug;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/dw;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ug;->jy:Z

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lcom/navbuilder/nb/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/navbuilder/nb/d;Lnbisdk/al;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/dw;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ug;->jy:Z

    iput-object p2, p0, Lnbisdk/ug;->zt:Lnbisdk/al;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/g;)Lnbisdk/nl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/dv;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lnbisdk/g;->getData()[B

    move-result-object v0

    if-nez v0, :cond_4

    move v1, v2

    :goto_0
    sget-object v0, Lnbisdk/ug;->zs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/g;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/tr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/tr;->aq()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    if-eqz v0, :cond_5

    :goto_1
    new-instance v0, Lnbisdk/tr;

    sget-object v3, Lnbisdk/ug;->zr:Lnbisdk/yn;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/ug;->zt:Lnbisdk/al;

    invoke-interface {v3}, Lnbisdk/al;->aP()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/gs$a;->b(Ljava/io/InputStream;)Lnbisdk/yn;

    move-result-object v3

    sput-object v3, Lnbisdk/ug;->zr:Lnbisdk/yn;

    const/4 v3, 0x0

    iput-object v3, p0, Lnbisdk/ug;->zt:Lnbisdk/al;

    :cond_1
    sget-object v3, Lnbisdk/ug;->zr:Lnbisdk/yn;

    invoke-direct {v0, p1, v3}, Lnbisdk/tr;-><init>(Lnbisdk/g;Lnbisdk/yn;)V

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v1, Lnbisdk/ug;->zs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Lnbisdk/tr;->aq()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lnbisdk/g;->getData()[B

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v0, Lnbisdk/dv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fileset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesnot exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public final a(S)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lnbisdk/ug;->zs:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lnbisdk/ug;->zs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final cancelRequest()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ug;->jy:Z

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

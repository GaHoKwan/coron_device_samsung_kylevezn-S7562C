.class public final Lnbisdk/uc;
.super Ljava/lang/Object;


# instance fields
.field public flags:I

.field public time:J

.field public ze:I

.field public zf:I

.field public zg:I

.field private zh:Ljava/util/Vector;

.field private zi:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lnbisdk/ql;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tx"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/uc;->ze:I

    const-string v0, "ty"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/uc;->zf:I

    const-string v0, "tz"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/uc;->zg:I

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/uc;->zh:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/uc;->zi:Ljava/util/Vector;

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, "road-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/uc;->zh:Ljava/util/Vector;

    new-instance v3, Lnbisdk/fo;

    invoke-direct {v3, v0}, Lnbisdk/fo;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, "area-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/uc;->zi:Ljava/util/Vector;

    new-instance v3, Lnbisdk/bl;

    invoke-direct {v3, v0}, Lnbisdk/bl;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/uc;->zh:Ljava/util/Vector;

    new-instance v1, Lnbisdk/fo;

    invoke-direct {v1}, Lnbisdk/fo;-><init>()V

    invoke-static {v0, v1}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/uc;->flags:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnbisdk/uc;->ze:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/uc;->zf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/uc;->zg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

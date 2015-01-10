.class public Lnbisdk/ir;
.super Ljava/lang/Object;


# instance fields
.field private bp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/ir;->bp:J

    return-void
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0, p3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p0, p1, p2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v3, Lnbisdk/ze;

    invoke-direct {v3, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lnbisdk/ze;Lnbisdk/gw;)V
    .locals 1

    invoke-static {p1}, Lnbisdk/bl;->b(Lnbisdk/gw;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    return-void
.end method

.method public static a(Lnbisdk/ze;Lnbisdk/ih;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lnbisdk/ef;->a(Lnbisdk/ih;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method

.method public static a(Lnbisdk/ze;Lnbisdk/mi;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lnbisdk/bd;->a(Lnbisdk/mi;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method

.method public static b(Lnbisdk/ze;Lnbisdk/ih;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnbisdk/ih;->hW()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/ze;

    const-string v1, "enforce-slice-size"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static m(Ljava/io/DataInputStream;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static r(Lnbisdk/ql;)Lnbisdk/va;
    .locals 1

    const-string v0, "iter-result"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/va;->r(Lnbisdk/ql;)Lnbisdk/va;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aq(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method public ar(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lnbisdk/ir;->bp:J

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

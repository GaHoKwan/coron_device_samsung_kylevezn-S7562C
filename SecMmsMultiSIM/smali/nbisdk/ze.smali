.class public final Lnbisdk/ze;
.super Lnbisdk/ql;


# instance fields
.field private Fh:Lnbisdk/ze;

.field private N:Ljava/lang/String;

.field private jg:Ljava/util/Vector;

.field private of:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnbisdk/ze;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/ql;-><init>()V

    iput-object p1, p0, Lnbisdk/ze;->N:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final O()V
    .locals 2

    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->trimToSize()V

    :cond_0
    invoke-virtual {p0}, Lnbisdk/ze;->is()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->O()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 2

    iget-object v0, p1, Lnbisdk/ze;->Fh:Lnbisdk/ze;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attaching a child with a parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    :cond_1
    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object p0, p1, Lnbisdk/ze;->Fh:Lnbisdk/ze;

    return-void
.end method

.method public final aA(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lnbisdk/ro;

    invoke-direct {v0, p1}, Lnbisdk/ro;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final aF(I)Lnbisdk/ql;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    return-object v0
.end method

.method public final ak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final am()I
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bc(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public final iq()Lnbisdk/ql;
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->Fh:Lnbisdk/ze;

    return-object v0
.end method

.method public final ir()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/wd;

    invoke-direct {v0}, Lnbisdk/wd;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->of:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public final is()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/wd;

    invoke-direct {v0}, Lnbisdk/wd;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ze;->jg:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

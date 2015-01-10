.class public final Lnbisdk/dn;
.super Ljava/lang/Object;


# instance fields
.field zQ:Lnbisdk/do;

.field zR:Lnbisdk/dn$a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/do;

    invoke-direct {v0, p0, p1}, Lnbisdk/do;-><init>(Lnbisdk/dn;I)V

    iput-object v0, p0, Lnbisdk/dn;->zQ:Lnbisdk/do;

    new-instance v0, Lnbisdk/dn$a;

    invoke-direct {v0}, Lnbisdk/dn$a;-><init>()V

    iput-object v0, p0, Lnbisdk/dn;->zR:Lnbisdk/dn$a;

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v0}, Lnbisdk/do;->aq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v0, p1, p2}, Lnbisdk/do;->a(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lnbisdk/dn;->zR:Lnbisdk/dn$a;

    iget-object v1, v1, Lnbisdk/dn$a;->fU:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bm(Ljava/lang/String;)Lnbisdk/dn$b;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lnbisdk/dn;->zR:Lnbisdk/dn$a;

    iget-object v0, v0, Lnbisdk/dn$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v2, v0}, Lnbisdk/do;->I(I)Lnbisdk/dn$b;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dn$b;->bS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.class final Lnbisdk/dh$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private AX:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/dh$a;",
            ">;"
        }
    .end annotation
.end field

.field private AY:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/dh$a;",
            ">;"
        }
    .end annotation
.end field

.field private AZ:I

.field private synthetic fN:Lnbisdk/dh;


# direct methods
.method constructor <init>(Lnbisdk/dh;I)V
    .locals 2

    const/16 v0, 0x19

    iput-object p1, p0, Lnbisdk/dh$b;->fN:Lnbisdk/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lnbisdk/dh$b;->AX:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iput p2, p0, Lnbisdk/dh$b;->AZ:I

    return-void
.end method


# virtual methods
.method final a(Lnbisdk/hf;Ljava/util/Vector;)Lnbisdk/dh$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnbisdk/hf;",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/if;",
            ">;)",
            "Lnbisdk/dh$a;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Lnbisdk/dh$a;

    iget-object v1, p0, Lnbisdk/dh$b;->fN:Lnbisdk/dh;

    invoke-virtual {p1}, Lnbisdk/hf;->hk()I

    move-result v2

    invoke-virtual {p1}, Lnbisdk/hf;->hl()I

    move-result v3

    invoke-virtual {p1}, Lnbisdk/hf;->hm()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnbisdk/dh$a;-><init>(Lnbisdk/dh;IIILjava/util/Vector;)V

    iget-object v1, p0, Lnbisdk/dh$b;->AX:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/dh$a;->hp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lnbisdk/dh$b;->AZ:I

    if-le v1, v2, :cond_2

    move v2, v6

    :goto_0
    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/dh$a;

    invoke-virtual {v1}, Lnbisdk/dh$a;->ml()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lnbisdk/dh$b;->AX:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lnbisdk/dh$a;->hp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    :cond_0
    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not remove entry from mAutoPinQueue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method final d(Lnbisdk/hf;)Lnbisdk/dh$a;
    .locals 3

    iget-object v0, p0, Lnbisdk/dh$b;->AX:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lnbisdk/hf;->hk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/hf;->hl()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/hf;->hm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dh$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final flushCache()V
    .locals 1

    iget-object v0, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method final m(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/hf;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    invoke-virtual {v0}, Lnbisdk/hf;->hm()I

    move-result v5

    move v2, v3

    :goto_0
    iget-object v0, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dh$a;

    invoke-virtual {v0}, Lnbisdk/dh$a;->getZoom()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v4, v3

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/hf;

    invoke-virtual {v0, v1}, Lnbisdk/dh$a;->c(Lnbisdk/hf;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/dh$a;->ml()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/dh$a;->mn()V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method final nX()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh$b;->AY:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dh$a;

    invoke-virtual {v0, v2}, Lnbisdk/dh$a;->T(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

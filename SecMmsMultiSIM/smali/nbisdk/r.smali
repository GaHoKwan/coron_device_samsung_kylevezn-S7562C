.class public final Lnbisdk/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/r$a;,
        Lnbisdk/r$b;
    }
.end annotation


# instance fields
.field as:Lnbisdk/r$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final I()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lnbisdk/r$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnbisdk/r$a;

    iget-object v1, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    invoke-direct {v0, v1}, Lnbisdk/r$a;-><init>(Lnbisdk/r$b;)V

    return-object v0
.end method

.method public final add(II)V
    .locals 3

    new-instance v1, Lnbisdk/r$b;

    invoke-direct {v1}, Lnbisdk/r$b;-><init>()V

    iput p1, v1, Lnbisdk/r$b;->zn:I

    iput p2, v1, Lnbisdk/r$b;->zo:I

    const/4 v0, 0x0

    iput-object v0, v1, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    iput-object v0, v1, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iget-object v0, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    if-nez v0, :cond_1

    iput-object v1, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    :goto_1
    if-eqz v0, :cond_3

    iget v2, v0, Lnbisdk/r$b;->zo:I

    if-ne p1, v2, :cond_4

    iget-object v2, v0, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    iput-object v1, v0, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    iput-object v0, v1, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iput-object v2, v1, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    if-eqz v2, :cond_2

    iput-object v1, v2, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    :cond_2
    iget-object v2, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    if-ne v0, v2, :cond_3

    iput-object v1, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    :cond_3
    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    iput-object v0, v1, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iget-object v0, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    iput-object v1, v0, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    iput-object v1, p0, Lnbisdk/r;->as:Lnbisdk/r$b;

    goto :goto_0

    :cond_4
    iget v2, v0, Lnbisdk/r$b;->zn:I

    if-ne p2, v2, :cond_5

    iget-object v2, v0, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iput-object v1, v0, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    iput-object v0, v1, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    iput-object v2, v1, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    if-eqz v2, :cond_3

    iput-object v1, v2, Lnbisdk/r$b;->zq:Lnbisdk/r$b;

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnbisdk/r;->I()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/r$b;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, v0, Lnbisdk/r$b;->zn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v0, v0, Lnbisdk/r$b;->zo:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

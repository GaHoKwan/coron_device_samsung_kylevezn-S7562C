.class final Lnbisdk/dh$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic fN:Lnbisdk/dh;

.field private xb:I

.field private xc:I

.field private xd:I

.field private xe:Z

.field private xf:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnbisdk/dh;IIILjava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/if;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnbisdk/dh$a;->fN:Lnbisdk/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnbisdk/dh$a;->xb:I

    iput p3, p0, Lnbisdk/dh$a;->xc:I

    iput p4, p0, Lnbisdk/dh$a;->xd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/dh$a;->xe:Z

    iput-object p5, p0, Lnbisdk/dh$a;->xf:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final T(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/dh$a;->xe:Z

    return-void
.end method

.method public final c(Lnbisdk/hf;)Z
    .locals 2

    iget v0, p0, Lnbisdk/dh$a;->xb:I

    invoke-virtual {p1}, Lnbisdk/hf;->hk()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnbisdk/dh$a;->xc:I

    invoke-virtual {p1}, Lnbisdk/hf;->hl()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnbisdk/dh$a;->xd:I

    invoke-virtual {p1}, Lnbisdk/hf;->hm()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZoom()I
    .locals 1

    iget v0, p0, Lnbisdk/dh$a;->xd:I

    return v0
.end method

.method public final hp()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lnbisdk/dh$a;->xb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/dh$a;->xc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/dh$a;->xd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ml()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/dh$a;->xe:Z

    return v0
.end method

.method public final mm()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/dh$a;->xf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh$a;->xf:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget-object v2, p0, Lnbisdk/dh$a;->fN:Lnbisdk/dh;

    invoke-static {v2}, Lnbisdk/dh;->a(Lnbisdk/dh;)Lnbisdk/pg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnbisdk/pg;->a(Lnbisdk/jt;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/dh$a;->xe:Z

    return-void
.end method

.method public final mn()V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/dh$a;->xf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh$a;->xf:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/if;

    iget-object v3, p0, Lnbisdk/dh$a;->fN:Lnbisdk/dh;

    invoke-static {v3}, Lnbisdk/dh;->a(Lnbisdk/dh;)Lnbisdk/pg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnbisdk/pg;->b(Lnbisdk/jt;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lnbisdk/dh$a;->xe:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PinInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/dh$a;->xb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/dh$a;->xc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/dh$a;->xd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lnbisdk/ji$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic BU:Lnbisdk/ji;

.field private bx:I


# direct methods
.method constructor <init>(Lnbisdk/ji;)V
    .locals 2

    iput-object p1, p0, Lnbisdk/ji$a;->BU:Lnbisdk/ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lnbisdk/ji;->ay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/ji$a;->bx:I

    iget v0, p0, Lnbisdk/ji$a;->bx:I

    iget-object v1, p1, Lnbisdk/ji;->os:Lnbisdk/qm;

    iget-object v1, v1, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lnbisdk/ji;->os:Lnbisdk/qm;

    iget-object v0, v0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    iget v1, p0, Lnbisdk/ji$a;->bx:I

    aget-object v0, v0, v1

    iget v0, v0, Lnbisdk/ji;->bE:I

    iget v1, p1, Lnbisdk/ji;->ay:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/ji$a;->bx:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 2

    iget v0, p0, Lnbisdk/ji$a;->bx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lnbisdk/ji$a;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ji$a;->BU:Lnbisdk/ji;

    iget-object v0, v0, Lnbisdk/ji;->os:Lnbisdk/qm;

    iget-object v0, v0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    iget v1, p0, Lnbisdk/ji$a;->bx:I

    aget-object v0, v0, v1

    iget v1, v0, Lnbisdk/ji;->cJ:I

    iput v1, p0, Lnbisdk/ji$a;->bx:I

    return-object v0
.end method

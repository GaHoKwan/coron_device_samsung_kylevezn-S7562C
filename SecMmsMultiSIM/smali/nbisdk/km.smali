.class public Lnbisdk/km;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fr;


# instance fields
.field private P:[B

.field private eM:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/va;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p1, Lnbisdk/va;->eJ:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lnbisdk/km;->eM:Z

    iget-object v0, p1, Lnbisdk/va;->aW:[B

    iput-object v0, p0, Lnbisdk/km;->P:[B

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final ge()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/km;->P:[B

    return-object v0
.end method

.method public final hasMoreResult()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/km;->eM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

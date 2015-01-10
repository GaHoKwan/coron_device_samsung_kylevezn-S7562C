.class public abstract Lnbisdk/kq;
.super Ljava/lang/Object;


# instance fields
.field protected qg:Ljava/lang/Object;

.field protected qh:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasMoreResults()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/kq;->qh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iU()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/kq;->qg:Ljava/lang/Object;

    return-object v0
.end method

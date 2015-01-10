.class public abstract Lnbisdk/md;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/b;


# instance fields
.field protected sx:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static s(Lnbisdk/ql;)Ljava/lang/Object;
    .locals 2

    const-string v0, "iter-result"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static t(Lnbisdk/ql;)Z
    .locals 2

    const-string v0, "iter-result"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "exhausted"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/md;->sx:Z

    return v0
.end method

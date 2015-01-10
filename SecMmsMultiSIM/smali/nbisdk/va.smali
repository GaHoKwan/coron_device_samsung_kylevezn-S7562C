.class public final Lnbisdk/va;
.super Ljava/lang/Object;


# instance fields
.field aW:[B

.field eJ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static r(Lnbisdk/ql;)Lnbisdk/va;
    .locals 2

    new-instance v1, Lnbisdk/va;

    invoke-direct {v1}, Lnbisdk/va;-><init>()V

    const-string v0, "exhausted"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lnbisdk/va;->eJ:Z

    const-string v0, "state"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lnbisdk/va;->aW:[B

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

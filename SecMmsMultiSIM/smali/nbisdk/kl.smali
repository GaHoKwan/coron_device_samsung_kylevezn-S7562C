.class final Lnbisdk/kl;
.super Ljava/lang/Object;


# instance fields
.field public qa:Lnbisdk/lm;

.field public qb:Lnbisdk/ua;


# direct methods
.method constructor <init>(Ljava/lang/String;Lnbisdk/lm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileset is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lnbisdk/kl;->qa:Lnbisdk/lm;

    new-instance v0, Lnbisdk/ua;

    invoke-direct {v0}, Lnbisdk/ua;-><init>()V

    iput-object v0, p0, Lnbisdk/kl;->qb:Lnbisdk/ua;

    return-void
.end method

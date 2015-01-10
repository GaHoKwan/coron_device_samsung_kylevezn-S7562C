.class final Lnbisdk/ty;
.super Lnbisdk/vc;


# instance fields
.field private synthetic aX:Lnbisdk/ql;

.field private synthetic ax:Ljava/lang/String;

.field private yS:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lnbisdk/ql;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/ty;->aX:Lnbisdk/ql;

    iput-object p2, p0, Lnbisdk/ty;->ax:Ljava/lang/String;

    invoke-direct {p0}, Lnbisdk/vc;-><init>()V

    iget-object v0, p0, Lnbisdk/ty;->aX:Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ty;->yS:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method protected final ne()Ljava/lang/Object;
    .locals 3

    :cond_0
    iget-object v0, p0, Lnbisdk/ty;->yS:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    iget-object v1, p0, Lnbisdk/ty;->ax:Ljava/lang/String;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.class final Lnbisdk/en;
.super Ljava/lang/Object;


# instance fields
.field private hH:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation
.end field

.field private hI:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic hJ:Lnbisdk/hu;


# direct methods
.method constructor <init>(Lnbisdk/hu;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/en;->hJ:Lnbisdk/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/au$d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/au$d;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lnbisdk/en;->a(Ljava/util/Vector;Ljava/util/Hashtable;)V

    new-instance v0, Lnbisdk/en$1;

    invoke-direct {v0, p0}, Lnbisdk/en$1;-><init>(Lnbisdk/en;)V

    invoke-static {p1, v0}, Lnbisdk/xd;->b(Ljava/util/Vector;Lnbisdk/fz;)V

    return-void
.end method

.method private c(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/au$d;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lnbisdk/en;->a(Ljava/util/Vector;Ljava/util/Hashtable;)V

    new-instance v0, Lnbisdk/en$2;

    invoke-direct {v0, p0}, Lnbisdk/en$2;-><init>(Lnbisdk/en;)V

    invoke-static {p1, v0}, Lnbisdk/xd;->b(Ljava/util/Vector;Lnbisdk/fz;)V

    return-void
.end method


# virtual methods
.method final fh()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/en;->hH:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/en;->hH:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/en;->hH:Ljava/util/Vector;

    iget-object v1, p0, Lnbisdk/en;->hJ:Lnbisdk/hu;

    invoke-static {v1}, Lnbisdk/hu;->a(Lnbisdk/hu;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnbisdk/en;->b(Ljava/util/Vector;Ljava/util/Hashtable;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/en;->hH:Ljava/util/Vector;

    return-object v0
.end method

.method final fi()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/au$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/en;->hI:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/en;->hI:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/en;->hI:Ljava/util/Vector;

    iget-object v1, p0, Lnbisdk/en;->hJ:Lnbisdk/hu;

    invoke-static {v1}, Lnbisdk/hu;->a(Lnbisdk/hu;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnbisdk/en;->c(Ljava/util/Vector;Ljava/util/Hashtable;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/en;->hI:Ljava/util/Vector;

    return-object v0
.end method

.method final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/en;->hH:Ljava/util/Vector;

    iput-object v0, p0, Lnbisdk/en;->hI:Ljava/util/Vector;

    return-void
.end method
